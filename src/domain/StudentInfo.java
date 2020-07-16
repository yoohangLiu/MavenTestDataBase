package domain;

public class StudentInfo {
    private Integer studentID;
    private String studentName;
    private String loginPassword;
    private Integer creditHasGained;

    @Override
    public String toString() {
        return "StudentInfo{" +
                "studentID=" + studentID +
                ", studentName='" + studentName + '\'' +
                ", loginPassword='" + loginPassword + '\'' +
                ", creditHasGained=" + creditHasGained +
                '}';
    }

    public Integer getStudentID() {
        return studentID;
    }

    public void setStudentID(Integer studentID) {
        this.studentID = studentID;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
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


}
