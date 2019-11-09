package sw.alipay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.RequestMapping;
import sw.pojo.goods;
import sw.pojo.order;
import sw.pojo.shopcart;
import sw.service.impl.goodsServiceImpl;
import sw.service.impl.orderServiceImpl;
import sw.service.impl.shopCartServiceImpl;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/paySuccessController")
public class paySuccessController {

    @Autowired
    private orderServiceImpl osi;

    @Autowired
    private goodsServiceImpl gsi;

    @Autowired
    private shopCartServiceImpl ssi;

    @RequestMapping("/paySuccess")
    String paySuccess(HttpSession session) {
        System.out.println("开始执行支付成功方法！");
        List<order> orderList = (List<order>) session.getAttribute("orderList");
        System.out.println("list的长度：" + orderList.size());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date();

        for (int i = 0; i < orderList.size(); i++) {
            order order = new order();
            order.setaId(orderList.get(i).getaId());
            order.setoId(orderList.get(i).getoId());
            order.setcId(orderList.get(i).getcId());
            order.setoNum(orderList.get(i).getoNum());
            order.setUserId(orderList.get(i).getUserId());
            order.setOtime(sdf.format(d));
            order.setOstate("0");
            int z = osi.insOrders(order);
            System.out.println("订单储存结果:" + z);
            System.out.println("购物车ID：" + orderList.get(i).getcId());
            shopcart shopcart = ssi.selShopcartBysId(orderList.get(i).getcId());
            goods goods = gsi.selGoodsById(shopcart.getGoodsId());
            goods.setgXiaoLian(shopcart.getcNum() + goods.getgXiaoLian());
            int x = gsi.updGooodsXiaoLian(goods);
            System.out.println("修改商品销量结果:" + x);
            int c = ssi.updShopCartState(orderList.get(i).getcId());
            System.out.println("修改购物车状态结果:" + x);
        }

        System.out.println("运行结束！！！！！！！！！！！！！");
        return "redirect:/my_order.jsp";
    }
}