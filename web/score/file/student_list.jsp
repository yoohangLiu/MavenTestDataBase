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
	<title>学生信息列表</title>
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
					<li>学生成绩信息</li>
				</ul>
			</div>
			<h3 class="page-title">
				学生成绩信息查看
			</h3>
			<!-- 结束：这里是页面当前位置的指示  -->

			<!-- 开始：这里是页面的主体部分  -->
			<div class="row">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-cogs"></i>学生成绩信息查看</div>
					</div>
					<div class="portlet-body">
						<div class="clearfix">
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">期末考试比例</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="test_proportion" name="student_name">
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<a id="set_btn" class="btn btn-circle red"><i class="fa fa-edit">设置比例</i></a>
								<a id="history_btn" class="btn btn-circle purple"><i class="fa fa-times"></i>返回上一页</a>
							</div>
						</div>
						<div class="clearfix" style="margin-top:10px">
							<strong>
								<div class="alert alert-info" id="record-length"></div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label col-md-3">课程平均分</label>
										<div class="col-md-9">
											<input type="text" class="form-control" id="course_average" name="course_avg" readonly>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label col-md-3">课程及格率</label>
										<div class="col-md-9">
											<input type="text" class="form-control" id="pass_rate" name="pass_rate" readonly>
										</div>
								    </div>
								</div>
							</strong>
						</div>
						<div class="clearfix">
							<table class="table table-bordered table-striped">
								<thead>
								<tr>
									<td>学号</td><td>学生姓名</td><td>课堂表现</td><td>期末考试分数</td><td>总成绩</td><td>操作</td>
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
<script src="../file_js/student_list.js"></script>