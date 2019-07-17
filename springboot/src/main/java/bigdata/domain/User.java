package bigdata.domain;

public class User {
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    private int userID;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    private String userName;

    @Override
    public String toString() {
        return "User:"+userID+" "+" "+userName;
    }
}
