$(document).ready(function() { Record.init(); Page.init() });

var Page = function() {

    var linkButtonEvent = function() {
        $("#list_btn").click(function() { Page.pressedListBtn(); });
        $("#add_btn").click(function() { Page.pressedAddBtn(); });
        $("#query_btn").click(function() { Page.pressedQueryBtn(); });
        $("#stat_btn").click(function() { Page.pressedStatBtn(); });
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
        $("#submit_btn").click(function() { Page.pressedSubmitBtn(); });
    };

    return {
        init: function() { linkButtonEvent(); },
        pressedListBtn: function() { window.location.href = "course_list.jsp"; },
        pressedAddBtn: function() { window.location.href = "course_add.jsp"; },
        pressedQueryBtn: function() { window.location.href = "course_query.jsp"; },
        pressedStatBtn: function() { window.location.href = "course_statistic.jsp"; },
        pressedHistoryBtn: function() { history.go(-1); },
        pressedSubmitBtn: function() {
            if(confirm("是否确认数据无误?")) {
                var user_id = $("#user_id").val();
                var flag = -1;
                $.ajaxSettings.async = false;
                $.post("../../course_servlet_action?action=check_available&user_name=" + user_id, function(res) {
                	console.log(res);
                   var json = eval("(" + res + ")");
                   flag = json.aadata[0];
                });
                $.ajaxSettings.async = true;
               
                var content = $("#content").val();
                var create_time = $("#create_time").val();
                var class_time = $("#class_time").val();
                var credit = $("#credit").val();
                
                if(user_id === "") alert("警告:授课教师未填写.");
                else if(content === "") alert("警告:课程名称未填写.");
                else if(class_time === "") alert("警告:上课时间未填写.");
                else if(credit === "") alert("警告:学分未填写.");
                else {
                    var params = "user_id=" + user_id + "&content=" + content + "&create_time=" + create_time + "&class_time=" + class_time +
                        "&credit=" + credit ;
                    console.log(params);
                    Record.addRecord(params);
                    window.location.href = "course_list.jsp";
                }
            }
        }
    }
}();

var Record = function() {

    var addRecord = function(params) {
        var url = "../../course_servlet_action?action=add_record&" + params;
        $.post(url, function(res) {});
    };

    return {
        init: function() {},
        addRecord: function(params) { addRecord(params); }
    }
}();