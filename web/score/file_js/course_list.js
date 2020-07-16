$(document).ready(function() { Record.init(); Page.init(); });

var Page = function() {
	
	var linkButtonEvent = function() {
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
    };
	
    var parseBriefRecord = function(res) {
    	var json = eval("(" + res + ")");
    	var aadata = json.aadata;
    	$("#record-length").text("当前共查询到" + aadata.length + "条记录");
    	$("#record-list-content").empty();
        var id=0;
        var courseID;
        var creditsum=0;
    	for(var i = 0; i < aadata.length; i++) {
    		id++;
    		//var userRole = aadata[i][6];
    		var html = "<tr>";
    		html = html + "<td>" + aadata[i][0] + "</td>";
    		html = html + "<td>" + aadata[i][1] + "</td>";
    		courseID=aadata[i][1];
            html = html + "<td>" + aadata[i][2] + "</td>";
    		html = html + "<td>" + aadata[i][3] + "</td>";
    		/*html = html + "<td>" + aadata[i][4] + "</td>";*/
            creditsum+=aadata[i][4];
    		html = html + "<td>" +
    				"<a onclick='Page.pressedDetailedBtn(" + courseID + ")' class='btn btn-sm green'><i class='fa fa-edit'>查看学生成绩信息</i></a>" +
    				"</td>";
    		html = html + "</tr>";
    		$("#record-list-content").append(html);
    	}
    };
    
	return {
		init: function() { linkButtonEvent(); },
        parseBriefRecord: function(res) { parseBriefRecord(res); },
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
        pressedDetailedBtn: function(id) { window.location.href = "student_list.jsp?courseID=" + id; },
        pressedDeleteBtn: function(id) {
            if(confirm("是否确定删除本条记录?")) {
                Record.deleteRecord(id);
                window.location.href = "course_list.jsp";
            }
        },
        changeSortBtn: function() {
            var order_by = $("#order_by").val();
            Record.sortRecord(order_by);
        }
	}
}();

var Record = function() {
	
	var getBriefRecord = function () {
        var url = "../../course2_servlet_action?action=get_brief_record";
        $.post(url, function(res) { Page.parseBriefRecord(res); });
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
    var sortRecord = function(order_by) {
        var url = "";
        if(order_by == "0") url = "../../course_servlet_action?action=get_sorted_record";
        else url = "../../course_servlet_action?action=get_sorted_record&order_by=" + order_by;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };
	
	return {
		init: function() { getBriefRecord(); },
        deleteRecord: function(id) { deleteRecord(id); },
        exportRecord: function() { exportRecord(); },
        sortRecord: function(order_by) { sortRecord(order_by); }
	}
}();