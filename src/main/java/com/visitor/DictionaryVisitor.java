package com.visitor;

import com.entity.view.DictionaryView;
import javax.servlet.http.HttpServletRequest;

public interface DictionaryVisitor {
    void visit(DictionaryView view, HttpServletRequest request);
}