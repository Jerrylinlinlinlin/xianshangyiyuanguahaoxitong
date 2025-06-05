package com.decorator;

import com.entity.DictionaryEntity;
import com.entity.view.DictionaryView;
import com.service.DictionaryService;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;

public class DictionaryConvertDecorator extends DictionaryInfoDecorator {
    @Autowired
    private DictionaryService dictionaryService;

    public DictionaryConvertDecorator(DictionaryInfoDecorator nextDecorator) {
        super(nextDecorator);
    }

    @Override
    public R processInfo(DictionaryEntity dictionary, HttpServletRequest request) {
        R r = nextDecorator.processInfo(dictionary, request);
        DictionaryView view = (DictionaryView) r.get("data");
        dictionaryService.dictionaryConvert(view, request);
        return r;
    }
}