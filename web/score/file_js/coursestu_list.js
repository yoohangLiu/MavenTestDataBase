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
    	var notPassCourse=0;
    	var Passcredit=0;
    	for(var i = 0; i < aadata.length; i++) {
    		var html = "<tr>";
    		html = html + "<td>" + aadata[i][0] + "</td>";
    		html = html + "<td>" + aadata[i][1] + "</td>";
            html = html + "<td>" + aadata[i][5] + "</td>";
            html = html + "<td>" + aadata[i][2] + "</td>";
    		html = html + "<td>" + aadata[i][3] + "</td>";
    		var totolGrade=parseFloat(aadata[i][4])*parseFloat(aadata[i][3])+(1-parseFloat(aadata[i][4]))*parseFloat(aadata[i][2]);
    		if (totolGrade<60){
    		    notPassCourse=parseFloat("1")+notPassCourse;
            }if (totolGrade>=60){
                Passcredit=parseFloat(aadata[i][5])+Passcredit;
            }
            html = html + "<td>" + totolGrade+ "</td>";
    		html = html + "</tr>";
    		$("#record-list-content").append(html);
    	}
    	$("#total_pass_rate").val(toPercent((aadata.length-notPassCourse)/aadata.length));
    	$("#not_pass_course").val(notPassCourse);
        $("#pass_credit").val(Passcredit);
    };
    function toPercent(point){
        var str=Number(point*100).toFixed(1);
        str+="%";
        return str;
    }
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
        var url = "../../student_grade_servlet_action?action=get_brief_record";
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };

    var exportRecord = function() {
        var url = "../../student_grade_servlet_action?action=export_record";
        $.post(url, function (res) {
            var json = eval("(" + res + ")");
            var path = json.aadata[0];
            window.open("../../../upload/xm04-teach/export_" + path);
        });
    };
    var sortRecord = function(order_by) {
        var url = "";
        if(order_by == "0") url = "../../student_grade_servlet_action?action=get_sorted_record";
        else url = "../../student_grade_servlet_action?action=get_sorted_record&order_by=" + order_by;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };
	
	return {
		init: function() { getBriefRecord(); },
        deleteRecord: function(id) { deleteRecord(id); },
        exportRecord: function() { exportRecord(); },
        sortRecord: function(order_by) { sortRecord(order_by); }
	}
}();