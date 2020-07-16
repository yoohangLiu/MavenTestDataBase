<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>公告信息列表</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
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
			公告信息查看 <small>公告增添</small>
			</h3>
			<!-- 结束：这里是页面当前位置的指示  -->
			
			<!-- 开始：这里是页面的主体部分  -->
			<div class="row">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-cogs"></i>公告信息查看</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<div class="col-md-6">
								<a id="add_btn" class="btn btn-circle green"><i class="fa fa-plus">增添公告</i></a>
								<a id="history_btn" class="btn btn-circle purple"><i class="fa fa-times"></i>返回上一页</a>
							</div>
						</div>
						<div class="clearfix" style="margin-top:10px">
							<strong>
							<div class="alert alert-info" id="record-length"></div>
							</strong>
						</div>
						<div class="clearfix">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<td>发布人</td><td>公告标题</td><td>公告内容</td><td>发布时间</td><td>课程号</td><td>操作</td>
									</tr>
								</thead>
								<tbody id="record-list-content"></tbody>
							</table>
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
<script src="../file_js/notice_list.js"></script>