<%@page contentType="text/html; charset=utf-8"%>
<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
				<li class="start active open" style="margin-top: 30px">
					<a href="javascript:;">
					<i class="icon-home"></i>
					<span class="title">课程管理</span>
					<span class="selected"></span>
					<span class="arrow open"></span>
					</a>
				</li>
				<li>
					<a href="javascript:;">
						<i class="icon-user"></i>
						<span class="title">成绩管理</span>
						<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="../../score/file/course_list.jsp">
								查看课程成绩</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="javascript:;">
						<i class="icon-user"></i>
						<span class="title">公告管理</span>
						<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="../../notice/file/notice_list.jsp">
								查看公告</a>
						</li>
						<li>
							<a href="../../notice/file/notice_add.jsp">
								发布公告</a>
						</li>
					</ul>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>
	<!-- END SIDEBAR -->