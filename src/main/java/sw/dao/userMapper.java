package sw.dao;

import sw.pojo.user;

import java.util.Map;

public interface userMapper {
    int InsertUser(user u); //添加用户

    user Login(String LoginNum); //用户登录

    int selPhone(String phone);//查找电话是否存在

    int updPwd(Map<Object, Object> map); //修改密码

    user selLid(String zclid);  //查询登陆账号是否存在
}
