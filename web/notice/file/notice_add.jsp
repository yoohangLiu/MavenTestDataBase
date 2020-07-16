<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html; charset=utf-8"%>
<%
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String date = format.format(new Date());
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
<title>添加公告</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<script src=../file_js/jedate/jedate.js></script>
<%@include file="../../course/component/frame_css.jsp"%>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
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
					<li>公告管理</li>
				</ul>
			</div>
			<h3 class="page-title">
			添加公告
			</h3>
			<!-- 结束：这里是页面当前位置的指示  -->
			
			<!-- 开始：这里是页面的主体部分  -->
			<div class="row">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-cogs"></i>添加公告</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<div class="col-md-6">
								<a id="list_btn" class="btn btn-circle default"><i class="fa fa-user">查看公告</i></a>
								<a id="history_btn" class="btn btn-circle purple"><i class="fa fa-times"></i>返回上一页</a>
							</div>
						</div>
						<div class="clearfix" style="margin-top:30px">
							<form action="#" class="form-horizontal form-bordered">
								<div class="form-body">
									<div class="form-group">
										<label class="control-label col-md-3"><span style="color:red">*</span>发布人</label>
										<div class="col-md-3">
											<input type="text" id="user_id" class="form-control" placeholder="请输入发布人">
										</div>
									</div>  
									<div class="form-group">
										<label class="control-label col-md-3"><span style="color:red">*</span>公告标题</label>
										<div class="col-md-3">
											<input type="text" id="title" class="form-control" placeholder="请输入公告标题">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3"><span style="color:red">*</span>公告内容</label>
										<div class="col-md-3">
											<input type="text" id="content" class="form-control" placeholder="请输入公告内容">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3"><span style="color:red">*</span>课程号</label>
										<div class="col-md-3">
											<select id="course_id"  class="form-control">
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3"><span style="color:red">*</span>发布时间</label>
										<div class="col-md-3">
											<input type="text" id="create_time" class="form-control" placeholder="请输入发布时间" value="<%=date%>" readonly></div>
											<script>
												jeDate({
                                                	dateCell: "#create_time",
                                                    format: "YYYY-MM-DD hh:mm:ss",
                                                    isTime: true
                                                });
											</script>
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
<script src="../file_js/notice_add.js"></script>