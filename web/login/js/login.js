$(document).ready(function() { Page.init(); Record.init(); });

var Page = function() {
	var linkBtnEvent = function() {
		$("#teacher_login_submit").click(function() { Record.teacherlogin(); });
		$("#student_login_submit").click(function() { Record.studentlogin(); });
		//$("#register_submit").click(function() { Record.register(); });
	};
	return {
		init:function() { linkBtnEvent(); }
	}
}();

var Record = function() {
	
	return {
		init: function() {},
		teacherlogin: function() {
			var userId = $("#userID").val();
			if(userId.trim()== null) {
				alert("教工号不能为空!");
			}else {
				var url = "../../login_servlet_action?action=get_teacher_info&userID=" + userId;
				$.post(url, function(res) { Record.teacherlogin2(res);                                                   /*+ "&title=" + json.title */
					console.log(url);})
			}

		},
		studentlogin: function() {
			var userId = $("#userID").val();
			if(userId.trim()== null){
				alert("学号不能为空!");
			}else {
				var url = "../../login_servlet_action?action=get_student_info&userID=" + userId;
				$.post(url, function(res) { Record.studentlogin2(res); })
			}
		},


		teacherlogin2: function(res) {
			var json = eval("(" + res + ")");
			if(json.res_code == "0") alert("未找到该教师!");
			else {
				var userPassword = $("#loginPassword").val();
				if(json.loginPassword != userPassword) alert("教工号或密码错误");
				else {
					var url = "http://localhost:8080/login_servlet_action?action=set_session&userID=" + json.userID+ "&status=" + json.status + "&user_table_id=" + json.user_table_id;
					$.post(url, function(){});                                                   /*+ "&title=" + json.title */
					console.log(url);
					window.location.href = "../../course/file/course_list.jsp";
				}
			}
		},
		studentlogin2: function(res) {
			var json = eval("(" + res + ")");
			if(json.res_code == "0") alert("未找到该学生!");
			else {
				var userPassword = $("#loginPassword").val();
				if(json.loginPassword != userPassword) alert("学号或密码错误");
				else {
					var url = "http://localhost:8080/login_servlet_action?action=set_session&userID=" + json.userID + "&status=" + json.status + "&user_table_id=" + json.user_table_id;
					$.post(url, function(){});
					console.log(url);
					window.location.href = "../../coursestu/file/coursestu_list.jsp";
				}
			}
		}

	}
}();
