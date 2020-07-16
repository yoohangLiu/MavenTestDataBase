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
<%@include file="../../coursestu/component/frame_css.jsp"%>
</head>

<body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
<%@include file="../../coursestu/component/frame_header.jsp"%>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<%@include file="../../coursestu/component/frame_sidebar.jsp"%>
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- 开始：这里是页面当前位置的指示  -->
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="../../coursestu/file/coursestu_list.jsp">首页</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>成绩管理</li>
				</ul>
			</div>
			<h3 class="page-title">
			成绩信息查看
			</h3>
			<!-- 结束：这里是页面当前位置的指示  -->
			
			<!-- 开始：这里是页面的主体部分  -->
			<div class="row">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-cogs"></i>成绩信息查看</div>
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
						<div class="clearfix" style="margin-top:10px">
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">已修课程通过率</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="total_pass_rate" name="total_pass_rate" readonly>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">未通过课程数</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="not_pass_course" name="total_credit" readonly>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">已通过课程学分</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="pass_credit" name="pass_credit" readonly>
									</div>
								</div>
							</div>
						</div>

						<div class="clearfix">
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<td>课程名称</td><td>课程号</td><td>课程学分</td><td>平时成绩</td><td>期末考试分数</td><td>总成绩</td>
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
<%@include file="../../coursestu/component/frame_footer.jsp" %>
<%@include file="../../coursestu/component/frame_javascript.jsp" %>
</body>
<!-- END BODY -->
</html>
<script src="../file_js/coursestu_list.js"></script>