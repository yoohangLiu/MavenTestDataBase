$(document).ready(function () { Record.init(); Page.init(); });

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
        pressedSubmitBtn: function() {
            var key_word = $("#key_word").val();
          /*  var time_from = $("#time_from").val();
            var time_to = $("#time_to").val();
            var t1 = new Date(time_from).getTime();
            var t2 = new Date(time_to).getTime();*/
            if(key_word === "") alert("警告:请填写课程名称.");
            else window.location.href = "course_query_result.jsp?key_word=" + key_word;
      //      else if(t1 > t2) alert("警告:结束时间不能早于开始时间.");
      //      else window.location.href = "course_query_result.jsp?key_word=" + key_word + "&time_from=" + time_from + "&time_to=" + time_to;
        },
        pressedHistoryBtn: function() { history.go(-1); }
    }
}();

var Record = function() {

    return {
        init: function() {}
    }
}();