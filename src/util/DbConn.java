package util;

import java.sql.*;
import java.util.Properties;

public class DbConn {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/mydatabaseproject?useSSL=false&serverTimezone=UTC";
	private static final String USER = "root";
	private static final String PASSWORD = "123456";
	private Connection conn;
	private Statement statement;
	private String dbName;
	
	public DbConn(String dbName) {
		/* 此函数用于获取数据库的相关配置信息并且生成对应的连接器 */
		/* 开始获取配置信息 */
		this.dbName = dbName;
		Properties db_conf = new Properties();
		try {
			Class.forName(DRIVER);
		} catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		try {
			//String conn_str = db_conf.getProperty("URL1") + ip_conf.getProperty("IP") + ":3306/" + dbName + "?" + db_conf.getProperty("URL2");
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			statement = conn.createStatement();
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
	}
	
	public String getDbName() {
		/* 此函数用于获取数据库名 */
		return dbName;
	}
	
	public ResultSet executeUpdate(String sql) {
		/* 此函数用于根据SQL语句执行增加、删除、修改数据库操作 */
		try {
			statement.executeUpdate(sql);
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
        return null;
    }
	
	public ResultSet executeQuery(String sql) {
		/* 此函数用于根据SQL语句执行查询数据库操作 */
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		return rs;
	}
	
	public void close() {
		/* 此函数用于关闭数据库 */
		try {
			statement.close();
			conn.close();
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
	}
}
