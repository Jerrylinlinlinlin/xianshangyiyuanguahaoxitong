package com.strategy;

import com.entity.ZhuanjiaLiuyanEntity;
import com.utils.R;
import javax.servlet.http.HttpServletRequest;

public interface ZhuanjiaLiuyanStrategy {
    R execute(ZhuanjiaLiuyanEntity zhuanjiaLiuyan, HttpServletRequest request);
}
