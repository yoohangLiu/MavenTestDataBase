package Entity;

public class userinfo {
    private Integer id;
    private String UserID;
    private String userName;
    private String loginPassword;
    private Integer creditHasGained;
    private String status;

    public userinfo(Integer id, String userID, String userName, String loginPassword, Integer creditHasGained, String status) {
        this.id = id;
        UserID = userID;
        this.userName = userName;
        this.loginPassword = loginPassword;
        this.creditHasGained = creditHasGained;
        this.status = status;
    }

    @Override
    public String toString() {
        return "userinfo{" +
                "id=" + id +
                ", UserID='" + UserID + '\'' +
                ", userName='" + userName + '\'' +
                ", loginPassword='" + loginPassword + '\'' +
                ", creditHasGained=" + creditHasGained +
                ", status='" + status + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String userID) {
        UserID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public Integer getCreditHasGained() {
        return creditHasGained;
    }

    public void setCreditHasGained(Integer creditHasGained) {
        this.creditHasGained = creditHasGained;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
