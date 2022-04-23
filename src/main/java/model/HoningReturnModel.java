package model;

/**
 * @author 鲁思奇
 * @since 2022/4/17 23:22
 */
public class HoningReturnModel {
    private String solution;
    private double leasttimes;
    private double cheapercost;
    private double costeverytimes;
    private double totalcost;

    @Override
    public String toString() {
        return "HoningReturnModel{" +
                "solution='" + solution + '\'' +
                ", leasttimes=" + leasttimes +
                ", cheapercost=" + cheapercost +
                ", costeverytimes=" + costeverytimes +
                ", totalcost=" + totalcost +
                '}';
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public double getLeasttimes() {
        return leasttimes;
    }

    public void setLeasttimes(double leasttimes) {
        this.leasttimes = leasttimes;
    }

    public double getCheapercost() {
        return cheapercost;
    }

    public void setCheapercost(double cheapercost) {
        this.cheapercost = cheapercost;
    }

    public double getCosteverytimes() {
        return costeverytimes;
    }

    public void setCosteverytimes(double costeverytimes) {
        this.costeverytimes = costeverytimes;
    }

    public double getTotalcost() {
        return totalcost;
    }

    public void setTotalcost(double totalcost) {
        this.totalcost = totalcost;
    }
}
