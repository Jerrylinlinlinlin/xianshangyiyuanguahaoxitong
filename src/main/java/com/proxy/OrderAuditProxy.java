package com.proxy;

import com.entity.ZhuanjiaOrderEntity;
import javax.servlet.http.HttpServletRequest;
import com.utils.R;

public interface OrderAuditProxy {
    R audit(ZhuanjiaOrderEntity order, HttpServletRequest request);
}