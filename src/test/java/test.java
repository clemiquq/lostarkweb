import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import java.math.BigDecimal;

/**
 * @author 鲁思奇
 * @since 2022/4/1 23:51
 */
public class test {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Test
    public void test1(){
        System.out.println(123123);
    }


}
