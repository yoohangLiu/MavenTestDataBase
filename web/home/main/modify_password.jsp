<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.text.*"%>
<!DOCTYPE html>
<head>
	<title>管理系统</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@include file="../../home/frame/frame_style.jsp"%>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
<%@include file="../../home/frame/frame_top.jsp"%>
<div class="clearfix"></div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<%@include file="../../home/frame/frame_javascript.jsp"%>
			<!-- BEGIN PAGE CONTENT-->
			<!-- ----------------------------------------页面开始，替换这里即可---------------------------------------- -->
			<div class="row margin-top-20">
				<div class="col-md-3">
					<form class="form-horizontal" role="form" method="post" id="page_form" name="page_form" action="#">
						<div class="form-body">
							<div class="form-group">
								<label class="col-md-3 control-label">原密码</label>
								<div class="col-md-3">
									<input type="text" class="form-control input-inline input-medium" placeholder="请输入原密码" id="password_old" name="password_old">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">新密码</label>
								<div class="col-md-3">
									<input type="text" class="form-control input-inline input-medium" placeholder="请输入新密码" id="password" name="password">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">新密码</label>
								<div class="col-md-3">
									<input type="text" class="form-control input-inline input-medium" placeholder="请再次输入新密码确认" id="password_re" name="password_re">
								</div>
							</div>
						</div>
						<div class="form-actions">
							<div class="row">
								<div class="col-md-offset-3 col-md-9">
									<button type="button" id="submit_button" class="btn btn-circle green">确定</button>
									<button type="button" id="cancel_button" class="btn btn-circle purple" >返回</button>
									</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- ----------------------------------------页面结束，替换上面即可---------------------------------------- -->

			<!-- END PAGE CONTENT-->
		</div>
	</div>

	<!-- END CONTENT -->
	<!--%@include file="../../home/frame/frame_sidebar.jsp"%-->
</div>
<!-- END CONTAINER -->
<%@include file="../../home/frame/frame_ajax_modal.jsp"%>
</body>
</html>
<script src="../js/modify_password.js" type="text/javascript"></script>
