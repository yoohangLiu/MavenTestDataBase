package user;

import org.json.JSONObject;
import student1.ExcelWriter;
import util.DbConn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/UserServletAction")
public class UserServletAction extends HttpServlet {
	
	private String tableName1 = "student_file";
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        Object userRole = session.getAttribute("user_role");
        if(userRole == null) {
            try {
                postResult(request, response, null, null, "用户session过期, 请重新登录", 0);
            } catch(Exception ex) {
                ex.printStackTrace();
            }
        } else {
        	String action = request.getParameter("action");
            if(action == null) {
                try {
                    postResult(request, response, null, null, "前端传来的action为空, 请检查JS中Record类是否发送正确请求", 1);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_brief_record")) {
                try {
                    getBriefRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_detailed_record")) {
                try {
                    getDetailedRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_query_record")) {
                try {
                    getQueryRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_statistic_record")) {
                try {
                    getStatisticRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_sorted_record")) {
                try {
                    getSortedRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("add_record")) {
                try {
                    addRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("delete_record")) {
                try {
                    deleteRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("modify_record")) {
                try {
                    modifyRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            
            } else if(action.equals("check_available")) {
            	try {
            		checkAvailable(request, response);
            	} catch(Exception ex) {
            		ex.printStackTrace();
            	}
            } else if(action.equals("check_available_detailed")) {
            	try {
            		checkAvailableDetailed(request, response);
            	} catch(Exception ex) {
            		ex.printStackTrace();
            	}
            }else if (action.equals("export_record")) {
            	  try
                  {
            		  this.exportRecord(request, response);
                    }
                catch (Exception ex)
                {
                  ex.printStackTrace();
                }
              } else {
                try
                {
                  this.postResult(request, response, null, null, "没有根据传来的action的处理槽函数, 请检查JS中Record类是否发送正确请求", 2);
                }
                catch (Exception ex)
                {
                  ex.printStackTrace();
                }
              }
            }
          }
        
	protected void getBriefRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1;
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("id"));
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("user_password"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("limit_time"));
            tmp.add(rs.getString("status"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
	}
	
	protected void getDetailedRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String id = request.getParameter("id");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1 + " where id='" + id + "'";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("id"));
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("user_password"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("limit_time"));
            tmp.add(rs.getString("status"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
	}
	
	protected void getQueryRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String keyWord = request.getParameter("key_word");
        String timeFrom = request.getParameter("time_from");
        String timeTo = request.getParameter("time_to");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1 + " where user_id='" + keyWord + "' and limit_time between '" + timeFrom + "' and '" + timeTo + "'";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("id"));
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("user_password"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("limit_time"));
            tmp.add(rs.getString("status"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
	}
	
	protected void getStatisticRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String timeFrom = request.getParameter("time_from");
        String timeTo = request.getParameter("time_to");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1 + " where limit_time between '" + timeFrom + "' and '" + timeTo + "'";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("id"));
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("user_password"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("limit_time"));
            tmp.add(rs.getString("status"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
	}
	
	protected void getSortedRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String orderBy = request.getParameter("order_by");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "";
        if(orderBy == null)  sql = "select * from " + tableName1;
        else sql = "select * from " + tableName1 + " order by " + orderBy;
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("id"));
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("user_password"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("limit_time"));
            tmp.add(rs.getString("status"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
	}

	protected void addRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String userId = request.getParameter("user_id");
        String userPassword = request.getParameter("user_password");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String limitTime = request.getParameter("limit_time");
        String status = request.getParameter("status");
        DbConn conn = new DbConn(dbName);
        String sql = "insert into " + tableName1 + " (user_id, user_password, title, content, limit_time, status) values ('" + userId + "','" + userPassword + "','" + title + "','" + content + "','" + limitTime + "','" + status + "')";
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "成功完成数据库交互", 3);
	}

	protected void deleteRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String id = request.getParameter("id");
        DbConn conn = new DbConn(dbName);
        String sql = "delete from " + tableName1 + " where id='" + id + "'";
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "成功完成数据库交互", 3);
	}
	
	protected void modifyRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String id = request.getParameter("id");
        String userId = request.getParameter("user_id");
        String userPassword = request.getParameter("user_password");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String limitTime = request.getParameter("limit_time");
        String status = request.getParameter("status");
        DbConn conn = new DbConn(dbName);
        String sql = "update " + tableName1 + " set user_id='" + userId + "', user_password='" + userPassword + "', title='" + title + "', content='" + content + "', limit_time='" + limitTime + "', status='" + status + "' where id='" + id + "'";
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "成功完成数据库交互", 3);
	}

	protected void exportRecord(final HttpServletRequest request, final HttpServletResponse response)  throws Exception
	{
		  final HttpSession session = request.getSession();
		  final String action = request.getParameter("action");
		  final List aadata = (ArrayList)session.getAttribute("result_set");
		  final Random random = new Random();
	    final int randNum = (int)(random.nextDouble() * 90000.0) + 10000;
	    final String outFileName = randNum + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".xls";
	    final List data = new ArrayList();
	    data.add(outFileName);
	    final String exportFileName = "C:\\upload\\xm04-teach\\export_" + outFileName;
	    final ExcelWriter writer = new ExcelWriter();
	    final int length_per_record = ((ArrayList)aadata.get(0)).size();
			    if (length_per_record == 7)
			    {
			    	final String[] thead = {"用户名", "用户密码", "用户姓名", "用户邮箱", "注册时间", "用户权限"};
			      writer.GenerateExcel(exportFileName, "用户信息", thead, aadata);
			    }
			    else
			    {
			    	final String[] thead = {"用户名", "用户密码", "用户姓名", "用户邮箱", "注册时间", "用户权限"};
			      writer.GenerateExcel(exportFileName, "用户信息", thead, aadata);
			    }
			    this.postResult(request, response, action, data, "成功完成数据库交互", 3);
			    System.out.println(outFileName );
			  }

	protected void checkAvailable(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String userName = request.getParameter("userName");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1 + " where userName='" + userName + "'";
        System.out.println(sql);
        ResultSet rs = conn.executeQuery(sql);
        if(rs.next()) aadata.add("0");
        else aadata.add("1");
        rs.close();
        conn.close();
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
    }
	
	protected void checkAvailableDetailed(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String userName = request.getParameter("user_name");
        String historyName = request.getParameter("history_name");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select * from " + tableName1 + " where user_id='" + userName + "'";
        System.out.println(sql);
        ResultSet rs = conn.executeQuery(sql);
        if(rs.next()) {
            String curName = rs.getString("user_id");
            if(historyName.equals(curName)) aadata.add("1");
            else aadata.add("0");
        } else aadata.add("1");
        rs.close();
        conn.close();
        postResult(request, response, action, aadata, "成功完成数据库交互", 3);
    }
	protected void postResult(final HttpServletRequest request, final HttpServletResponse response, final String action, final List aadata, final String res_msg, final int res_code) throws Exception
	{
		  final JSONObject obj = new JSONObject();
	    obj.put("action", (Object)action);
	    obj.put("aadata", (Collection)aadata);
	    obj.put("res_msg", (Object)res_msg);
	    obj.put("res_code", res_code);
	    final String res_str = obj.toString();
	    response.setContentType("text/html; charset=utf-8");
	    final PrintWriter out = response.getWriter();
	    out.print(res_str);
	    out.flush();
	    out.close();
	}
	}