package com.bridge;

import com.entity.HuiyuanEntity;
import com.utils.R;
import javax.servlet.http.HttpServletRequest;

/**
 * 医院场景类比：护士更新病人档案的分工协作
 * **/
//1：定义 "更新信息" 的标准流程（接口）
//怎么审核病人档案由各科室护士决定
public interface HuiyuanUpdateBridge {
    R update(HuiyuanEntity entity, HttpServletRequest request);
}