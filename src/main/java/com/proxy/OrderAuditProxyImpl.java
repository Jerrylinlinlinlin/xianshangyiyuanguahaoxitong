package com.proxy;

import com.controller.ZhuanjiaOrderController;
import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

//2：代理类
//代理类按照doShenhe来操作
public class OrderAuditProxyImpl implements OrderAuditProxy {
    private final ZhuanjiaOrderController controller;

    public OrderAuditProxyImpl(ZhuanjiaOrderController controller) {
        this.controller = controller;
    }

    @Override
    public R audit(ZhuanjiaOrderEntity order, HttpServletRequest request) {
        return controller.doShenhe(order, request);
    }
}