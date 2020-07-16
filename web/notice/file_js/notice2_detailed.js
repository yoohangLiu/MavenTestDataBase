$(document).ready(function() { Record.init(); Page.init();});

var Page = function() {

    var listButtonEvent = function() {
        $("#list_btn").click(function() { Page.pressedListBtn(); });
        $("#add_btn").click(function() { Page.pressedAddBtn(); });
        $("#query_btn").click(function() { Page.pressedQueryBtn(); });
        $("#stat_btn").click(function() { Page.pressedStatBtn(); });
        $("#expo_btn").click(function() { Page.pressedExpoBtn(); });
        $("#print_btn").click(function() { Page.pressedPrintBtn(); });
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
        $("#submit_btn").click(function() { Page.pressedSubmitBtn(); });
    };

    var parseDetailedRecord = function(res) {
        var json = eval("(" + res + ")");
        var data = json.aadata[0];
        
        $("#user_id").attr("value", data[1]);
        $("#title").attr("value", data[2]);
        $("#content").attr("value", data[3]);
        $("#create_time").attr("value", data[4]);
        $("#course_id").attr("value", data[5]);
    };

    return {
        init: function() { listButtonEvent(); },
        parseDetailedRecord: function(res) { parseDetailedRecord(res); },
        pressedListBtn: function() { window.location.href = "notice_list.jsp"; },
        pressedAddBtn: function() { window.location.href = "notice_add.jsp"; },
        pressedQueryBtn: function() { window.location.href = "notice_query.jsp"; },
        pressedStatBtn: function() { window.location.href = "notice_statistic.jsp"; },
        pressedExpoBtn: function() {
        	if(confirm("是否确认导出?")) {
                Record.exportRecord();
                alert("已开始下载导出文件.");
            }
        },
        pressedPrintBtn: function() { window.location.href = "notice_print.jsp"; },
        pressedHistoryBtn: function() { history.go(-1); },
        pressedSubmitBtn: function() {
            if(confirm("是否确认数据无误?")) {
            	var id = $("#id").val();
            	var user_id = $("#user_id").val();
            	var title=$("#title").val();
                var content=$("#content").val();
                var course_id=$("#course_id").val();
                var flag = -1;
                if(user_id === "") alert("警告:发布人未填写.");
                else if(title === "") alert("警告:公告标题未填写.");
                else if(content === "") alert("警告:公告内容未填写.");
                else if(course_id === "") alert("警告:班级号未填写.");
                else {
                	 var params = "id=" + id + "&user_id=" + user_id + "&title=" + title + "&content=" + content  + "&course_id=" + course_id;
                	 Record.modifyRecord(params);
                    window.location.href = "notice_list.jsp";
                }
            }
        }
    }
}();

var Record = function() {

    var getDetailedRecord = function() {
        var url = "../../notice2_servlet_action?action=get_detailed_record&id=" + $("#id").val();
        $.post(url, function(res) { Page.parseDetailedRecord(res); });
    };

    var modifyRecord = function(params) {
        var url = "../../notice2_servlet_action?action=modify_record&" + params;

        $.post(url, function(res) {})
    };

    var exportRecord = function() {
        var url = "../../notice2_servlet_action?action=export_record";
        $.post(url, function (res) {
            var json = eval("(" + res + ")");
            var path = json.aadata[0];
            window.open("../../../upload/xm04-teach/export_" + path);
        });
    };
    return {
        init: function() { getDetailedRecord(); },
        modifyRecord: function(params) { modifyRecord(params); },
        exportRecord: function() { exportRecord(); }
    }
}();
