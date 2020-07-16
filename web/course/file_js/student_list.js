$(document).ready(function() { Record.init(); Page.init(); });

var Page = function() {

    var linkButtonEvent = function() {
        $("#list_btn").click(function() { Page.pressedListBtn(); });
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
    };

    var parseBriefRecord = function(res) {
        var json = eval("(" + res + ")");
        var aadata = json.aadata;

        $("#record-length").text("当前共查询到" + aadata.length + "条记录");
        $("#record-list-content").empty();
        var courseID=GetQueryString("courseID");
        for(var i = 0; i < aadata.length; i++) {
            var id = aadata[i][5];
           // var userRole = aadata[i][6];
            var html = "<tr>";
            var studentID=aadata[i][0];
            html = html + "<td>" + aadata[i][0] + "</td>";
            html = html + "<td>" + aadata[i][1] + "</td>";
            html = html + "<td>" + aadata[i][2] + "</td>";
            html = html + "<td>" +
                "<a onclick='Page.pressedDetailedBtn("+courseID+"," + studentID + ")' class='btn btn-sm green'><i class='fa fa-edit'>添加成绩</i></a>" +
                "</td>";
            html = html + "</tr>";
            $("#record-list-content").append(html);
        }
    };
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return decodeURI(r[2]);
        return null;
    }
    return {
        init: function() { linkButtonEvent(); },
        parseBriefRecord: function(res) { parseBriefRecord(res); },
        pressedListBtn: function(courseID) { window.location.href = "student_list.jsp?courseID="+courseID; },
        pressedHistoryBtn: function() { history.go(-1); },
        pressedDetailedBtn: function(courseID,studentID) { window.location.href = "score_detailed.jsp?courseID=" + courseID+"&studentID="+studentID; },
        pressedDeleteBtn: function(id) {
            if(confirm("是否确定删除本条记录?")) {
                Record.deleteRecord(id);
                window.location.href = "student_list.jsp";
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
        var url1 = location.search;
        console.log( url1 );
        var theRequest = {};
       var strs = url1.split( "?" );
       theRequest[ strs[ 1 ].split( "=" )[ 0 ] ] = ( strs[ 1 ].split( "=" )[ 1 ] );
       console.log( theRequest );
         var url = "../../student_servlet_action?action=get_brief_record&courseID=" + theRequest[strs[1].split("=" )[0]] ;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };
    var sortRecord = function(order_by) {
        var url = "";
        if(order_by == "0") url = "../../student_servlet_action?action=get_sorted_record";
        else url = "../../student_servlet_action?action=get_sorted_record&order_by=" + order_by;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };

    return {
        init: function(courseID) { getBriefRecord(courseID); },
        sortRecord: function(order_by) { sortRecord(order_by); }
    }
}();