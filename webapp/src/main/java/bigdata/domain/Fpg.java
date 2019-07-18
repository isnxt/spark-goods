package bigdata.domain;

public class Fpg {
    private String antecedent;
    private String consequent;
    private double confidence;

    public void setAntecedent(String antecedent){
        this.antecedent=antecedent;
    }
    public void setConsequent(String consequent){
        this.consequent=consequent;
    }
    public void setConfidence(double confidence) {
        this.confidence = confidence;
    }

    public String getAntecedent() {
        return antecedent;
    }

    public String getConsequent() {
        return consequent;
    }

    public double getConfidence() {
        return confidence;
    }
    @Override
    public String toString() {
        return "Fpg:"+antecedent+" "+consequent+" "+confidence;
    }
}
