package com.daoutil;

import java.lang.reflect.Method;

import com.controller.FundsController;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-05-31 13:27
 *
 * 自定义注解 + AOP的方式实现数据源动态切换。
 */
@Component//<!-- 确认是否配置了该路径下注释配置bean的自动扫描 -->
@Order(0)//<!-- 设置切换数据源的优先级,保证该AOP在@Transactional之前执行 -->
@Aspect //<!-- 定义一个切面 -->
public class DataSourceAspect {
    private static final Logger logger = LoggerFactory.getLogger(DataSourceAspect.class);

    /**
     * 定义切入点
     */
//    @Pointcut("execution(* com.service.impl.*.*(..))")
    private void pointcut() {}

    /**
     * 使用DateSource注解动态切换
     *
     * @param point
     */
//    @Before("pointcut() && @annotation(DataSource)")
    public void beforeSwitchDataSource(JoinPoint point){
        //获得当前访问的class
        Class<?> clazz = point.getTarget().getClass();
        //获得访问的方法名
        String methodName = point.getSignature().getName();
        //得到方法的参数的类型
        Class[] argClass = ((MethodSignature)point.getSignature()).getParameterTypes();
        String dataSource = DataSourceContextHolder.DATA_SOURCE_DEFAULT;

        try {
            // 判断类是否存在@DataSource注解
            if (clazz.isAnnotationPresent(DataSource.class)) {
                DataSource annotation = clazz.getAnnotation(DataSource.class);
                // 取出注解中的数据源名
                dataSource = annotation.value();
            } else {
                // 得到访问的方法对象
                Method method = clazz.getMethod(methodName, argClass);

                // 判断方法是否存在@DataSource注解
                if (method.isAnnotationPresent(DataSource.class)) {
                    DataSource annotation = method.getAnnotation(DataSource.class);
                    // 取出注解中的数据源名
                    dataSource = annotation.value();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 切换数据源
        DataSourceContextHolder.setDataSourceKey(dataSource);

        logger.info("Set Current DataSource is [{}], Current Method is [{}]", DataSourceContextHolder.getDataSourceKey(), point.getSignature().getName());
    }

    /**
     * 使用DateSource注解动作之后清除
     *
     * @param point
     */
//    @After("pointcut() && @annotation(DataSource)")
    public void afterSwitchDataSource(JoinPoint point){
        logger.info("Clear Current DataSource is [{}], Current Method is [{}]", DataSourceContextHolder.getDataSourceKey(), point.getSignature().getName());
        DataSourceContextHolder.clearDataSourceKey();
    }

    /**
     * 获取注解中对方法的描述信息
     *
     * @param joinPoint 切点
     * @return 方法描述
     */
    public static void getAspectMethodDescription(JoinPoint joinPoint) {
        String targetName = joinPoint.getTarget().getClass().getName();    //获得执行方法的类名
        String methodName = joinPoint.getSignature().getName();            //获得执行方法的方法名
        Object[] arguments = joinPoint.getArgs();                          //获取切点方法的所有参数类型
        try {
            Class targetClass = Class.forName(targetName);

            Method[] methods = targetClass.getMethods();    //获取公共方法，不包括类私有的
            String value = "";
            String key = "";
            for (Method method : methods) {
                if (method.getName().equals(methodName)) {
                    Class[] clazzs = method.getParameterTypes();     //对比方法中参数的个数
                    if (clazzs.length == arguments.length) {
                        value = method.getAnnotation(DataSource.class).value();
                        key = method.getAnnotation(DataSource.class).key();
                        break;
                    }
                }
            }

            logger.info("Current DataSource Value is [{}], Key is [{}]", value, key);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}