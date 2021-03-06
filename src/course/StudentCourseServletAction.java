package course;

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

//@WebServlet("/course_servlet_action")
public class StudentCourseServletAction extends HttpServlet {
	private String tableName1 = "course_table";
    private String tableName2 = "student_grade";
    private String tableName3 = "teacher_course";
    private String tableName4 = "student_course";
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        Object userRole = session.getAttribute("user_role");
        if(userRole == null) {
            try {
                postResult(request, response, null, null, "用户为空请重新登录！", 0);
            } catch(Exception ex) {
                ex.printStackTrace();
            }
        } else {
        	String action = request.getParameter("action");
            if(action == null) {
                try {
                    postResult(request, response, null, null, "当前无操作！", 1);
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
        String tableName2 = this.tableName2;
        String tableName3 = this.tableName3;
        String tableName4 = this.tableName4;
       /* private String tableName1 = "course_table";
        private String tableName2 = "student_grade";
        private String tableName3 = "teacher_course";
        private String tableName4 = "student_course";*/
        String userID= (String) session.getAttribute("userID");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql ="select student_course.courseID,courseName,teacherName,courseType,coursePlace,courseCredit" +
                " from student_course,teacher_course,teacher_info,course_table" +
                " where studentID='"+userID+"' and teacher_course.courseID=student_course.courseID" +
                " and teacher_info.teacherID=teacher_course.teacherID and course_table.courseID=student_course.courseID;";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("student_course.courseID"));
            tmp.add(rs.getString("courseName"));
            tmp.add(rs.getString("teacherName"));
            tmp.add(rs.getString("courseType"));
            tmp.add(rs.getString("coursePlace"));
            tmp.add(rs.getString("courseCredit"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "查询成功！", 3);
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
            /*tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("sign_time"));
            tmp.add(rs.getString("sign_ip"));
            tmp.add(rs.getString("lesson_id"));*/
            
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_time"));
            tmp.add(rs.getString("credit"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
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
    //    String sql = "select * from " + tableName1 + " where user_id='" + keyWord + "' and limit_time between '" + timeFrom + "' and '" + timeTo + "'";
        String sql = "select * from " + tableName1 + " where content='" + keyWord + "'" ;
        System.out.println("query(sql):" + sql);
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            
            tmp.add(rs.getString("id"));
            /* tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("sign_time"));
            tmp.add(rs.getString("sign_ip"));
            tmp.add(rs.getString("lesson_id"));*/
            
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_time"));
            tmp.add(rs.getString("credit"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
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
        String sql = "select * from " + tableName1 + " where create_time between '" + timeFrom + "' and '" + timeTo + "'";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            
            tmp.add(rs.getString("id"));
            /* tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("sign_time"));
            tmp.add(rs.getString("sign_ip"));
            tmp.add(rs.getString("lesson_id"));*/
            
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_time"));
            tmp.add(rs.getString("credit"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
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
            /*tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("sign_time"));
            tmp.add(rs.getString("sign_ip"));
            tmp.add(rs.getString("lesson_id"));*/
            
            tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_time"));
            tmp.add(rs.getString("credit"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
	}

	protected void addRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        
        /*String userId = request.getParameter("user_id");
        String signTime=request.getParameter("sign_time");
        String signIp=request.getParameter("sign_ip");
        String lessonId=request.getParameter("lesson_id");*/
        
        String userId = request.getParameter("user_id");      
        String content = request.getParameter("content");
        String createTime = request.getParameter("create_time");
        String classTime = request.getParameter("class_time");
        String credit = request.getParameter("credit");
        DbConn conn = new DbConn(dbName);
       // String sql="insert into"+tableName1+"(user_id,sign_time,sign_ip,lesson_id) values('"+ userId + "','" + signTime + "','" + signIp + "','" + lessonId + "')";
         String sql = "insert into " + tableName1 + " (user_id, content, create_time, class_time, credit) values ('" + userId + "','" + content + "','" + createTime + "','" + classTime + "','" + credit +  "')";
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
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
        postResult(request, response, action, null, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
	}
	
	protected void modifyRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String id = request.getParameter("id");
        
        /*String userId = request.getParameter("user_id");
        String signTime=request.getParameter("sign_time");
        String signIp=request.getParameter("sign_ip");
        String lessonId=request.getParameter("lesson_id");*/
        
        String userId = request.getParameter("user_id");      
        String content = request.getParameter("content");
        String createTime = request.getParameter("create_time");
        String classTime = request.getParameter("class_time");
        String credit = request.getParameter("credit");
        DbConn conn = new DbConn(dbName);
     //   String sql = "update " + tableName1 + " set user_id='" + userId + "', sign_time='" + signTime + "', sign_ip='" + signIp + "',  lesson_id='" + lessonId + "' where id='" + id + "'";
        String sql = "update " + tableName1 + " set user_id='" + userId + "', content='" + content + "', create_time='" + createTime + "', class_time='" + classTime + "', credit='" + credit  + "' where id='" + id + "'";
        System.out.println("modify(sql):" + sql);
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "鎴愬姛瀹屾垚鏁版嵁搴撲氦浜�", 3);
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
			    	final String[] thead = { "授课教师","课程名", "创建时间", "上课时间", "学分" };
			      writer.GenerateExcel(exportFileName, "学生信息", thead, aadata);
			    }
			    else
			    {
			    	final String[] thead = {"授课教师","课程名", "创建时间", "上课时间", "学分" };
			      writer.GenerateExcel(exportFileName, "学生详细信息", thead, aadata);
			    }
			    this.postResult(request, response, action, data, "成功完成数据库交互", 3);
			    System.out.println(outFileName );
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