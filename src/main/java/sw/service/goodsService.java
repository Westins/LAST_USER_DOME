package sw.service;

import org.apache.ibatis.annotations.Param;
import sw.pojo.goods;
import sw.pojo.goodsType;

import java.util.List;
import java.util.Map;

public interface goodsService {
    //    查询所有商品
    List<goods> selGoodsAll();

    //  查询折扣商品 0:升序 1:降序
    List<goods> selRebateGoods(@Param("Rebate") String Rebate);

    //根据销量排序 0:升序 1:降序
    List<goods> selXiaoLianGoods(String XiaoLian);

    //根据ID查询商品
    goods selGoodsById(int goodsId);

    //根据类型查询商品
    List<goods> selGoodsByType(int typeId);

    //根据名字或类型 排序
    List<goods> selGoods(Map<Object, Object> map);

    //根据名称查询类型ID
    goodsType selTypeByName(String typeName);

    int updGooodsXiaoLian(goods goods);
}
