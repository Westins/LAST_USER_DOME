package sw.controller;

import java.util.UUID;

// 枚举单例模式
public enum creatOrderId {
    //枚举元素本身就是单例
    INSTANCE;

    //添加自己需要的操作
    public String singletonOperation() {
        UUID uuid = UUID.randomUUID();
        String str = uuid.toString();
        // 去掉"-"符号
        String temp = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);
        return temp;
    }
}