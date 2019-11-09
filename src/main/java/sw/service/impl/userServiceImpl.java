package sw.service.impl;

import sw.dao.userMapper;
import sw.pojo.user;
import sw.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class userServiceImpl implements userService {

    @Autowired
    private userMapper um;


    public int InsertUser(user u) {
        return um.InsertUser(u);
    }


    public user Login(String LoginNum) {
        return um.Login(LoginNum);
    }


    public int selPhone(String phone) {
        return um.selPhone(phone);
    }


    public int updPwd(Map<Object, Object> map) {
        return um.updPwd(map);
    }

    @Override
    public user selLid(String zclid) {
        return um.selLid(zclid);
    }
}
