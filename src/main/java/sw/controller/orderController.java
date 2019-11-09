package sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sw.pojo.*;
import sw.service.impl.addressServiceImpl;
import sw.service.impl.goodsServiceImpl;
import sw.service.impl.orderServiceImpl;
import sw.service.impl.shopCartServiceImpl;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class orderController {

    @Autowired
    private orderServiceImpl orderServiceimpl;

    @Autowired
    private addressServiceImpl asi;

    @Autowired
    private shopCartServiceImpl sci;

    @RequestMapping("/creatOrder")
    @ResponseBody
    String creatOrder(String ids, HttpSession session) {
        session.setAttribute("sCartIds", ids);
        return "1";
    }

    @RequestMapping("/CunOrder")
    String CunOrder(String choseAddress, HttpSession session, String priceNum, Model model) {
        String url = "redirect:/aliPayJsp/alipay.trade.page.pay.jsp";
        if (choseAddress == null || "".equals(choseAddress)) {
            url = "order";
            // ----------------
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
            // ----------------

            model.addAttribute("tiShi", 1);
        } else {
            List<order> orderList = new ArrayList<order>();
            String ids = (String) session.getAttribute("sCartIds");
            user u = (user) session.getAttribute("userSession");
            String[] cid = ids.split(",");
            String oNum = creatOrderId.INSTANCE.singletonOperation();
            for (int i = 0; i < cid.length; i++) {
                System.out.println("CID获取值：" + cid[i]);
                order order = new order();
                order.setcId(Integer.parseInt(cid[i]));
                order.setUserId(u.getUserId());
                order.setoNum(oNum);
                order.setoId(0);
                order.setaId(Integer.parseInt(choseAddress));
                orderList.add(order);
            }
            session.setAttribute("orderList", orderList);
            session.setAttribute("priceNum", priceNum);
        }
        return url;
    }

    @RequestMapping("/orderView")
    @ResponseBody
    List<all> orderView(HttpSession session) {
        user u = (user) session.getAttribute("userSession");
        List<all> orderList = orderServiceimpl.selALl(u.getUserId());
        System.out.println("用户订单信息:" + orderList.toString());
        return orderList;
    }
}
