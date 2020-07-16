<%--  这里是左侧导航栏的基类  --%>
<%@page contentType="text/html; charset=UTF-8"%>
<meta charset="utf-8" />
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
	<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	<div class="page-sidebar navbar-collapse collapse">
		<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
			<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
			<li class="sidebar-toggler-wrapper">
				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				<div class="sidebar-toggler">
				</div>
				<!-- END SIDEBAR TOGGLER BUTTON -->
			</li>
			<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->

			<li>
				<a href="javascript:;">
					<i class="icon-user"></i>
					<span class="title">课程管理</span>
					<span class="arrow "></span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="../../course/file/course_list.jsp">
							课程列表</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="javascript:;">
					<i class="icon-user"></i>
					<span class="title">成绩查看</span>
					<span class="arrow "></span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="../../coursestu/file/course_list.jsp">
							查看成绩</a>
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
						<a href="../../notice2/file/notice2_list.jsp">
							查看公告</a>
					</li>
					<li>
						<a href="../../notice2/file/notice2_add.jsp">
							发布公告</a>
					</li>
				</ul>
			</li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<!-- END SIDEBAR -->