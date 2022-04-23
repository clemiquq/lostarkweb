package model;

/**
 * @author 鲁思奇
 * @since 2022/4/18 22:04
 */
public class HoningModel {
    private int GS;
    private String HoningCourse;
    private int Stone;
    private int Leapstone;
    private int Oreha;
    private int Shard;
    private int Silver;
    private int Gold;
    private float RateOfSuccess;
    private float ChangeRate;
    private float AddingUtility;
    private int AddingQuantityGreen;
    private int AddingQuantityBlue;
    private int AddingQuantityPurple;

    @Override
    public String toString() {
        return "HoningArmorModel{" +
                "GS=" + GS +
                ", HoningCourse='" + HoningCourse + '\'' +
                ", Stone=" + Stone +
                ", Leapstone=" + Leapstone +
                ", Oreha=" + Oreha +
                ", Shard=" + Shard +
                ", Silver=" + Silver +
                ", Gold=" + Gold +
                ", RateOfSuccess=" + RateOfSuccess +
                ", ChangeRate=" + ChangeRate +
                ", AddingUtility=" + AddingUtility +
                ", AddingQuantityGreen=" + AddingQuantityGreen +
                ", AddingQuantityBlue=" + AddingQuantityBlue +
                ", AddingQuantityPurple=" + AddingQuantityPurple +
                '}';
    }

    public int getGS() {
        return GS;
    }

    public void setGS(int GS) {
        this.GS = GS;
    }

    public String getHoningCourse() {
        return HoningCourse;
    }

    public void setHoningCourse(String honingCourse) {
        HoningCourse = honingCourse;
    }

    public int getStone() {
        return Stone;
    }

    public void setStone(int stone) {
        Stone = stone;
    }

    public int getLeapstone() {
        return Leapstone;
    }

    public void setLeapstone(int leapstone) {
        Leapstone = leapstone;
    }

    public int getOreha() {
        return Oreha;
    }

    public void setOreha(int oreha) {
        Oreha = oreha;
    }

    public int getShard() {
        return Shard;
    }

    public void setShard(int shard) {
        Shard = shard;
    }

    public int getSilver() {
        return Silver;
    }

    public void setSilver(int silver) {
        Silver = silver;
    }

    public int getGold() {
        return Gold;
    }

    public void setGold(int gold) {
        Gold = gold;
    }

    public float getRateOfSuccess() {
        return RateOfSuccess;
    }

    public void setRateOfSuccess(float rateOfSuccess) {
        RateOfSuccess = rateOfSuccess;
    }

    public float getChangeRate() {
        return ChangeRate;
    }

    public void setChangeRate(float changeRate) {
        ChangeRate = changeRate;
    }

    public float getAddingUtility() {
        return AddingUtility;
    }

    public void setAddingUtility(float addingUtility) {
        AddingUtility = addingUtility;
    }

    public int getAddingQuantityGreen() {
        return AddingQuantityGreen;
    }

    public void setAddingQuantityGreen(int addingQuantityGreen) {
        AddingQuantityGreen = addingQuantityGreen;
    }

    public int getAddingQuantityBlue() {
        return AddingQuantityBlue;
    }

    public void setAddingQuantityBlue(int addingQuantityBlue) {
        AddingQuantityBlue = addingQuantityBlue;
    }

    public int getAddingQuantityPurple() {
        return AddingQuantityPurple;
    }

    public void setAddingQuantityPurple(int addingQuantityPurple) {
        AddingQuantityPurple = addingQuantityPurple;
    }
}
