package domain;

public class User {
    private Integer userID;
    private String userEmail;
    private String userName;
    private String password;
    private Integer sex;
    private Float balance;
    private Float targetWeight;

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", userEmail='" + userEmail + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", sex=" + sex +
                ", balance=" + balance +
                ", targetWeight=" + targetWeight +
                '}';
    }

    public Float getTargetWeight() {
        return targetWeight;
    }

    public void setTargetWeight(Float targetWeight) {
        this.targetWeight=targetWeight;
    }

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Float getBalance() {
        return balance;
    }

    public void setBalance(Float balance) {
        this.balance = balance;
    }
}
