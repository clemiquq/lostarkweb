package model;

/**
 * @author 鲁思奇
 * @since 2022/4/21 21:28
 */
public class HoningSendModel {
private int GS ;
private String item_type;
private double leapstone_price;
private double stone_price;
private double oreha_price;
private double shard_price;
private double green_price;
private double blue_price;
private double purple_price;
private double silver_price;

    @Override
    public String toString() {
        return "HoningSendModel{" +
                "GS=" + GS +
                ", item_type='" + item_type + '\'' +
                ", leapstone_price=" + leapstone_price +
                ", stone_price=" + stone_price +
                ", oreha_price=" + oreha_price +
                ", shard_price=" + shard_price +
                ", green_price=" + green_price +
                ", blue_price=" + blue_price +
                ", purple_price=" + purple_price +
                ", silver_price=" + silver_price +
                '}';
    }

    public int getGS() {
        return GS;
    }

    public void setGS(int GS) {
        this.GS = GS;
    }

    public String getItem_type() {
        return item_type;
    }

    public void setItem_type(String item_type) {
        this.item_type = item_type;
    }

    public double getLeapstone_price() {
        return leapstone_price;
    }

    public void setLeapstone_price(double leapstone_price) {
        this.leapstone_price = leapstone_price;
    }

    public double getStone_price() {
        return stone_price;
    }

    public void setStone_price(double stone_price) {
        this.stone_price = stone_price;
    }

    public double getOreha_price() {
        return oreha_price;
    }

    public void setOreha_price(double oreha_price) {
        this.oreha_price = oreha_price;
    }

    public double getShard_price() {
        return shard_price;
    }

    public void setShard_price(double shard_price) {
        this.shard_price = shard_price;
    }

    public double getGreen_price() {
        return green_price;
    }

    public void setGreen_price(double green_price) {
        this.green_price = green_price;
    }

    public double getBlue_price() {
        return blue_price;
    }

    public void setBlue_price(double blue_price) {
        this.blue_price = blue_price;
    }

    public double getPurple_price() {
        return purple_price;
    }

    public void setPurple_price(double purple_price) {
        this.purple_price = purple_price;
    }

    public double getSilver_price() {
        return silver_price;
    }

    public void setSilver_price(double silver_price) {
        this.silver_price = silver_price;
    }
}
