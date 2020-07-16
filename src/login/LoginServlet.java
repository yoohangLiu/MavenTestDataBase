package login;

import org.json.JSONObject;
import util.DbConn;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

//@WebServlet(name = "login",urlPatterns = "/login_servlet_action")
public class LoginServlet extends HttpServlet {
	/* 这里合并时修改 */
	private String dbName = "mydatabaseproject";
//	private String dbName = "test";
	private String tableName1 = "userinfo";
	//private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		if (action.equals("get_student_info")) {
			try {
				System.out.println("正在查找消息");
				getStudentInfo(request, response);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		} else if (action.equals("get_teacher_info")) {
			try {
				System.out.println("正在查找消息");
				getTeacherInfo(request, response);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}else if (action.equals("check_user_id")) {
				try {
					checkUserId(request, response);
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			} else if (action.equals("set_session")) {
				try {
					setSession(request, response);
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	protected void getStudentInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userID");
		DbConn conn = new DbConn(dbName);
		String resCode = "0";
		String userID = "";
		String userName="";
		String userPassword = "";
		String status = "";
		Integer tableID=null;
		String sql = "select * from " + tableName1 + " where userID='" + userId + "'";
		ResultSet rs = conn.executeQuery(sql);
		if(rs.next()) {
			userID = rs.getString("userID");
			userPassword = rs.getString("loginPassword");
			userName = rs.getString("userName");
			status = rs.getString("status");
			tableID = rs.getInt("id");
			if(status.trim().equals("student")){
			    resCode = "1";
			}
		}
		JSONObject obj = new JSONObject();
		obj.put("userID", userID);
		obj.put("loginPassword", userPassword);
        obj.put("status", status);
        obj.put("userName", userName);
        obj.put("res_code", resCode);
        obj.put("user_table_id",tableID);
        String res_str = obj.toString();
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out;
        out = response.getWriter();
        out.print(res_str);
        out.flush();
        out.close();
	}
	protected void getTeacherInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userID");
		DbConn conn = new DbConn(dbName);
		String resCode = "0";
		String userID = "";
		String userName="";
		String userPassword = "";
		String status = "";
		Integer tableID=null;
		String sql = "select * from " + tableName1 + " where userID='" + userId + "'";
		ResultSet rs = conn.executeQuery(sql);
		if(rs.next()) {
			userID = rs.getString("userID");
			userPassword = rs.getString("loginPassword");
			userName = rs.getString("userName");
			status = rs.getString("status");
			tableID = rs.getInt("id");
			if(status.trim().equals("teacher")){
				resCode = "1";
			}
		}
		JSONObject obj = new JSONObject();
		obj.put("userID", userID);
		obj.put("loginPassword", userPassword);
		obj.put("status", status);
		obj.put("userName", userName);
		obj.put("res_code", resCode);
		obj.put("user_table_id",tableID);
		String res_str = obj.toString();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out;
		out = response.getWriter();
		out.print(res_str);
		out.flush();
		out.close();
	}
	/*protected void sendEmail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String content = request.getParameter("content");
		String userPassword = request.getParameter("user_password");
		login.EmailWriter writer = new EmailWriter();

		writer.GenerateEmail(content, "您的移动互动课堂平台", "你发起了找回密码申请，你的密码为:" + userPassword);
	}*/
	
	protected void checkUserId(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userID");
		String resCode = "0";
		String sql = "select * from " + tableName1 + " where user_Id='" + userId + "'";
		//String re= String.valueOf(template.queryForRowSet(sql));
		DbConn conn = new DbConn(dbName);
		ResultSet rs = conn.executeQuery(sql);
		if(rs.next()) {
			resCode = "1";
		}
		JSONObject obj = new JSONObject();
        obj.put("res_code", resCode);
        String res_str = obj.toString();
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out;
        out = response.getWriter();
        out.print(res_str);
        out.flush();
        out.close();
	}
	
	protected void setSession(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userID");
		String userName = request.getParameter("userName");
		String status = request.getParameter("status");
		String userTableId = request.getParameter("user_table_id");
		System.out.println("session设置:" + userTableId);
		HttpSession session = request.getSession();
		session.setAttribute("user_role", status);
		session.setAttribute("userName",userName);
		session.setAttribute("userID", userId);
		session.setAttribute("user_table_id", userTableId);
		session.setAttribute("unit_db_name",dbName);
	}

}
