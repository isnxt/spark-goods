package bigdata.domain;

public class SingleFollow {

    private double windowFollowValue;

    public void setWindowFollowValue(double windowFollowValue) {
        this.windowFollowValue = windowFollowValue;
    }

    public double getWindowFollowValue() {
        return windowFollowValue;
    }
    @Override
    public String toString(){
        return "SingleFollow:"+windowFollowValue;
    }
}

