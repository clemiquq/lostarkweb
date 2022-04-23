package controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import model.HoningReturnModel;
import model.HoningSendModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.CalcService;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Properties;

/**
 * @author 鲁思奇
 * @since 2022/4/1 21:42
 */
@Controller
@RequestMapping("/calc")
public class CalcController {
    @Autowired
    private CalcService calcService;

    @RequestMapping("/mariCalc")
    public ModelAndView mariCalc(float exchange_rate_gold) throws IOException {
        ModelAndView modelAndView = new ModelAndView();

        Properties mariCountPro = new Properties();
        BufferedReader mariCount = new BufferedReader(new FileReader("D:\\Learn\\Programme\\lostArkLiu\\lostArkLL\\src\\main\\resources\\mariCount.properties"));
        mariCountPro.load(mariCount);

        Properties mariPricePro = new Properties();
        BufferedReader mariPrice = new BufferedReader(new FileReader("D:\\Learn\\Programme\\lostArkLiu\\lostArkLL\\src\\main\\resources\\mariPrice.properties"));
        mariPricePro.load(mariPrice);

        // 遍历
        for (String key :
                mariCountPro.stringPropertyNames()) {
            float valueCount = Float.valueOf(mariCountPro.getProperty(key));
            float valuePrice = Float.valueOf(mariPricePro.getProperty(key));
            modelAndView.addObject(key,String.valueOf(exchange_rate_gold/95/valueCount*valuePrice));
        }

        String harmony_leapstone = mariCountPro.getProperty("Harmony_Leapstone");

        // Harmony_Leapstone
        String Harmony_Leapstone = String.valueOf(exchange_rate_gold/95*5/5);
        modelAndView.addObject("Harmony_Leapstone",Harmony_Leapstone);

        // Life_Leapstone
        String Life_Leapstone = String.valueOf(exchange_rate_gold/95*56/40);
        modelAndView.addObject("Life_Leapstone",Life_Leapstone);

        modelAndView.setViewName("_subpage/mari_market");
        return modelAndView;
    }

    @RequestMapping("honingCalc")
    @ResponseBody
    public ModelAndView honingCalc(){
//        Integer leapstone_price,Integer stone_price,Integer oreha_price,Integer shard_price,
//                Integer green_price,Integer blue_price,Integer purple_price,Integer silver_price,
//                Integer button_1302, Integer button_1370,String button_weapon,String button_armor,Integer GS
//        System.out.println(button_weapon);
//        System.out.println(leapstone_price);

        ModelAndView modelAndView = new ModelAndView();
        HoningReturnModel honingReturnModel = calcService.honingCalc();

        modelAndView.addObject("solution",honingReturnModel.getSolution());
        modelAndView.addObject("leasttimes",new BigDecimal(honingReturnModel.getLeasttimes()).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
        modelAndView.addObject("cheapercost",new BigDecimal(honingReturnModel.getCheapercost()).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
        modelAndView.addObject("costeverytimes",new BigDecimal(honingReturnModel.getCosteverytimes()).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
        modelAndView.addObject("totalcost",new BigDecimal(honingReturnModel.getTotalcost()).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());

        modelAndView.setViewName("_subpage/honing_calc");
        return modelAndView;
    }
}
