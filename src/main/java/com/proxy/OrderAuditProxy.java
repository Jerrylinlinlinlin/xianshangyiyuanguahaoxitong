package com.proxy;

import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

//护士代替医生打针
//1：定义 "打针" 接口（规范护士的工作）
//类比：医院规定护士必须会打针（audit方法），但具体怎么打由医生指导。
public interface OrderAuditProxy {
    R audit(ZhuanjiaOrderEntity order, HttpServletRequest request);
}