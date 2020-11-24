package com.daoutil;

import com.alibaba.fastjson.JSONObject;
import com.model.SystemLog;
import com.service.SystemLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.UUID;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-06-02 8:27
 *
 * @desc 切点类
 */
@Component//<!-- 确认是否配置了该路径下注释配置bean的自动扫描 -->
@Order(1)//<!-- 设置切换数据源的优先级,保证该AOP在@Transactional之前执行 -->
@Aspect //<!-- 定义一个切面 -->
public class SystemLoggerAspect {
    //注入Service用于把日志保存数据库
    @Resource  //这里我用resource注解，一般用的是@Autowired，他们的区别如有时间我会在后面的博客中来写
    private SystemLogService systemLogService;

    private  static  final Logger logger = LoggerFactory.getLogger(SystemLoggerAspect.class);

    //Controller层切点
//    @Pointcut("execution (* com.service..*.*(..))")
    @Pointcut("@annotation(com.daoutil.SystemLogger)")
    public  void systemLoggerAspect() {
    }

    /**
     * 前置通知 用于拦截Server层记录用户的操作
     *
     * @param joinPoint 切点
     */
    @Before("systemLoggerAspect()")
    public void before(JoinPoint joinPoint) {
        System.out.println("==> SystemLogger: 执行Server层前置通知");
        if(logger.isInfoEnabled()){
            logger.info("before " + joinPoint);
        }
    }

    //配置Server层环绕通知,使用在方法aspect()上注册的切入点
//    @Around("systemLoggerAspect()")
    public void around(JoinPoint joinPoint){
        System.out.println("==> SystemLogger: 开始执行Server层环绕通知");

        long start = System.currentTimeMillis();
        try {
            ((ProceedingJoinPoint) joinPoint).proceed();
            long end = System.currentTimeMillis();
            if(logger.isInfoEnabled()){
                logger.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms!");
            }

            System.out.println("===== Server层环绕通知结束 =====");
        } catch (Throwable e) {
            long end = System.currentTimeMillis();
            if(logger.isInfoEnabled()){
                logger.info("around " + joinPoint + "\tUse time : " + (end - start) + " ms with exception : " + e.getMessage());
            }
        }
    }

