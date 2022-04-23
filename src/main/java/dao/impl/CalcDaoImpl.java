package dao.impl;

import dao.CalcDao;
import model.HoningModel;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * @author 鲁思奇
 * @since 2022/4/18 0:05
 */
public class CalcDaoImpl implements CalcDao {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    @Override
    public HoningModel findHoningArmorAll(int GS) {
        HoningModel honingArmorModel  =  jdbcTemplate.queryForObject("select * from lostark.honing_armor t where t.GS = ?",new BeanPropertyRowMapper<HoningModel>(HoningModel.class) ,GS);
        return honingArmorModel;
    }

    @Override
    public HoningModel findHoningWeaponAll(int GS) {
        HoningModel honingWeaponModel  = jdbcTemplate.queryForObject("select * from lostark.honing_weapon t where t.GS = ?",new BeanPropertyRowMapper<HoningModel>(HoningModel.class),GS);
        return honingWeaponModel;
    }

}
