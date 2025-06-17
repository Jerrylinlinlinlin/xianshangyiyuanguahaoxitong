package com.bridge;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.HuiyuanEntity;
import com.service.HuiyuanService;
import com.utils.R;
import javax.servlet.http.HttpServletRequest;

//2：护士执行更新前的检查（桥接实现类）
/**
 * 护士（HuiyuanUpdateBridgeImpl）拿到病人的新信息后，先做三重检查：
 * 查系统：有没有其他病人用相同的身份证号？
 * 查系统：有没有其他病人用相同的手机号？
 * 查系统：有没有其他病人用相同的病历号？
 * 如果检查通过，护士告诉医院系统（HuiyuanService）保存信息；如果冲突，就告诉病人 "信息重复，不能改"。
 * **/
public class HuiyuanUpdateBridgeImpl implements HuiyuanUpdateBridge {
    private HuiyuanService huiyuanService;

    public HuiyuanUpdateBridgeImpl(HuiyuanService huiyuanService) {
        this.huiyuanService = huiyuanService;
    }

    @Override
    public R update(HuiyuanEntity huiyuan, HttpServletRequest request) {
        // 根据字段查询是否有相同数据
        Wrapper<HuiyuanEntity> queryWrapper = new EntityWrapper<HuiyuanEntity>()
                .notIn("id", huiyuan.getId())
                .andNew()
                .eq("username", huiyuan.getUsername())
                .or()
                .eq("huiyuan_phone", huiyuan.getHuiyuanPhone())
                .or()
                .eq("huiyuan_id_number", huiyuan.getHuiyuanIdNumber());

        HuiyuanEntity huiyuanEntity = huiyuanService.selectOne(queryWrapper);
        if ("".equals(huiyuan.getHuiyuanPhoto()) || "null".equals(huiyuan.getHuiyuanPhoto())) {
            huiyuan.setHuiyuanPhoto(null);
        }
        if (huiyuanEntity == null) {
            huiyuanService.updateById(huiyuan); // 根据id更新
            return R.ok();
        } else {
            return R.error(511, "账户或者用户手机号或者用户身份证号已经被使用");
        }
    }
}