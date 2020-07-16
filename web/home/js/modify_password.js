$(document).ready(function() { Page.init();Record.init();  });

var Page = function() {
    var linkBtnEvent = function() {
        $("#submit_button").click(function() { Record.changePassword(); });
        $("#cancel_button").click(function() {history.go(-1);});
    };
    return {
        init:function() { linkBtnEvent(); }
    }
}();
var Record = function() {
    return {
        init: function() {},
        changePassword: function() {
            var password1=$("#password_old").val();
            var password2=$("#password").val();
            var password3=$("#password_re").val();
            if(password1.trim()==null) {
                alert("原密码为空，请重新输入!");
            }else if (password2.trim()==null){
                alert("新密码为空，请重新输入!");
            }else if (password3.trim()==null) {
                alert("确认新密码为空，请重新输入!");
            } else if (password3.trim()!==password2.trim()) {
                alert("两个新密码不相等，请重新输入!");
            } else{
                var url="../../user_file_servlet_action?action=get_current_user_record_by_password&old_password="+password1;
                $.post(url, function(res) { Record.changePassword2(res); });
            }
        },
        changePassword2: function(res) {
            console.log(res);
            var json = eval("(" + res + ")");
            if(json.res_code == "0") alert("原密码错误!");
            else {
                var password=$("#password").val();
                var tableID=json.user_table_id;
                var url = "../../user_file_servlet_action?action=change_password&id=" + tableID + "&newPassword=" + password;
                $.post(url, function() { alert("已完成修改密码,请重新登录！"); window.location.href = "../../login/main/login_student.jsp"; });
            }
        }
    }
}();
