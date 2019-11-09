package sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sw.pojo.address;
import sw.pojo.goods;
import sw.pojo.shopcart;
import sw.pojo.user;
import sw.service.impl.addressServiceImpl;
import sw.service.impl.goodsServiceImpl;
import sw.service.impl.shopCartServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/address")
public class addressController {

    @Autowired
    private addressServiceImpl asi;

    @Autowired
    private shopCartServiceImpl sci;


    @RequestMapping("/addAdress")
    String addAdress(String addressName, String addressPhone, String addressUrl, Map<Object, Object> map, HttpSession session) {
        user u = (user) session.getAttribute("userSession");
        map.put("aName", addressName);
        map.put("aPhone", addressPhone);
        map.put("aAddress", addressUrl);
        map.put("userId", u.getUserId());
        asi.insAddress(map);
        return "forward:/address/orderView.do";
    }

    @RequestMapping("/orderView")
    String orderView(HttpSession session, Model model) {
        System.out.println("来了");
        user u = (user) session.getAttribute("userSession");
        String ids = (String) session.getAttribute("sCartIds");
        String[] id = ids.split(",");
        List<address> list = asi.selAddressById(u.getUserId());
        List<shopcart> shopcartList = new ArrayList<shopcart>();
        for (int i = 0; i < id.length; i++) {
            shopcart shopcart = sci.selShopcartBysId(Integer.parseInt(id[i]));
            shopcartList.add(shopcart);
        }
        System.out.println(shopcartList.toString());
        model.addAttribute("shopcartList", shopcartList);
        model.addAttribute("addressList", list);
        return "order";
    }

    @RequestMapping("/delAddress")
    String delAddress(int aId) {
        asi.delAddressByaId(aId);
        return "forward:/address/orderView.do";
    }
}
