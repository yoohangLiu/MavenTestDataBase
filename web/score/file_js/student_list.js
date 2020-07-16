$(document).ready(function() { Record.init(); Page.init(); });

var Page = function() {

    var linkButtonEvent = function() {
        $("#list_btn").click(function() { Page.pressedListBtn(); });
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
        $("#set_btn").click(function() { var a=parseFloat($("#test_proportion").val());setExamRatio(getQueryString("courseID"),a) });
    };
    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var urlObj = window.location;
        var r = urlObj.href.indexOf('#') > -1 ? urlObj.hash.split("?")[1].match(reg) : urlObj.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }
    function setExamRatio(courseID,a) {
        var url = "../../student_servlet_action2?action=changeRatio&courseID="+courseID+"&examRatio="+a;
        $.post(url, function() {});
        alert("修改成功！");
        return null;
    }
    var parseBriefRecord = function(res) {
        /*var ratio=$("#test_proportion").val();*/
        /*var ratio=obj.options[index].value;*/
        /*console.log(ratio);*/
        var json = eval("(" + res + ")");
        var aadata = json.aadata;
        $("#record-length").text("当前共查询到" + aadata.length + "条记录");
        $("#record-list-content").empty();
        var sumGrades=0;
        var passStudent=0;
        var courseID=getQueryString("courseID");
        for(var i = 0; i < aadata.length; i++) {
            var studentID = aadata[i][0];
            // var userRole = aadata[i][6];
            var html = "<tr>";
            html = html + "<td>" + aadata[i][0] + "</td>";
            html = html + "<td>" + aadata[i][1] + "</td>";
            html = html + "<td>" + aadata[i][2] + "</td>";
            html = html + "<td>" + aadata[i][3] + "</td>";
            html = html + "<td>" + aadata[i][4] + "</td>";
            sumGrades+=parseFloat(aadata[i][4]);
            if (parseFloat(aadata[i][4])>=60){passStudent++;}
            html = html + "<td>" +
                "<a onclick='Page.pressedDetailedBtn("+courseID+"," + studentID + ")' class='btn btn-sm green'><i class='fa fa-edit'>修改</i></a>" +
                "</td>";
            html = html + "</tr>";
            $("#record-list-content").append(html);
        }
        sumGrades=sumGrades/aadata.length;
        $("#course_average").val(sumGrades);
        var passRate=parseFloat(passStudent)/parseFloat(aadata.length);
        $("#pass_rate").val(toPercent(passRate));
    };
    function toPercent(point){
        var str=Number(point*100).toFixed(1);
        str+="%";
        return str;
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
        var theRequest = new Object();
       var strs = url1.split( "?" );
       theRequest[ strs[ 1 ].split( "=" )[ 0 ] ] = ( strs[ 1 ].split( "=" )[ 1 ] );
       console.log( theRequest );
         var url = "../../student_servlet_action2?action=get_brief_record&courseID=" + theRequest[strs[1].split("=" )[0]] ;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };
    var sortRecord = function(order_by) {
        var url = "";
        if(order_by == "0") url = "../../student_servlet_action2?action=get_sorted_record";
        else url = "../../student_servlet_action?action=get_sorted_record&order_by=" + order_by;
        $.post(url, function(res) { Page.parseBriefRecord(res); });
    };

    return {
        init: function(courseID) { getBriefRecord(courseID); },
        sortRecord: function(order_by) { sortRecord(order_by); }
    }
}();