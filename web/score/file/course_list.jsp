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
<title>课程信息列表</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
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
					<li>课程成绩管理</li>
				</ul>
			</div>
			<h3 class="page-title">
			课程成绩信息查看
			</h3>
			<!-- 结束：这里是页面当前位置的指示  -->
			
			<!-- 开始：这里是页面的主体部分  -->
			<div class="row">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-cogs"></i>课程成绩信息查看</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<div class="col-md-6">
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
										<td>课程名称</td><td>课程号</td><td>上课时间</td><td>学分</td><td>操作</td>
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
<script src="../file_js/course_list.js"></script>