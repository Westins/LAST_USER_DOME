package sw.dao;


import sw.pojo.shopcart;

import java.util.List;
import java.util.Map;

public interface shopCartMapper {
    List<shopcart> selShopCartById(Map<Object, Object> map); //查询某个用户的购物车

    int updShopCartNum(Map<Object, Object> map); //更改购物车商品数量

    int updShopCartState(int cId);//用户下单 修改购物车状态

    int delShopCart(int cId); //删除对应购物车信息

    int addShopcart(shopcart shopcart);//添加商品进入购物车

    shopcart selShopcartBysId(int cId);
}
