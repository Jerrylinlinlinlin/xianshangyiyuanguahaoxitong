package com.observer.impl;

import com.observer.DictionaryObserver;
import com.entity.DictionaryEntity;
import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServletContextDictionaryObserver implements DictionaryObserver {
    private ServletContext servletContext;

    public ServletContextDictionaryObserver(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    @Override
    public void update(List<DictionaryEntity> dictionaryEntities) {
        // 将字典数据放入ServletContext
        Map<String, Map<Integer, String>> map = new HashMap<>();
        for (DictionaryEntity d : dictionaryEntities) {
            Map<Integer, String> m = map.get(d.getDicCode());
            if (m == null || m.isEmpty()) {
                m = new HashMap<>();
            }
            m.put(d.getCodeIndex(), d.getIndexName());
            map.put(d.getDicCode(), m);
        }
        servletContext.setAttribute("dictionaryMap", map);
    }
}