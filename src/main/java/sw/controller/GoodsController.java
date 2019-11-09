package sw.controller;

import org.springframework.web.bind.annotation.ResponseBody;
import sw.pojo.goods;
import sw.pojo.goodsType;
import sw.service.impl.goodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private goodsServiceImpl gsi;

    //  index页面显示
    @RequestMapping("/indexView")
    String IndexView(Model model, HttpSession session) {
        System.out.println("来了");
        // 限时折扣商品  ndesc:升序 desc:降序
        List<goods> RebateList = gsi.selRebateGoods("defalut");
        // 类型商品
        List<goods> xiHuList = gsi.selGoodsByType(1); //宝宝洗护
        List<goods> wanJuList = gsi.selGoodsByType(2); //宝宝玩具
        List<goods> tonChuangList = gsi.selGoodsByType(3); //童床
        List<goods> niaoBuList = gsi.selGoodsByType(4); //尿裤湿巾
        List<goods> naiFenList = gsi.selGoodsByType(5); //奶粉

        model.addAttribute("RebateList", RebateList);
        model.addAttribute("xiHuList", xiHuList);
        model.addAttribute("wanJuList", wanJuList);
        model.addAttribute("tonChuangList", tonChuangList);
        model.addAttribute("niaoBuList", niaoBuList);
        model.addAttribute("naiFenList", naiFenList);
        return "index";
    }

    // 根据goodsId 查找对应商品
    @RequestMapping("/selGoodsById")
    String selGoodsById(int goodsId, Model model) {
        goods goods = gsi.selGoodsById(goodsId);
        model.addAttribute("goods", goods);
        return "show";
    }

    //根据名字或类型 排序
    @RequestMapping("/selGoods")
    @ResponseBody
    List<goods> selGoods(int goodType, String goodName, String gXl, String gPrice, Map<Object, Object> map) {
        System.out.println("来咯");
        map.put("goodType", goodType);
        map.put("goodName", goodName);
        map.put("gXl", gXl);
        map.put("gPrice", gPrice);
        System.out.println("goodType:" + goodType + "|" + "goodName:" + goodName + "|" + "gXl:" + gXl + "|" + "gPrice:" + gPrice);
        List<goods> goodsList = gsi.selGoods(map);
        System.out.println("查找的数据:" + goodsList.toString());
        return goodsList;
    }

    //其他页面查询
    @RequestMapping("/selGoodsOther")
    String selGoodsOther(String goodName, Map<Object, Object> map, Model model) {
        map.put("goodName", goodName);
        List<goods> goodsList = gsi.selGoods(map);
        model.addAttribute("goodsList", goodsList);
        return "liebiao";
    }

    @RequestMapping("/selType")
    String selType(String typeName, Model model) {
        goodsType goodsType = gsi.selTypeByName(typeName);
        model.addAttribute("goodsType", goodsType);
        return "liebiao";
    }

}
