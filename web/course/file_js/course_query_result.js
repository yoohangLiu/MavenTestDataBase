$(document).ready(function () { Record.init(); Page.init(); });

var Page = function () {

    var linkButtonEvent = function() {
        $("#list_btn").click(function() { Page.pressedListBtn(); });
        $("#add_btn").click(function() { Page.pressedAddBtn(); });
        $("#query_btn").click(function() { Page.pressedQueryBtn(); });
        $("#stat_btn").click(function() { Page.pressedStatBtn(); });
        $("#expo_btn").click(function() { Page.pressedExpoBtn(); });
        $("#print_btn").click(function() { Page.pressedPrintBtn(); });
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
    };

    var parseQueryRecord = function(res) {
    	console.log(res);
    	var json = eval("(" + res + ")");
    	var aadata = json.aadata;
    	$("#record-length").text("当前共查询到" + aadata.length + "条记录");
    	$("#record-list-content").empty();
    	for(var i = 0; i < aadata.length; i++) {
    		var id = aadata[i][0];
    	//	var userRole = aadata[i][6];
    		var html = "<tr>";
    		html = html + "<td>" + aadata[i][1] + "</td>";
    		html = html + "<td>" + aadata[i][2] + "</td>";
    		html = html + "<td>" + aadata[i][3] + "</td>";
    		html = html + "<td>" + aadata[i][4] + "</td>";
    		html = html + "<td>" + aadata[i][5] + "</td>";
    		html = html + "<td>" +
    				"<a onclick='Page.pressedDeleteBtn(" + id + ")' class='btn btn-sm red'><i class='fa fa-times'>删除</i></a>" +
    				"<a onclick='Page.pressedDetailedBtn(" + id + ")' class='btn btn-sm green'><i class='fa fa-edit'>修改详细信息</i></a>" +
    				"</td>";
    		html = html + "</tr>";
    		$("#record-list-content").append(html);
    	}
    };

    return {
        init: function() { linkButtonEvent(); },
        parseQueryRecord: function(res) { parseQueryRecord(res); },
        pressedListBtn: function() { window.location.href = "course_list.jsp"; },
        pressedAddBtn: function() { window.location.href = "course_add.jsp"; },
        pressedQueryBtn: function() { window.location.href = "course_query.jsp"; },
        pressedStatBtn: function() { window.location.href = "course_statistic.jsp"; },
        pressedExpoBtn: function() {
        	if(confirm("是否确认导出?")) {
                Record.exportRecord();
                alert("已开始下载导出文件.");
            }
        },
        pressedPrintBtn: function() { window.location.href = "course_print.jsp"; },
        pressedHistoryBtn: function() { history.go(-1); },
        pressedDetailedBtn: function(id) { window.location.href = "student_list.jsp?id=" + id; },
        pressedDeleteBtn: function(id) {
            if(confirm("是否确定删除本条记录?")) {
                Record.deleteRecord(id);
                window.location.href = window.location.href;
            }
        }
    }
}();

var Record = function() {

    var getQueryRecord = function () {
        var url = "../../course_servlet_action?action=get_query_record&key_word=" + $("#key_word").val() + "&time_from=" + $("#time_from").val() + "&time_to=" + $("#time_to").val();
        $.post(url, function (res) { Page.parseQueryRecord(res); });
    };

    var deleteRecord = function (id) {
        var url = "../../course_servlet_action?action=delete_record&id=" + id;
        $.post(url, function (res) {});
    };

    var exportRecord = function() {
        var url = "../../course_servlet_action?action=export_record";
        $.post(url, function (res) {
            var json = eval("(" + res + ")");
            var path = json.aadata[0];
            window.open("../../../upload/xm04-teach/export_" + path);
        });
    };
    return {
        init: function() { getQueryRecord(); },
        deleteRecord: function(id) { deleteRecord(id); },
        exportRecord: function() { exportRecord(); }
    }
}();