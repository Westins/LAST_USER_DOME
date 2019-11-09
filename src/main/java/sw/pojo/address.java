package sw.pojo;

public class address {
    private int aId, userId;
    private String aName, aAddress, aPhone;

    public int getaId() {
        return aId;
    }

    @Override
    public String toString() {
        return "address{" +
                "aId=" + aId +
                ", userId=" + userId +
                ", aName='" + aName + '\'' +
                ", aAddress='" + aAddress + '\'' +
                ", aPhone='" + aPhone + '\'' +
                '}';
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaAddress() {
        return aAddress;
    }

    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }
}
