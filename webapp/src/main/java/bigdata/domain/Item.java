package bigdata.domain;

public class Item {
    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    private int itemID;

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    private String itemName;

    @Override
    public String toString() {
        return "Item:"+itemID+" "+" "+itemName;
    }
}
