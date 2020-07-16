package notice2;

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


public class StudentNoticeServletAction extends HttpServlet {
	
	private String tableName1 = "notice_file";
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        Object userRole = session.getAttribute("user_role");
        if(userRole == null) {
            try {
                postResult(request, response, null, null, "閻€劍鍩泂ession鏉╁洦婀�, 鐠囩兘鍣搁弬鎵瑜帮拷", 0);
            } catch(Exception ex) {
                ex.printStackTrace();
            }
        } else {
        	String action = request.getParameter("action");
            if(action == null) {
                try {
                    postResult(request, response, null, null, "閸撳秶顏导鐘虫降閻ㄥ垷ction娑撹櫣鈹�, 鐠囬攱顥呴弻顧怱娑撶挄ecord缁粯妲搁崥锕�褰傞柅浣诡劀绾喛顕Ч锟�", 1);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            } else if(action.equals("get_brief_record")) {
                try {
                    getBriefRecord(request, response);
                } catch(Exception ex) {
                    ex.printStackTrace();
                }
            }  else {
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
        String userID = (String) session.getAttribute("userID");
        String tableName1 = this.tableName1;
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        String sql = "select notice_file.courseID,courseName, publisherName,title,content,create_time,student_course.courseID" +
                " from notice_file,student_course,course_table " +
                " where student_course.studentID='"+userID+
                "' and student_course.courseID=notice_file.courseID and student_course.courseID=course_table.courseID";
        System.out.println("getBriefRecord(sql):" + sql);
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            tmp.add(rs.getString("notice_file.courseID"));
            tmp.add(rs.getString("courseName"));
            tmp.add(rs.getString("publisherName"));
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("student_course.courseID"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "数据获取成功", 3);
	}

	protected void getQueryRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String keyWord = request.getParameter("key_word");
        Object userId = session.getAttribute("user_id");
        System.out.println(userId);

    //    String timeFrom = request.getParameter("time_from");
    //    String timeTo = request.getParameter("time_to");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
        //String sql = "select * from " + tableName1 + " where user_id='" + keyWord + "' and create_time between '" + timeFrom + "' and '" + timeTo + "'";
      //  String sql = "select * from " + tableName1 + " where user_id='"  + userId + "' and class_id='" + keyWord + "'";
        String sql = "select * from " + tableName1 + " where  class_id='" + keyWord + "'";
        ResultSet rs = conn.executeQuery(sql);
        while(rs.next()) {
            List tmp = new ArrayList();
            
            tmp.add(rs.getString("id"));
            /* tmp.add(rs.getString("user_id"));
            tmp.add(rs.getString("sign_time"));
            tmp.add(rs.getString("sign_ip"));
            tmp.add(rs.getString("lesson_id"));*/
            
            tmp.add(rs.getString("user_id"));           
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_id"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "閹存劕濮涚�瑰本鍨氶弫鐗堝祦鎼存挷姘︽禍锟�", 3);
	}
	
	protected void getStatisticRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        session.removeAttribute("result_set");
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        Object userId = session.getAttribute("user_id");
        System.out.println(userId);
        String tableName1 = this.tableName1;
        String timeFrom = request.getParameter("time_from");
        String timeTo = request.getParameter("time_to");
        DbConn conn = new DbConn(dbName);
        List aadata = new ArrayList();
      //  String sql = "select * from " + tableName1 + " where user_id='" + userId + "' and create_time between '" + timeFrom + "' and '" + timeTo + "'";
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
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_id"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "閹存劕濮涚�瑰本鍨氶弫鐗堝祦鎼存挷姘︽禍锟�", 3);
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
            tmp.add(rs.getString("title"));
            tmp.add(rs.getString("content"));
            tmp.add(rs.getString("create_time"));
            tmp.add(rs.getString("class_id"));
            aadata.add(tmp);
        }
        rs.close();
        conn.close();
        session.setAttribute("result_set", aadata);
        postResult(request, response, action, aadata, "閹存劕濮涚�瑰本鍨氶弫鐗堝祦鎼存挷姘︽禍锟�", 3);
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
        
        String publisherName = request.getParameter("userName");
        String userId = (String) session.getAttribute("userID");
        System.out.println(publisherName);
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String createTime = request.getParameter("create_time");
        String courseID = request.getParameter("courseID");
        DbConn conn = new DbConn(dbName);
       // String sql="insert into"+tableName1+"(user_id,sign_time,sign_ip,lesson_id) values('"+ userId + "','" + signTime + "','" + signIp + "','" + lessonId + "')";
         String sql = "insert into " + tableName1 + " (userID, publisherName, title, content, create_time, courseID) values ('" +userId+"','"+ publisherName + "','" + title + "','" + content + "','" + createTime + "','" + courseID + "')";
        System.out.println("add(sql):" + sql);
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "添加操作成功！", 3);
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
        postResult(request, response, action, null, "删除操作成功！", 3);
	}
	
	protected void modifyRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String dbName = (String)session.getAttribute("unit_db_name");
        String tableName1 = this.tableName1;
        String id = request.getParameter("id");
        System.out.println("modify(id):" + id);
        String publisherName = request.getParameter("user_id");
        String userID= (String) session.getAttribute("userID");
      //  Object userId = session.getAttribute("user_id");
        System.out.println(publisherName);
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String createTime = request.getParameter("create_time");
        String courseId = request.getParameter("course_id");
        DbConn conn = new DbConn(dbName);
     //   String sql = "update " + tableName1 + " set user_id='" + userId + "', sign_time='" + signTime + "', sign_ip='" + signIp + "',  lesson_id='" + lessonId + "' where id='" + id + "'";
        String sql = "update " + tableName1 + " set userID='" + userID + "', publisherName='"+publisherName+"', title='" + title + "', content='" + content + "',  create_time='" + createTime + "',  courseID='" + courseId + "' where id='" + id + "'";
        System.out.println("modify(sql):" + sql);
        conn.executeUpdate(sql);
        conn.close();
        postResult(request, response, action, null, "修改公告信息成功！", 3);
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
			    if (length_per_record == 6)
			    {
			    	final String[] thead = { "发布人", "公告标题", "", "公告内容", "发布时间", "班级号"};
			      writer.GenerateExcel(exportFileName, "公告信息", thead, aadata);
			    }
			    else
			    {
			    	final String[] thead = { "发布人", "公告标题", "", "公告内容", "发布时间", "班级号"};
			      writer.GenerateExcel(exportFileName, "公告信息", thead, aadata);
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