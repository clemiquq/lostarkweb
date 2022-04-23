package model;

/**
 * @author 鲁思奇
 * @since 2022/4/5 9:22
 */
public class MariModel {
    String mariCount;
    String mariPrice;
    String key;

    @Override
    public String toString() {
        return "mariModel{" +
                "mariCount='" + mariCount + '\'' +
                ", mariPrice='" + mariPrice + '\'' +
                ", key='" + key + '\'' +
                '}';
    }

    public String getMariCount() {
        return mariCount;
    }

    public void setMariCount(String mariCount) {
        this.mariCount = mariCount;
    }

    public String getMariPrice() {
        return mariPrice;
    }

    public void setMariPrice(String mariPrice) {
        this.mariPrice = mariPrice;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
