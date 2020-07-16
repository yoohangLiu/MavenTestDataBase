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
		var id = 0;
		var creditsum=0;
    	for(var i = 0; i < aadata.length; i++) {
    		var html = "<tr>";
    		html = html + "<td>" + aadata[i][0] + "</td>";
    		html = html + "<td>" + aadata[i][1] + "</td>";
    		html = html + "<td>" + aadata[i][2] + "</td>";
    		html = html + "<td>" + aadata[i][3] + "</td>";
    		html = html + "<td>" + aadata[i][4] + "</td>";
			html = html + "<td>" + aadata[i][5] + "</td>";
			creditsum+=parseFloat(aadata[i][5]);
    	/*	if(userRole == "stu") html = html + "<td><span class='badge badge-primary'>stu</span></td>";
    		else if(userRole == "teach") html = html + "<td><span class='badge badge-warning'>teach</span></td>";
    		else if(userRole == "manager") html = html + "<td><span class='badge badge-success'>manager</span></td>";
    		else html = html + "<td><span class='badge badge-danger'>undefined</span></td>";*/
    	   html = html + "</tr>";
    		$("#record-list-content").append(html);
    	}
		$("#total_credit").val(creditsum);
    };
    
	return {
		init: function() { linkButtonEvent(); },
        parseBriefRecord: function(res) { parseBriefRecord(res); },
        pressedHistoryBtn: function() { history.go(-1);}
	}
}();

var Record = function() {

	var getBriefRecord = function () {
        var url = "../../student_course_servlet_action?action=get_brief_record";
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };
	return {
		init: function() { getBriefRecord(); }
	}
}();