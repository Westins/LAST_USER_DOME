package sw.pojo;

public class all {
    private String aAddress, oNum, otime, gName, gPrice, gRebate, ostate, cNum, gImg;

    @Override
    public String toString() {
        return "all{" +
                "aAddress='" + aAddress + '\'' +
                ", oNum='" + oNum + '\'' +
                ", otime='" + otime + '\'' +
                ", gName='" + gName + '\'' +
                ", gPrice='" + gPrice + '\'' +
                ", gRebate='" + gRebate + '\'' +
                ", ostate='" + ostate + '\'' +
                ", cNum='" + cNum + '\'' +
                ", gImg='" + gImg + '\'' +
                '}';
    }

    public String getaAddress() {
        return aAddress;
    }

    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }

    public String getoNum() {
        return oNum;
    }

    public void setoNum(String oNum) {
        this.oNum = oNum;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public String getgPrice() {
        return gPrice;
    }

    public void setgPrice(String gPrice) {
        this.gPrice = gPrice;
    }

    public String getgRebate() {
        return gRebate;
    }

    public void setgRebate(String gRebate) {
        this.gRebate = gRebate;
    }

    public String getOstate() {
        return ostate;
    }

    public void setOstate(String ostate) {
        this.ostate = ostate;
    }

    public String getcNum() {
        return cNum;
    }

    public void setcNum(String cNum) {
        this.cNum = cNum;
    }

    public String getgImg() {
        return gImg;
    }

    public void setgImg(String gImg) {
        this.gImg = gImg;
    }
}
