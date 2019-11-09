package sw.controller;

import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sw.pojo.shopcart;
import sw.pojo.user;
import sw.service.impl.shopCartServiceImpl;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/shopCart")
public class shopCartController {

    @Autowired
    private shopCartServiceImpl ssi;

    // 查询用户购物车
    @RequestMapping("/selShopcart")
    @ResponseBody
    List<shopcart> selShopcart(HttpSession session, Map<Object, Object> map) {
        System.out.println("查询该用户的购物车");
        user u = (user) session.getAttribute("userSession");
        map.put("userId", u.getUserId());
        map.put("cState", 0);
        List<shopcart> shopcartList = ssi.selShopCartById(map);
        return shopcartList;
    }

    // 修改购物车中商品数量
    @RequestMapping("/updshopCartNum")
    @ResponseBody
    boolean updshopCartNum(int cId, int cNum, Map<Object, Object> map) {
        boolean updResult = false;
        map.put("cId", cId);
        map.put("cNum", cNum);
        int i = ssi.updShopCartNum(map);
        if (i > 0) {
            updResult = true;
        } else {
            updResult = false;
        }
        return updResult;

    }

    // 删除对应购物车信息
    @RequestMapping("/delShopCart")
    @ResponseBody
    boolean delShopCart(int cId) {
        boolean delResult = false;
        System.out.println("执行单个删除");
        int i = ssi.delShopCart(cId);
        if (i > 0) {
            delResult = true;
        } else {
            delResult = false;
        }
        return delResult;
    }

    @RequestMapping("/updsShopCart")
    @ResponseBody
    boolean updsShopCart(String cId) throws Exception {
        String[] data = cId.split(",");
        boolean result = false;
        int index = 0;
        for (int i = 0; i < data.length; i++) {
            System.out.println("删除ID为：" + data[i]);
            int j = ssi.delShopCart(Integer.parseInt(data[i]));
            if (j > 0) {
                index += 1;
            }
        }
        if (index == data.length) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }

    // 将商品添加到购物车
    @RequestMapping("/addShopCart")
    @ResponseBody
    boolean addShopCart(shopcart shopcart, HttpSession session) {
        boolean Reslut = false;
        System.out.println("存入购物车的数据" + shopcart.toString());
        user u = (user) session.getAttribute("userSession");
        shopcart.setUserId(u.getUserId());
        int i = ssi.addShopcart(shopcart);
        if (i > 0) {
            Reslut = true;
        }
        return Reslut;
    }
}
