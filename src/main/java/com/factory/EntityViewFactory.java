package com.factory;

import javax.servlet.http.HttpServletRequest;

public interface EntityViewFactory<T, V> {
    V convertToView(T entity, HttpServletRequest request);
}
