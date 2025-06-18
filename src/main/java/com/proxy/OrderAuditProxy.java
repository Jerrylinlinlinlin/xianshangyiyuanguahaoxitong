package com.proxy;

import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

//1：定义代理接口
//类比：定义打针怎么打，但具体怎么打由医生指导。
public interface OrderAuditProxy {
    R audit(ZhuanjiaOrderEntity order, HttpServletRequest request);
}