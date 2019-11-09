package sw.pojo;

public class goods {
    private int goodsId, gType, gXiaoLian;
    private String gImg;
    private String gImg2;
    private String gImg3;
    private String gImg4;
    private String gName;
    private String gDetailsTest;
    private String gDetailsImg;
    private String gDetailsImg2;
    private String gTime;
    private double gPrice, gRebate;
    private char gState;
    private goodsType goodsType;

    public int getgXiaoLian() {
        return gXiaoLian;
    }

    public sw.pojo.goodsType getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(sw.pojo.goodsType goodsType) {
        this.goodsType = goodsType;
    }

    public void setgXiaoLian(int gXiaoLian) {
        this.gXiaoLian = gXiaoLian;
    }

    @Override
    public String toString() {
        return "goods{" +
                "goodsId=" + goodsId +
                ", gType=" + gType +
                ", gXiaoLian=" + gXiaoLian +
                ", gImg='" + gImg + '\'' +
                ", gImg2='" + gImg2 + '\'' +
                ", gImg3='" + gImg3 + '\'' +
                ", gImg4='" + gImg4 + '\'' +
                ", gName='" + gName + '\'' +
                ", gDetailsTest='" + gDetailsTest + '\'' +
                ", gDetailsImg='" + gDetailsImg + '\'' +
                ", gDetailsImg2='" + gDetailsImg2 + '\'' +
                ", gTime='" + gTime + '\'' +
                ", gPrice=" + gPrice +
                ", gRebate=" + gRebate +
                ", gState=" + gState +
                ", goodsType=" + goodsType +
                '}';
    }

    public String getgTime() {
        return gTime;
    }

    public void setgTime(String gTime) {
        this.gTime = gTime;
    }


    public int getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(int goodsId) {
        this.goodsId = goodsId;
    }

    public int getgType() {
        return gType;
    }

    public void setgType(int gType) {
        this.gType = gType;
    }

    public String getgImg() {
        return gImg;
    }

    public void setgImg(String gImg) {
        this.gImg = gImg;
    }

    public String getgImg2() {
        return gImg2;
    }

    public void setgImg2(String gImg2) {
        this.gImg2 = gImg2;
    }

    public String getgImg3() {
        return gImg3;
    }

    public void setgImg3(String gImg3) {
        this.gImg3 = gImg3;
    }

    public String getgImg4() {
        return gImg4;
    }

    public void setgImg4(String gImg4) {
        this.gImg4 = gImg4;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public String getgDetailsTest() {
        return gDetailsTest;
    }

    public void setgDetailsTest(String gDetailsTest) {
        this.gDetailsTest = gDetailsTest;
    }

    public String getgDetailsImg() {
        return gDetailsImg;
    }

    public void setgDetailsImg(String gDetailsImg) {
        this.gDetailsImg = gDetailsImg;
    }

    public String getgDetailsImg2() {
        return gDetailsImg2;
    }

    public void setgDetailsImg2(String gDetailsImg2) {
        this.gDetailsImg2 = gDetailsImg2;
    }

    public double getgPrice() {
        return gPrice;
    }

    public void setgPrice(double gPrice) {
        this.gPrice = gPrice;
    }

    public double getgRebate() {
        return gRebate;
    }

    public void setgRebate(double gRebate) {
        this.gRebate = gRebate;
    }

    public char getgState() {
        return gState;
    }

    public void setgState(char gState) {
        this.gState = gState;
    }
}
