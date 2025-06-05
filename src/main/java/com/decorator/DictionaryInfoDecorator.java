package com.decorator;

import com.entity.DictionaryEntity;
import com.entity.view.DictionaryView;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

public abstract class DictionaryInfoDecorator {
    protected DictionaryInfoDecorator nextDecorator;

    public DictionaryInfoDecorator(DictionaryInfoDecorator nextDecorator) {
        this.nextDecorator = nextDecorator;
    }

    public abstract R processInfo(DictionaryEntity dictionary, HttpServletRequest request);
}