package sw.controller;

import org.springframework.web.bind.annotation.ResponseBody;
import sw.pojo.goods;
import sw.pojo.user;
import sw.service.impl.userServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Login")
public class LoginController {

    @Autowired
    private static PhoneCode phoneCode;

    @Autowired
    private userServiceImpl userServiceImpl;

    //   添加用户
    @RequestMapping(value = "/insUser")
    @ResponseBody
    int insertUser(user u, String yzm, HttpSession session) {
        int out;
        System.out.println("注册人信息：" + u.toString());
        System.out.println("验证码:" + yzm);
        String trueYzm = (String) session.getAttribute("yzm");
        System.out.println("正确的验证码:" + trueYzm);
        if (yzm.equals(trueYzm)) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            u.setFlag(1);
            u.setuTime(sdf.format(date));
            int i = userServiceImpl.InsertUser(u);
            if (i > 0) {
                out = 0; //注册成功
            } else {
                out = 1; //注册失败
            }
        } else {
            out = 2; //验证码错误
        }
        System.out.println("注册结果:" + out);
        return out;
    }

    //   用户登录
    @RequestMapping(value = "/Login")
    @ResponseBody
    boolean Login(String lid, String lpwd, HttpSession session, HttpServletRequest req, String ziDon) {
        boolean loginResult = false;
        user u = userServiceImpl.Login(lid);
        if (u.getlPwd().equals(lpwd)) {
            session.setAttribute("userSession", u);
            if ("1".equals(ziDon)) {
                Cookie userName = new Cookie("userName", lid);
                Cookie userPwd = new Cookie("userPwd", lpwd);
                Cookie remember = new Cookie("remember", ziDon);
                userName.setMaxAge(60 * 60 * 24);//一天
                userPwd.setMaxAge(60 * 60 * 24);//一天
                remember.setMaxAge(60 * 60 * 24);//一天
                req.setAttribute("username", userName);
                req.setAttribute("password", userPwd);
                req.setAttribute("remember", remember);
                loginResult = true;
            }
        } else {
            System.out.println("密码错误！");
            loginResult = false;
        }
        return loginResult;
    }

    //   查找电话
    @RequestMapping(value = "/selPhone")
    @ResponseBody
    String selPhone(String phone) {
        System.out.println("手机号码:" + phone);
        int i = userServiceImpl.selPhone(phone);
        System.out.println("验证手机i的值:" + i);
        if (i > 0) {
            return "false"; //手机号已经被注册
        } else {
            return "true";//手机号未被注册
        }
    }

    //   修改登陆密码
    @RequestMapping(value = "/updPwd")
    void updPwd(Map<Object, Object> map) {
        int i = userServiceImpl.updPwd(map);
    }

    //获取手机验证码
    @RequestMapping(value = "/getCode")
    @ResponseBody
    String getCode(String mobile, HttpSession session) {
        String jieGuo = phoneCode.getPhonemsg(mobile);
        session.setAttribute("yzm", jieGuo);
        return "发送成功";
    }

    //   查找登陆账号是否存在
    @RequestMapping(value = "/getlid")
    @ResponseBody
    String getlid(String lid) {
        System.out.println("lid的值：" + lid);
        user u = userServiceImpl.selLid(lid);
        int i = userServiceImpl.selPhone(lid);
        System.out.println("i的值：" + i);
        if (u == null) {
            return "true";
        }
        return "false";
    }

}
