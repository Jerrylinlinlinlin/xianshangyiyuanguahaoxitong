
package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.baomidou.mybatisplus.mapper.MetaObjectHandler;
import com.baomidou.mybatisplus.plugins.PaginationInterceptor;

/**
 * mybatis-plus配置
 */
@Configuration   //声明该类为配置类，相当于 XML 中的<beans>标签。
// 告诉 Spring 容器这是一个配置类，会在启动时自动扫描并加载其中的 Bean 定义。
public class MybatisPlusConfig {

    /**
     * 分页插件
     */
    @Bean  //用于将方法返回的对象注册为 Spring 容器中的 Bean。
    public PaginationInterceptor paginationInterceptor() {
        /**
         * 第一个PaginationInterceptor
         * 表示该方法会返回一个 PaginationInterceptor 类型的对象。
         * PaginationInterceptor是MyBatis-Plus提供的分页拦截器类，用于实现 SQL 分页功能。
         **/
        /**
         * 第二个PaginationInterceptor
         * 通过 new 关键字实例化一个 PaginationInterceptor 对象，并将其返回。
         * 这里的 PaginationInterceptor() 是该类的构造方法。
         **/
        /**
         * paginationInterceptor
         * 遵循 Java 的命名规范（小写驼峰式），用于标识这个方法的功能（注册分页拦截器）。
         * 当 Spring 容器启动时，会通过 @Bean 注解调用此方法，并将返回的 PaginationInterceptor 对象注册为一个 Bean，以便在其他地方自动注入使用。
         **/
        return new PaginationInterceptor();
        // 注册 MyBatis-Plus 的分页拦截器，使项目支持分页查询。
        // 通过拦截 SQL 查询，自动添加分页参数（如LIMIT、OFFSET）。
        // 当在 Service 层调用 MyBatis-Plus 的分页方法（如page()）时，该插件会自动生效。
    }
    
}
