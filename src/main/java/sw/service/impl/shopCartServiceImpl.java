package sw.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sw.dao.shopCartMapper;
import sw.pojo.shopcart;
import sw.service.shopCartService;

import java.util.List;
import java.util.Map;

@Service
public class shopCartServiceImpl implements shopCartService {

    @Autowired
    private shopCartMapper shopCartMapper;

    @Override
    public List<shopcart> selShopCartById(Map<Object, Object> map) {
        return shopCartMapper.selShopCartById(map);
    }

    @Override
    public int updShopCartNum(Map<Object, Object> map) {
        return shopCartMapper.updShopCartNum(map);
    }

    @Override
    public int updShopCartState(int cId) {
        return shopCartMapper.updShopCartState(cId);
    }

    @Override
    public int delShopCart(int cId) {
        return shopCartMapper.delShopCart(cId);
    }

    @Override
    public int addShopcart(shopcart shopcart) {
        return shopCartMapper.addShopcart(shopcart);
    }

    @Override
    public shopcart selShopcartBysId(int cId) {
        return shopCartMapper.selShopcartBysId(cId);
    }
}
