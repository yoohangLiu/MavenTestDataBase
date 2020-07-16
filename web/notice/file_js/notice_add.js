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
    var parseDetailedRecord = function(res) {
        var json = eval("(" + res + ")");
        var aadata = json.aadata;
        for(var i = 0; i < aadata.length; i++) {
            var data = json.aadata[i];
            $("#course_id").append("<option>"+data+"</option>");
        }
    };
    return {
        init: function() { linkButtonEvent(); },
        pressedListBtn: function() { window.location.href = "notice_list.jsp"; },
        parseDetailedRecord: function(res) { parseDetailedRecord(res); },
        pressedAddBtn: function() { window.location.href = "notice_add.jsp";
        },
        pressedQueryBtn: function() { window.location.href = "notice_query.jsp"; },
        pressedStatBtn: function() { window.location.href = "notice_statistic.jsp"; },
        pressedHistoryBtn: function() { history.go(-1); },
        pressedSubmitBtn: function() {
            if(confirm("是否确认数据无误?")) {
                var user_id = $("#user_id").val();
                console.log('user_id:',user_id);
                var flag = -1;
                $.ajaxSettings.async = false;
                $.post("../../user_servlet_action?action=check_available&userName=" + user_id, function(res) {
                	console.log(res);
                   var json = eval("(" + res + ")");
                   flag = json.aadata[0];
                });
                $.ajaxSettings.async = true;
           //     var user_password = $("#user_password").val();
                var title = $("#title").val();
                console.log('title:',title);
                var content = $("#content").val();
                console.log('content:',content);               
                var class_id=$("#course_id").val();
                console.log('course_id:',class_id);
                var create_time = $("#create_time").val();
                console.log('create_time:',create_time);
               // var status = $("#status").val();
                if(user_id === "") alert("警告：发布人未填写.");
                else if(title === "") alert("警告:公告标题未填写.");
                else if(content === "") alert("警告:公告内容未填写.");
            //    else if(!(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/).test(content)) alert("警告:用户邮箱非邮箱格式.");
                else if(class_id === "") alert("警告：课程号未填写.");
                else {
                    var params = "userName=" + user_id + "&title=" + title + "&content=" + content  +  "&create_time=" + create_time + "&courseID=" + class_id;
                    console.log(params);
                    Record.addRecord(params);
                    window.location.href = "notice_list.jsp";
                }
            }
        }
    }
}();

var Record = function() {

    var addRecord = function(params) {
        var url = "../../notice2_servlet_action?action=add_record&" + params;
        $.post(url, function(res) {});
    };
    var queryClassID = function() {
        var url = "../../notice2_servlet_action?action=query_classID";
        $.post(url, function(res) { Page.parseDetailedRecord(res); });
    };
    return {
        init: function() {queryClassID();},
        addRecord: function(params) { addRecord(params); },
        /*queryClassID:function () {queryClassID();}*/
    }
}();