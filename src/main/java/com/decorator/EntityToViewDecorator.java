package com.decorator;

import com.entity.DictionaryEntity;
import com.entity.view.DictionaryView;
import org.springframework.beans.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

public class EntityToViewDecorator extends DictionaryInfoDecorator {
    public EntityToViewDecorator(DictionaryInfoDecorator nextDecorator) {
        super(nextDecorator);
    }

    @Override
    public R processInfo(DictionaryEntity dictionary, HttpServletRequest request) {
        DictionaryView view = new DictionaryView();
        BeanUtils.copyProperties(dictionary, view);
        if (nextDecorator != null) {
            return nextDecorator.processInfo(dictionary, request).put("data", view);
        }
        return R.ok().put("data", view);
    }
}