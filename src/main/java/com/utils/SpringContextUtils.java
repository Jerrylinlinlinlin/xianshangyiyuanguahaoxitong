package com.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Spring 上下文工具类【单例模式】
 */
@Component
public class SpringContextUtils implements ApplicationContextAware {
	private static SpringContextUtils instance;
	private static ApplicationContext applicationContext;

	// 私有构造函数，防止外部实例化
	private SpringContextUtils() {}

	/**
	 * 线程安全的单例获取方法
	 */
	public static synchronized SpringContextUtils getInstance() {
		if (instance == null) {
			// 从Spring容器中获取实例，确保ApplicationContext已注入
			instance = applicationContext.getBean(SpringContextUtils.class);
		}
		return instance;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		SpringContextUtils.applicationContext = applicationContext;
	}

	// 代理方法：获取Bean
	public Object getBean(String name) {
		return applicationContext.getBean(name);
	}

	public <T> T getBean(Class<T> requiredType) {
		return applicationContext.getBean(requiredType);
	}

	// 其他代理方法...
	public boolean containsBean(String name) {
		return applicationContext.containsBean(name);
	}

	public boolean isSingleton(String name) {
		return applicationContext.isSingleton(name);
	}
}