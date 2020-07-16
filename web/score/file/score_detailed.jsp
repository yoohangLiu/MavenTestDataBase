<%@page contentType="text/html; charset=utf-8"%>
<%
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>修改分数信息</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <script src=../file_js/jedate/jedate.js></script>
    <%@include file="../../course/component/frame_css.jsp"%>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
<%@include file="../../course/component/frame_header.jsp"%>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <%@include file="../../course/component/frame_sidebar.jsp"%>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- 开始：这里是页面当前位置的指示  -->
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <a href="../../course/file/course_list.jsp">首页</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>课程管理</li>
                </ul>
            </div>
            <h3 class="page-title">
                分数详情 <small>分数明细</small>
            </h3>
            <!-- 结束：这里是页面当前位置的指示  -->

            <!-- 开始：这里是页面的主体部分  -->
            <div class="row">
                <div class="portlet box blue">
                    <div class="portlet-title">
                        <div class="caption"><i class="fa fa-cogs"></i>分数详情</div>
                    </div>
                    <div class="portlet-body">
                        <div class="clearfix">
                            <div class="col-md-6">
                                <a id="history_btn" class="btn btn-circle purple"><i class="fa fa-times"></i>返回上一页</a>
                            </div>
                        </div>
                        <form class="clearfix" style="margin-top:30px">
                            <div action="#" class="form-horizontal form-bordered">
                                <input type="hidden" id="id" value="<%=id%>">
                                <div class="form-body">
                                    <input type="hidden" id="history_name">
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><span style="color:#ff0000">*</span>平时成绩（考勤+作业）</label>
                                        <div class="col-md-3">
                                            <input type="text" id="daily_score" class="form-control" placeholder="请输入平时成绩">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><span style="color:red">*</span>期末考核</label>
                                        <div class="col-md-3">
                                            <input type="text" id="test_score" class="form-control" placeholder="请输入期末考核成绩"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3"><span style="color:red">*</span>总成绩</label>
                                        <div class="col-md-3">
                                            <input type="text" id="total_score" class="form-control" placeholder="请输入总成绩" readonly></div>
                                    </div>
                                </div>
                        </div>
                        <div class="form-actions right">
                            <button id="submit_btn" type="button" class="btn blue"><i class="fa fa-check"></i>提交</button>
                            <button type="reset" class="btn blue">重置</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- 结束:这里是页面的主体部分 -->
    </div>
</div>
<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<%@include file="../../course/component/frame_footer.jsp" %>
<%@include file="../../course/component/frame_javascript.jsp" %>
</body>
<!-- END BODY -->
</html>
<script src="../file_js/score_detailed.js"></script>