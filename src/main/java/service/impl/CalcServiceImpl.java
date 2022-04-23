package service.impl;

import dao.CalcDao;
import model.HoningModel;
import model.HoningReturnModel;
import service.CalcService;
import util.HoningCalc;

/**
 * @author 鲁思奇
 * @since 2022/4/17 22:52
 */
public class CalcServiceImpl implements CalcService {
    private CalcDao calcDao;
    public void setCalcDao(CalcDao calcDao) {
        this.calcDao = calcDao;
    }

    HoningCalc honingCalc = new HoningCalc();

    @Override
    public HoningReturnModel honingCalc() {
        HoningReturnModel honingReturnModel = new HoningReturnModel();
        int GS = 1400;
        String type ="armor" ;
        if (type == "armor"){
            HoningModel honingModel = calcDao.findHoningArmorAll(GS);
            HoningReturnModel honingReturnArmorModel = honingCalc.splitHoningCalc(honingModel, honingCalc);
            honingReturnModel = honingReturnArmorModel;

        }
        else if (type == "weapon"){
            HoningModel honingModel = calcDao.findHoningWeaponAll(GS);
            HoningReturnModel honingReturnWeaponModel = honingCalc.splitHoningCalc(honingModel, honingCalc);
            honingReturnModel = honingReturnWeaponModel;

        }
        return honingReturnModel;
    }


}
