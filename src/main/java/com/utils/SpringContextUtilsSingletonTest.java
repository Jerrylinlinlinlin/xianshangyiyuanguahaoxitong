package com.utils;

import com.xianshangyiyuanguahaoxitongApplication; // 确保类名正确
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import static org.junit.Assert.*; // 导入所有断言静态方法

@RunWith(SpringRunner.class)
@SpringBootTest(classes = xianshangyiyuanguahaoxitongApplication.class) // 修正类名引用
public class SpringContextUtilsSingletonTest {

    @Autowired
    private SpringContextUtils springContextUtils;

    @Test
    public void testSingletonInstance() {
        // 验证单例模式
        SpringContextUtils instance1 = springContextUtils;
        SpringContextUtils instance2 = SpringContextUtils.getInstance();
        assertSame("单例实例必须相同", instance1, instance2);

        // 多线程验证（可选，确保线程安全）
        new Thread(() -> {
            SpringContextUtils threadInstance = SpringContextUtils.getInstance();
            assertSame("多线程实例必须相同", instance1, threadInstance);
        }).start();
    }

    @Test
    public void testApplicationContextAccess() {
        // 验证ApplicationContext功能
        SpringContextUtils utils = SpringContextUtils.getInstance();
        assertNotNull("SpringContextUtils Bean 必须存在", utils.getBean(SpringContextUtils.class));
    }
}