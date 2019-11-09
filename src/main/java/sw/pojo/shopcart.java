package sw.pojo;

public class shopcart {
    private int cId, goodsId, cNum, userId;
    private char cState;
    private goods goods;

    @Override
    public String toString() {
        return "shopcart{" +
                "cId=" + cId +
                ", goodsId=" + goodsId +
                ", cNum=" + cNum +
                ", userId=" + userId +
                ", cState=" + cState +
                ", goods=" + goods +
                '}';
    }

    public sw.pojo.goods getGoods() {
        return goods;
    }

    public void setGoods(sw.pojo.goods goods) {
        this.goods = goods;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public int getcNum() {
        return cNum;
    }

    public void setcNum(int cNum) {
        this.cNum = cNum;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public char getcState() {
        return cState;
    }

    public void setcState(char cState) {
        this.cState = cState;
    }
}
