package com.visitor;

import javax.servlet.http.HttpServletRequest;

public interface Visitable {
    void accept(DictionaryVisitor visitor, HttpServletRequest request);
}