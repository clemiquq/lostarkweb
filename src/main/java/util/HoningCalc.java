package util;

import model.HoningModel;
import model.HoningReturnModel;

/**
 * @author 鲁思奇
 * @since 2022/4/20 0:10
 */
public class HoningCalc {
    HoningReturnModel honingReturnModel = new HoningReturnModel();

    public double honingCalc(HoningModel honingModel, double addingRate){

        // 当前等级强化成功率
        double rateOfSuccess = honingModel.getRateOfSuccess();
        // 强化失败后增加的强化概率
        double changeRate = honingModel.getChangeRate();
        // 初始概率
        double defaultRate = rateOfSuccess;
        // 总强化概率
        double allRate = 0;
        // 本次强化成功率
        double thisRate = 0;
        // 强化次数
        double times = 1;
        // 平均强化次数
        double avgTimes = 0;


        // 默认第一次失败
        allRate = defaultRate + addingRate;
        thisRate = defaultRate + addingRate;
        while(true){
            if(allRate < 1 && times < 10){
                // 本次强化成功率 = 本次强化初始概率 + 本次强化初始概率 * 本次强化提升幅度
                thisRate = thisRate + defaultRate * changeRate;

                // 累计总强化成功率 = 累计概率 + 本次强化成功率 + 强化石赋予的额外概率
                allRate = allRate + thisRate;           // 目前强化到第几次
                times++;
            }
            // 当强化概率总和超过100%
            if (allRate >= 1){
                allRate = allRate - 1;

                thisRate = thisRate + addingRate;

                avgTimes = times - (allRate / thisRate);
//                System.out.println("100%次数" + avgTimes);
                return avgTimes;
            }
            // 当强化次数超过十次
            if (times >= 10){

                // 累计强化成功率 = 第十次强化成功概率 + 当前强化概率总和
                allRate = thisRate + allRate + addingRate;

                // 目前强化到第几次
                times = times + 1;
            }
        }
    }

    public HoningReturnModel splitHoningCalc(HoningModel honingModel, HoningCalc honingCalc){


        // 添加石头之后获得的强化效率1.336
        double addingUtility = honingModel.getAddingUtility();
        // 添加多少块绿石头
        int addingQuantityGreen = honingModel.getAddingQuantityGreen();
        int addingQuantityBlue = honingModel.getAddingQuantityBlue();
        int addingQuantityPurple = honingModel.getAddingQuantityPurple();
        // 绿石头概率
        double greenAllRate = addingQuantityGreen * 0.0125 * addingUtility;
        // 蓝石头概率
        double blueAllRate = addingQuantityBlue * 0.025 * addingUtility;
        // 紫石头概率
        double purpleAllRate = addingQuantityPurple * 0.075 * addingUtility;

        // 不放石头执行
        double noneAvgTimes = honingCalc.honingCalc(honingModel, 0);

        // 放绿石头执行
        double greenAvgTimes = honingCalc.honingCalc(honingModel, greenAllRate);

        // 放蓝石头执行
        double blueAvgTimes = honingCalc.honingCalc(honingModel, greenAllRate + blueAllRate);

        // 放紫石头执行
        double purpleAvgTimes = honingCalc.honingCalc(honingModel, greenAllRate + blueAllRate + purpleAllRate);


        // 初始化输入的钱
        double stoneprice = 7;
        double leapstoneprice = 65;
        double orehaprice = 9;
        double shardprice = 22;
        double silverprice = 0;
        double greenprice = 23;
        double blueprice = 86;
        double purpleprice = 192;


        //计算每样总价
        double stonecost = honingModel.getStone() * stoneprice / 10; //获取
        double leapstonecost = honingModel.getLeapstone() * leapstoneprice; //获取
        double orehacost = honingModel.getOreha() * orehaprice; //获取
        double shardcost = honingModel.getShard() * shardprice / 500; //获取
        double silvercost = honingModel.getSilver() * silverprice / 1000; //获取
        double goldprice = honingModel.getGold();
        greenprice = addingQuantityGreen * greenprice;//获取
        blueprice = addingQuantityBlue * blueprice;//获取
        purpleprice = addingQuantityPurple * purpleprice;//获取

        //每次强化的总价
        double totalprice = stonecost + leapstonecost + orehacost + shardcost + silvercost + goldprice;

        //计算四种总价
        double nonecost = totalprice * noneAvgTimes;
        double greencost = (nonecost + greenprice) * greenAvgTimes;
        double bluecost = (greencost + blueprice) * blueAvgTimes;
        double purplecost = (bluecost + purpleprice) * purpleAvgTimes;

        //定义，输出结果，对应次数，比无添加节省多少钱，每次强化花费的钱
        String solution = "";
        double leasttimes = 0;
        double cheapercost = 0;
        double costeverytimes = 0;
        double totalcost = 0;

        //比较四种大小
        double temp = nonecost;
        if (temp >= greencost) {
            temp = greencost;
        }
        if (temp >= bluecost) {
            temp = bluecost;
        }
        if (temp >= purplecost) {
            temp = purplecost;
        }


        //得到最便宜的结果
        //结果是无添加
        if (temp == nonecost) {
            solution = "不加入任何添加石";
            leasttimes = noneAvgTimes;
            cheapercost = 0;
            costeverytimes = totalprice;
            totalcost = noneAvgTimes * costeverytimes;
        }
        //结果是加绿色
        if (temp == greencost) {
            solution = "加入绿色添加石";
            leasttimes = greenAvgTimes;
            cheapercost = nonecost - greencost;
            costeverytimes = totalprice + greenprice;
            totalcost = greenAvgTimes * costeverytimes;
        }
        //结果是加蓝色
        if (temp == bluecost) {
            solution = "加入蓝色添加石";
            leasttimes = blueAvgTimes;
            cheapercost = nonecost - bluecost;
            costeverytimes = totalprice + greenprice + blueprice;
            totalcost = blueAvgTimes * costeverytimes;
        }
        //结果是加紫色
        if (temp == purplecost) {
            solution = "加入紫色添加石";
            leasttimes = purpleAvgTimes;
            cheapercost = nonecost - purplecost;
            costeverytimes = totalprice + greenprice + blueprice + purpleprice;
            totalcost = purpleAvgTimes * costeverytimes;

        }

//        System.out.println("石头：" + stonecost + "突破" + leapstonecost + "shard" + shardcost + "oreha" + orehacost + "金" + goldprice + "单钱" + totalprice);
//        System.out.println("文本：" + solution + "次数：" + leasttimes + "省钱：" + cheapercost + "每钱" + costeverytimes + "总钱" + totalcost);
        System.out.println(solution);
        System.out.println(leasttimes);
        System.out.println(cheapercost);
        System.out.println(costeverytimes);
        System.out.println(totalcost);
        System.out.println();

        honingReturnModel.setSolution(solution);
        honingReturnModel.setLeasttimes(leasttimes);
        honingReturnModel.setCheapercost(cheapercost);
        honingReturnModel.setCosteverytimes(costeverytimes);
        honingReturnModel.setTotalcost(totalcost);


        return honingReturnModel;
    }
}
