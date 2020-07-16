package domain;

public class TeacherInfo {
    private Integer teacherID;
    private String teacherName;
    private String loginPassword;

    @Override
    public String toString() {
        return "TeacherInfo{" +
                "teacherID=" + teacherID +
                ", teacherName='" + teacherName + '\'' +
                ", loginPassword='" + loginPassword + '\'' +
                '}';
    }

    public Integer getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(Integer teacherID) {
        this.teacherID = teacherID;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }
}
