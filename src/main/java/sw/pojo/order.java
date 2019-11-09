package sw.pojo;


public class order {
    private int oId, cId, userId, aId;
    private String oNum;
    private String otime;

    @Override
    public String toString() {
        return "order{" +
                "oId=" + oId +
                ", cId=" + cId +
                ", userId=" + userId +
                ", aId=" + aId +
                ", oNum='" + oNum + '\'' +
                ", otime='" + otime + '\'' +
                ", ostate='" + ostate + '\'' +
                ", address=" + address +
                ", user=" + user +
                ", shopcart=" + shopcart +
                '}';
    }

    public String getOstate() {
        return ostate;
    }

    public void setOstate(String ostate) {
        this.ostate = ostate;
    }

    private String ostate;
    private address address;
    private user user;
    private shopcart shopcart;

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public sw.pojo.address getAddress() {
        return address;
    }

    public void setAddress(sw.pojo.address address) {
        this.address = address;
    }

    public sw.pojo.user getUser() {
        return user;
    }

    public void setUser(sw.pojo.user user) {
        this.user = user;
    }

    public sw.pojo.shopcart getShopcart() {
        return shopcart;
    }

    public void setShopcart(sw.pojo.shopcart shopcart) {
        this.shopcart = shopcart;
    }

    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public int getoId() {
        return oId;
    }

    public void setoId(int oId) {
        this.oId = oId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getoNum() {
        return oNum;
    }

    public void setoNum(String oNum) {
        this.oNum = oNum;
    }
}
