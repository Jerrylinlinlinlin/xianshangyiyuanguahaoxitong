package com.bridge;

import com.entity.HuiyuanEntity;
import com.utils.R;
import javax.servlet.http.HttpServletRequest;

public interface HuiyuanUpdateBridge {
    R update(HuiyuanEntity entity, HttpServletRequest request);
}