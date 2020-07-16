$(document).ready(function() { Record.init(); Page.init() });

var Page = function() {

    var listButtonEvent = function() {
        $("#history_btn").click(function() { Page.pressedHistoryBtn(); });
        $("#submit_btn").click(function() { Page.pressedSubmitBtn(); });
    };

    var parseDetailedRecord = function(res) {
        var json = eval("(" + res + ")");
        var data = json.aadata[0];
        $("#daily_score").attr("value", data[0]);
        $("#test_score").attr("value", data[1]);
    };

    return {
        init: function() { listButtonEvent(); },
        parseDetailedRecord: function(res) { parseDetailedRecord(res); },
        pressedHistoryBtn: function () {
            history.go(-1);
        },
        pressedSubmitBtn: function() {
            if(confirm("是否确认数据无误?")) {
                var studentID = getQueryVariable("studentID");
                var courseID = getQueryVariable("courseID");
                var daily_score = $("#daily_score").val();
                var test_score=$("#test_score").val();
                if(daily_score === "") alert("警告:平时成绩未填写.");
                else if(test_score === "") alert("警告:期末成绩未填写.");
                else {
                    var params = "studentID=" + studentID+"&courseID="+courseID + "&daily_score=" +daily_score + "&test_score=" + test_score ;
                    Record.modifyRecord(params);
                    window.location.href = "course_list.jsp";
                }
            }
        }
    }
}();
function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var urlObj = window.location;
    var r = urlObj.href.indexOf('#') > -1 ? urlObj.hash.split("?")[1].match(reg) : urlObj.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}
var Record = function() {

    var getDetailedRecord = function() {

        var url = "../../course2_servlet_action?action=get_detailed_record&courseID=" +getQueryString("courseID")+"&studentID="+getQueryString("studentID");
        $.post(url, function(res) { Page.parseDetailedRecord(res); });
    };
    var modifyRecord = function(params) {
        var url = "../../course2_servlet_action?action=modify_record2&" + params;
        $.post(url, function(res) {})
    };
    return {
        init: function() { getDetailedRecord();},
        modifyRecord: function(params) { modifyRecord(params); }
    }
}();
