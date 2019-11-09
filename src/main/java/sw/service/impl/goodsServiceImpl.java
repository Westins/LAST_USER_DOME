package sw.service.impl;

import org.apache.ibatis.annotations.Param;
import sw.dao.goodsMapper;
import sw.pojo.goods;
import sw.pojo.goodsType;
import sw.service.goodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class goodsServiceImpl implements goodsService {

    @Autowired
    private goodsMapper pm;

    @Override
    public List<goods> selGoodsAll() {
        return pm.selGoodsAll();
    }

    @Override
    public List<goods> selRebateGoods(@Param("Rebate") String Rebate) {
        return pm.selRebateGoods(Rebate);
    }

    @Override
    public List<goods> selXiaoLianGoods(String XiaoLian) {
        return pm.selXiaoLianGoods(XiaoLian);
    }

    @Override
    public goods selGoodsById(int goodsId) {
        return pm.selGoodsById(goodsId);
    }

    @Override
    public List<goods> selGoodsByType(int typeId) {
        return pm.selGoodsByType(typeId);
    }

    @Override
    public List<goods> selGoods(Map<Object, Object> map) {
        return pm.selGoods(map);
    }

    @Override
    public goodsType selTypeByName(String typeName) {
        return pm.selTypeByName(typeName);
    }

    @Override
    public int updGooodsXiaoLian(goods goods) {
        return pm.updGooodsXiaoLian(goods);
    }
}
