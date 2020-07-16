package login;

import Entity.userinfo;
import org.springframework.jdbc.core.JdbcTemplate;
import util.DbConn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class LoginServletTest {
    private static String tableName1 = "userinfo";
    private static JdbcTemplate template;

    public static void main(String[] args) throws SQLException {
        DbConn conn = new DbConn("mydatabaseproject");
        String sql = "update "+tableName1+" set loginPassword='yiyangqianxi3' where id="+1;
        ResultSet rs = conn.executeUpdate(sql);
        System.out.println(rs);
       return;
    }
}
