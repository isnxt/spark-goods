package bigdata.domain;

public class Single {

    private double windowFollowValue;

    public void setWindowFollowValue(double windowFollowValue) {
        this.windowFollowValue = windowFollowValue;
    }

    public double getWindowFollowValue() {
        return windowFollowValue;
    }
    @Override
    public String toString(){
        return "Single:"+windowFollowValue;
    }
}

