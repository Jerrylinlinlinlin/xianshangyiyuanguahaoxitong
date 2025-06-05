package com.factory;

import com.entity.ZhuanjiaEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.HashMap;
import java.util.Map;

@Component
public class EntityViewFactoryProducer {

    private final Map<Class<?>, EntityViewFactory<?, ?>> factoryMap = new HashMap<>();

    // 通过构造器注入所有具体工厂（Spring 会自动注入）
    @Autowired
    public EntityViewFactoryProducer(ZhuanjiaEntityViewFactory zhuanjiaFactory) {
        factoryMap.put(ZhuanjiaEntity.class, zhuanjiaFactory);
        // 后续新增其他实体工厂时，在此处添加映射
    }

    @SuppressWarnings("unchecked")
    public <T, V> EntityViewFactory<T, V> getFactory(Class<T> entityClass) {
        return (EntityViewFactory<T, V>) factoryMap.get(entityClass);
    }
}