package com.visitor;

import com.entity.view.DictionaryView;
import com.service.DictionaryService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DictionaryConvertVisitor implements DictionaryVisitor {

    @Autowired
    private DictionaryService dictionaryService;

    @Override
    public void visit(DictionaryView view, HttpServletRequest request) {
        dictionaryService.dictionaryConvert(view, request);
    }
}