    /**
     * 后置通知 用于拦截Server层记录用户的操作
     *
     * @param joinPoint 切点
     */
    @After("systemLoggerAspect()")
    public  void after(JoinPoint joinPoint) {
        System.out.println("==> SystemLogger: 拦截Server层记录用户操作通知");

        String author = "张三";
        String request = "127.0.0.1";
        try {

            String targetName = joinPoint.getTarget().getClass().getName();
            String methodName = joinPoint.getSignature().getName();
            Object[] arguments = joinPoint.getArgs();
            Class targetClass = Class.forName(targetName);
            Method[] methods = targetClass.getMethods();
            String operationType = "";
            String operationName = "";
            for (Method method : methods) {
                if (method.getName().equals(methodName)) {
                    Class[] clazzs = method.getParameterTypes();
                    if (clazzs.length == arguments.length) {
                        operationType = method.getAnnotation(SystemLogger.class).operationType();
                        operationName = method.getAnnotation(SystemLogger.class).operationName();
                        break;
                    }
                }
            }

            //*========控制台输出=========*//
            System.out.println("===== Server层后置通知开始 =====");
            System.out.println("请求方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()")+"."+operationType);
            System.out.println("方法描述:" + operationName);
            System.out.println("请求人:" + author);
            System.out.println("请求IP:" + request);
            //*========数据库日志=========*//

            SystemLog _log = systemLogService.getSystemLogByMaxId();
            Integer id = 0;
            if (_log != null) {
                id = _log.getId() + 1;
            } else {
                id = 1;
            }

            SystemLog log = new SystemLog();
            log.setId(id);
            log.setCode( UUIDUtil.get32UUID());
            log.setDescription(operationName);
            log.setMethod((joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()")+"."+operationType);
            log.setType((long)0);
            log.setRequest(request);
            log.setException( null);
            log.setParams( null);
            log.setAuthor(author);
            log.setDate(new Date());

            //保存数据库
            systemLogService.insertSystemLog(log);

            System.out.println("===== Server层后置通知结束 =====");
        }  catch (Exception e) {
            //记录本地异常日志
            logger.error("===== Server层后置通知异常 =====");
            logger.error("异常信息:{}", e.getMessage());
        }

        /*==========记录本地异常日志==========*/
        logger.info("请求方法:{} 请求人:{} 请求IP:{}", joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(),author,request);
    }

    //配置后置返回通知,使用在方法aspect()上注册的切入点
//    @AfterReturning("systemLoggerAspect()")
    public void afterReturn(JoinPoint joinPoint){
        System.out.println("==> SystemLogger: 执行Server层后置返回通知");

        if(logger.isInfoEnabled()){
            logger.info("afterReturn " + joinPoint);
        }
    }

    /**
     * 异常通知,用于拦截记录异常日志
     *
     * @param joinPoint
     * @param e
     */
    @AfterThrowing(pointcut = "systemLoggerAspect()", throwing="e")
    public  void afterThrowing(JoinPoint joinPoint, Throwable e) {
        System.out.println("==> SystemLogger: 拦截Server层记录异常日志通知");

        String author = "张三";
        String request = "127.0.0.1";

        String params = "";
        if (joinPoint.getArgs() !=  null && joinPoint.getArgs().length > 0) {
            for ( int i = 0; i < joinPoint.getArgs().length; i++) {
                JSONObject jsonObject = JSONObject.parseObject(joinPoint.getArgs()[i].toString());
                params += jsonObject.toString() + ";";
            }
        }
        try {

            String targetName = joinPoint.getTarget().getClass().getName();
            String methodName = joinPoint.getSignature().getName();
            Object[] arguments = joinPoint.getArgs();
            Class targetClass = Class.forName(targetName);
            Method[] methods = targetClass.getMethods();
            String operationType = "";
            String operationName = "";
            for (Method method : methods) {
                if (method.getName().equals(methodName)) {
                    Class[] clazzs = method.getParameterTypes();
                    if (clazzs.length == arguments.length) {
                        operationType = method.getAnnotation(SystemLogger.class).operationType();
                        operationName = method.getAnnotation(SystemLogger.class).operationName();
                        break;
                    }
                }
            }

            /*========控制台输出=========*/
            System.out.println("===== 异常通知开始 =====");
            System.out.println("异常代码:" + e.getClass().getName());
            System.out.println("异常信息:" + e.getMessage());
            System.out.println("异常方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()")+"."+operationType);
            System.out.println("方法描述:" + operationName);
            System.out.println("请求人:" + author);
            System.out.println("请求IP:" + request);
            System.out.println("请求参数:" + params);
            /*==========数据库日志=========*/

            SystemLog _log = systemLogService.getSystemLogByMaxId();
            Integer id = 0;
            if (_log != null) {
                id = _log.getId() + 1;
            } else {
                id = 1;
            }

            SystemLog log = new SystemLog();
            log.setId(id);
            log.setCode(e.getClass().getName());
            log.setDescription(operationName);
            log.setType((long)1);
            log.setException(e.getMessage());
            log.setMethod((joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()"));
            log.setParams(params);
            log.setAuthor(author);
            log.setDate(new Date());
            log.setRequest(request);
            //保存数据库
            systemLogService.insertSystemLog(log);

            System.out.println("===== 异常通知结束 =====");
        }  catch (Exception ex) {
            //记录本地异常日志
            logger.error("===== 异常通知异常 =====");
            logger.error("异常信息:{}", ex.getMessage());
        }

        /*==========记录本地异常日志==========*/
        logger.error("异常方法:{}异常代码:{}异常信息:{}参数:{}", joinPoint.getTarget().getClass().getName() + joinPoint.getSignature().getName(), e.getClass().getName(), e.getMessage(), params);
    }
}