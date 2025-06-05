package com.factory;

import com.entity.ZhuanjiaEntity;
import com.entity.view.ZhuanjiaView;
import com.factory.EntityViewFactory;
import com.service.DictionaryService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;
import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

@Component // 声明为 Spring 组件，方便依赖注入
public class ZhuanjiaEntityViewFactory implements EntityViewFactory<ZhuanjiaEntity, ZhuanjiaView> {

    private final DictionaryService dictionaryService;

    // 通过构造器注入 DictionaryService（需确保 DictionaryService 已被 Spring 管理）
    public ZhuanjiaEntityViewFactory(DictionaryService dictionaryService) {
        this.dictionaryService = Objects.requireNonNull(dictionaryService);
    }

    @Override
    public ZhuanjiaView convertToView(ZhuanjiaEntity entity, HttpServletRequest request) {
        ZhuanjiaView view = new ZhuanjiaView();
        // 将实体属性复制到视图（忽略 ID 和时间字段，根据实际需求调整）
        BeanUtils.copyProperties(entity, view, "id", "createTime", "insertTime", "updateTime");
        // 调用字典服务转换（例如将类型编码转为中文）
        dictionaryService.dictionaryConvert(view, request);
        return view;
    }
}