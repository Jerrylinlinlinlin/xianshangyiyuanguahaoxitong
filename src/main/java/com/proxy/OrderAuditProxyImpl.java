package com.proxy;

import com.controller.ZhuanjiaOrderController;
import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

//2：护士执行打针任务（代理类）
/***
 * 护士（OrderAuditProxyImpl）接到打针任务（audit）后，不会自己瞎打，
 * 而是按照医生（ZhuanjiaOrderController）教的方法（doShenhe）来操作。
 * 护士的作用：接收病人（请求），然后交给医生处理，自己只做中间传递。
 */
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