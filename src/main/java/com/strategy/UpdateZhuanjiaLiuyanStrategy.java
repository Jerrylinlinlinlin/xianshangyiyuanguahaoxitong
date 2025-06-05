package com.strategy;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.ZhuanjiaLiuyanEntity;
import com.service.ZhuanjiaLiuyanService;
import com.utils.R;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

public class UpdateZhuanjiaLiuyanStrategy implements ZhuanjiaLiuyanStrategy {

    private ZhuanjiaLiuyanService zhuanjiaLiuyanService;

    public UpdateZhuanjiaLiuyanStrategy(ZhuanjiaLiuyanService zhuanjiaLiuyanService) {
        this.zhuanjiaLiuyanService = zhuanjiaLiuyanService;
    }

    @Override
    public R execute(ZhuanjiaLiuyanEntity zhuanjiaLiuyan, HttpServletRequest request) {
        // 关键修改：使用传入实体的 id 进行查询
        if (zhuanjiaLiuyan.getId() == null) {
            return R.error(400, "更新操作需要提供 id");
        }

        Wrapper<ZhuanjiaLiuyanEntity> queryWrapper = new EntityWrapper<ZhuanjiaLiuyanEntity>()
                .eq("id", zhuanjiaLiuyan.getId()); // 使用实体的 id

        ZhuanjiaLiuyanEntity existingEntity = zhuanjiaLiuyanService.selectOne(queryWrapper);
        zhuanjiaLiuyan.setUpdateTime(new Date());

        // 修正逻辑：如果查询到记录才更新，否则返回错误
        if (existingEntity != null) {
            zhuanjiaLiuyanService.updateById(zhuanjiaLiuyan);
            return R.ok();
        } else {
            return R.error(404, "要更新的记录不存在");
        }
    }
}