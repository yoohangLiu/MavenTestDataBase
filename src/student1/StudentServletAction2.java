package student1;

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
import java.text.SimpleDateFormat;
import java.util.*;

//@WebServlet({"/student_servlet_action"})
public class StudentServletAction2
  extends HttpServlet
{
  private String tableName1 = "student_course";
  
  protected void service(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    HttpSession session = request.getSession();
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    Object userRole = session.getAttribute("user_role");
    if (userRole == null)
    {
      try
      {
        postResult(request, response, null, null, "用户session过期, 请重新登录", 0);
      }
      catch (Exception ex)
      {
        ex.printStackTrace();
      }
    }
    else
    {
      String action = request.getParameter("action");
      if (action == null) {
        try
        {
          postResult(request, response, null, null, "前端传来的action为空, 请检查JS中Record类是否发送正确请求", 1);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("get_brief_record")) {
        try
        {
          String courseID=request.getParameter("courseID");
          getBriefRecord(request, response,courseID);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("changeRatio")) {
        try {
          String courseID = request.getParameter("courseID");
          changeRatio(request, response, courseID);
        } catch (Exception ex) {
          ex.printStackTrace();
        }
      }else if (action.equals("get_detailed_record")) {
        try
        {
          getDetailedRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("get_query_record")) {
        try
        {
          getQueryRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("get_statistic_record")) {
        try
        {
          getStatisticRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("get_sorted_record")) {
        try
        {
          getSortedRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("add_record")) {
        try
        {
          addRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("delete_record")) {
        try
        {
          deleteRecord(request, response);
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
        }
      } else if (action.equals("modify_record")) {
        try
        {
          modifyRecord(request, response);
        }
        catch (Exception ex)
        {
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
  protected void changeRatio(HttpServletRequest request, HttpServletResponse response,String courseID)
          throws Exception
  {
    HttpSession session = request.getSession();
    session.removeAttribute("result_set");
    String action = request.getParameter("action");
    System.out.println(action);
    System.out.println(courseID);
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String userId = (String)session.getAttribute("user_name");
    Double ratio= Double.valueOf(request.getParameter("examRatio"));
    System.out.println(userId);
    DbConn conn0 = new DbConn(dbName);
    List aadata = new ArrayList();
    String sql="update course_table set examRatio="+ratio+" where courseID='"+courseID+"'";
    //String sql0="select examRatio from course_table where courseID='"+courseID+"'";
    System.out.println(sql);
    ResultSet rs0 = conn0.executeUpdate(sql);
    conn0.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }

  protected void getBriefRecord(HttpServletRequest request, HttpServletResponse response,String courseID)
    throws Exception
  {
    HttpSession session = request.getSession();
    session.removeAttribute("result_set");
    String action = request.getParameter("action");
    System.out.println(action);
    System.out.println(courseID);
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String userId = (String)session.getAttribute("user_name");
    Double ratio=0.0;
    System.out.println(userId);
    DbConn conn0 = new DbConn(dbName);
    DbConn conn = new DbConn(dbName);
    List aadata = new ArrayList();
    String sql0="select examRatio from course_table where courseID='"+courseID+"'";
    ResultSet rs0 = conn0.executeQuery(sql0);
    while (rs0.next()) {
      ratio = Double.valueOf(rs0.getString("examRatio"));
    }
    rs0.close();
    conn0.close();
    DbConn conn2 = new DbConn(dbName);
    String sql = "select student_info.studentID,studentName from student_course,student_info where courseID='"+courseID+"' and student_course.studentID=student_info.studentID;";
    ResultSet rs = conn.executeQuery(sql);
    while (rs.next())
    {
      List tmp = new ArrayList();
      String studentID=rs.getString("student_info.studentID");
      String studentName=rs.getString("studentName");
      tmp.add(studentID);
      tmp.add(studentName);
      String sql2="select id,classPerformance,examGrades from student_grade " +
              "where studentID='"
              +studentID+"' and courseID='"+courseID+"'";
      System.out.println(sql2);
      ResultSet rs2=conn2.executeQuery(sql2);
      while (rs2.next()) {
        String id= rs2.getString("id");
        String classPerformance = rs2.getString("classPerformance");
        String examGrades = rs2.getString("examGrades");
        String totlaGrade= String.valueOf(Double.valueOf(classPerformance)*(1-ratio)+Double.valueOf(examGrades)*ratio);
        tmp.add(classPerformance);
        tmp.add(examGrades);
        tmp.add(totlaGrade);
        tmp.add(id);
      }
      rs2.close();
      aadata.add(tmp);
    }
    rs.close();
    conn.close();

    conn2.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }
  
  protected void getDetailedRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
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
    while (rs.next())
    {
      List tmp = new ArrayList();
      tmp.add(rs.getString("id"));
      tmp.add(rs.getString("user_id"));
      tmp.add(rs.getString("user_password"));
      tmp.add(rs.getString("title"));
      tmp.add(rs.getString("content"));
      tmp.add(rs.getString("limit_time"));
      tmp.add(rs.getString("status"));
      tmp.add(rs.getString("user_name"));
      tmp.add(rs.getString("type"));
      tmp.add(rs.getString("user_email"));
      tmp.add(rs.getString("priority"));
      tmp.add(rs.getString("class_id"));
      aadata.add(tmp);
    }
    rs.close();
    conn.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }
  
  protected void getQueryRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    HttpSession session = request.getSession();
    session.removeAttribute("result_set");
    String action = request.getParameter("action");
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String keyWord = request.getParameter("key_word");
    String KeyWord1 = request.getParameter("key_word1");
    String sql = "";
    DbConn conn = new DbConn(dbName);
    List aadata = new ArrayList();
    if ((keyWord == "") && (KeyWord1 == "")) {
      sql = "select * from " + tableName1 + " where status='" + "stu" + "'";
    } else {
      sql = "select * from " + tableName1 + " where title='" + keyWord + "' or type= '" + KeyWord1 + "' and status= '" + "stu" + "'";
    }
    ResultSet rs = conn.executeQuery(sql);
    while (rs.next())
    {
      List tmp = new ArrayList();
      tmp.add(rs.getString("id"));
      tmp.add(rs.getString("user_id"));
      tmp.add(rs.getString("user_password"));
      tmp.add(rs.getString("title"));
      tmp.add(rs.getString("content"));
      tmp.add(rs.getString("limit_time"));
      tmp.add(rs.getString("status"));
      tmp.add(rs.getString("user_name"));
      tmp.add(rs.getString("type"));
      tmp.add(rs.getString("user_email"));
      tmp.add(rs.getString("priority"));
      tmp.add(rs.getString("class_id"));
      aadata.add(tmp);
    }
    rs.close();
    conn.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }
  
  protected void getStatisticRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    HttpSession session = request.getSession();
    session.removeAttribute("result_set");
    String action = request.getParameter("action");
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String keyWords = request.getParameter("key_words");
    
    DbConn conn = new DbConn(dbName);
    List aadata = new ArrayList();
    String sql = "select * from " + tableName1 + " where priority='" + keyWords + "' and status= '" + "stu" + "'";
    ResultSet rs = conn.executeQuery(sql);
    while (rs.next())
    {
      List tmp = new ArrayList();
      tmp.add(rs.getString("id"));
      tmp.add(rs.getString("user_id"));
      tmp.add(rs.getString("user_password"));
      tmp.add(rs.getString("title"));
      tmp.add(rs.getString("content"));
      tmp.add(rs.getString("limit_time"));
      tmp.add(rs.getString("status"));
      tmp.add(rs.getString("user_name"));
      tmp.add(rs.getString("type"));
      tmp.add(rs.getString("user_email"));
      tmp.add(rs.getString("priority"));
      tmp.add(rs.getString("class_id"));
      aadata.add(tmp);
    }
    rs.close();
    conn.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }
  
  protected void getSortedRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    HttpSession session = request.getSession();
    String action = request.getParameter("action");
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String orderBy = request.getParameter("order_by");
    DbConn conn = new DbConn(dbName);
    List aadata = new ArrayList();
    String sql = "";
    if (orderBy == null) {
      sql = "select * from " + tableName1;
    } else {
      sql = "select * from " + tableName1 + " order by " + orderBy;
    }
    ResultSet rs = conn.executeQuery(sql);
    while (rs.next())
    {
      List tmp = new ArrayList();
      tmp.add(rs.getString("id"));
      tmp.add(rs.getString("user_id"));
      tmp.add(rs.getString("user_password"));
      tmp.add(rs.getString("title"));
      tmp.add(rs.getString("content"));
      tmp.add(rs.getString("limit_time"));
      tmp.add(rs.getString("status"));
      tmp.add(rs.getString("user_name"));
      tmp.add(rs.getString("type"));
      tmp.add(rs.getString("user_email"));
      tmp.add(rs.getString("priority"));
      tmp.add(rs.getString("class_id"));
      aadata.add(tmp);
    }
    rs.close();
    conn.close();
    session.setAttribute("result_set", aadata);
    postResult(request, response, action, aadata, "成功完成数据库交互", 3);
  }
  
  protected void addRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    HttpSession session = request.getSession();
    String action = request.getParameter("action");
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String title = request.getParameter("title");
    String userName = request.getParameter("user_name");
    String type = request.getParameter("type");
    String content = request.getParameter("content");
    String userEmail = request.getParameter("user_email");
    String priority = request.getParameter("priority");
    String classId = request.getParameter("class_id");
    DbConn conn = new DbConn(dbName);
    String sql = "insert into " + tableName1 + " (title, user_name, type,content,user_email,priority,class_id) values ('" + title + "','" + userName + "','" + type + "','" + content + "','" + userEmail + "','" + priority + "','" + classId + "')";
    conn.executeUpdate(sql);
    conn.close();
    postResult(request, response, action, null, "成功完成数据库交互", 3);
  }
  
  protected void deleteRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
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
  
  protected void modifyRecord(HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    HttpSession session = request.getSession();
    String action = request.getParameter("action");
    String dbName = (String)session.getAttribute("unit_db_name");
    String tableName1 = this.tableName1;
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String userName = request.getParameter("user_name");
    String type = request.getParameter("type");
    String content = request.getParameter("content");
    String userEmail = request.getParameter("user_email");
    String priority = request.getParameter("priority");
    String classId = request.getParameter("class_id");
    DbConn conn = new DbConn(dbName);
    String sql = "update " + tableName1 + " set title='" + title + "', user_name='" + userName + "', type='" + type + "', content='" + content + "', user_email='" + userEmail + "', priority='" + priority + "', class_id='" + classId + "' where id='" + id + "'";
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
  			    if (length_per_record == 12)
  			    {
  			    	final String[] thead = { "用户名", "密码", "姓名", "邮箱", "注册时间", "权限 ", "学号", "修读类型", "联系方式", "籍贯", "班级号" };
  			      writer.GenerateExcel(exportFileName, "学生信息", thead, aadata);
  			    }
  			    else
  			    {
  			    	final String[] thead = { "用户名", "密码", "姓名", "邮箱", "注册时间", "权限 ", "学号", "修读类型", "联系方式", "籍贯", "班级号" };
  			      writer.GenerateExcel(exportFileName, "学生信息", thead, aadata);
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