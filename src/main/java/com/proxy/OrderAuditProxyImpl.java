package com.proxy;

import com.controller.ZhuanjiaOrderController;
import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

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