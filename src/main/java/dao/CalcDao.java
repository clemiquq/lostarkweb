package dao;

import model.HoningModel;

/**
 * @author 鲁思奇
 * @since 2022/4/18 0:04
 */
public interface CalcDao {

    HoningModel findHoningArmorAll(int GS);
    HoningModel findHoningWeaponAll(int GS);

}
