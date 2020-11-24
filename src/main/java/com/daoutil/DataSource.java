package com.daoutil;

import java.lang.annotation.*;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-05-31 13:25
 *
 * 工具类的配置：自定义注解 DataSource
 * 如果配置的是两个数据库的话，有一个默认数据库，不需要任何修改，
 * 而需要使用另一个数据库的时候，只需要在dao层添加一个注解：
 */
@Retention(RetentionPolicy.RUNTIME) //定义该注解的生命周期
@Target({ElementType.METHOD, ElementType.TYPE}) //注解用于类和方法
@Documented //注解信息添加在JavaDoc中
public @interface DataSource{
    String value() default "project";
    String key() default "finance";
}