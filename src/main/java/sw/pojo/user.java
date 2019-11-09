package sw.pojo;

public class user {
    private int userId, age, flag;
    private String lName, lPwd, name, headImg, phone, uTime;
    private char sex;

    @Override
    public String toString() {
        return "user{" +
                "userId=" + userId +
                ", age=" + age +
                ", flag=" + flag +
                ", lName='" + lName + '\'' +
                ", lPwd='" + lPwd + '\'' +
                ", name='" + name + '\'' +
                ", headImg='" + headImg + '\'' +
                ", phone='" + phone + '\'' +
                ", uTime='" + uTime + '\'' +
                ", sex=" + sex +
                '}';
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public String getuTime() {
        return uTime;
    }

    public void setuTime(String uTime) {
        this.uTime = uTime;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getlPwd() {
        return lPwd;
    }

    public void setlPwd(String lPwd) {
        this.lPwd = lPwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }
}
