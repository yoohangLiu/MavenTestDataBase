<%@page contentType="text/html; charset=utf-8"%>
<%
    String tdid = request.getParameter("tdid");
    if(tdid == null) tdid = "欢迎使用XM14上传功能";
    String tname = request.getParameter("tname");
    if(tname == null) tname = "欢迎使用XM14上传功能";
    String tdname = request.getParameter("tdname");
    if(tdname == null) tdname = "欢迎使用XM14上传功能";
    String fname = request.getParameter("fname");
    if(fname == null) fname = "欢迎使用XM14上传功能";
    String fpath = request.getParameter("fpath");
    if(fpath == null) fpath = "欢迎使用XM14上传功能";
    String msg = request.getParameter("msg");
    if(msg == null) msg = "请按提示信息完成对应操作.";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../../assert/back_global/images/favicon.png">
    <title>Trip Fun - 文件上传</title>
    <link href="../../assert/back_global/css/style.css" rel="stylesheet">
</head>

<body class="header-fix fix-sidebar">
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <div class="unix-login">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-4">
                        <div class="login-content card" style="margin-top: 30px">
                            <div class="login-form">
                                <h4><strong>Trip Fun文件上传页面</strong></h4>
                                <div class="alert alert-primary alert-dismissible fade show">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <strong><%=msg%></strong>
                                </div>
                                <form action="../../upload_servlet_action" enctype="multipart/form-data" method="post">
                                    <div class="form-group">
                                        <label>数据表名</label><input type="text" class="form-control" placeholder="数据表名" name="tname" value="<%=tname%>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>数据字段名</label><input type="text" class="form-control" placeholder="数据字段名" name="tdname" value="<%=tdname%>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>字段ID</label><input type="text" class="form-control" placeholder="字段ID" name="tdid" value="<%=tdid%>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>最终文件名称</label><input type="text" class="form-control" placeholder="最终文件名称" name="fname" value="<%=fname%>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label>最终文件目录</label><input type="text" class="form-control" placeholder="最终文件路径" name="fpath" value="<%=fpath%>" readonly>
                                    </div>
                                    请选择文件: <input type="file" name="file1"><br>
                                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">提交</button>
                                </form>
                                <button class="btn btn-primary btn-flat m-b-30 m-t-30" onclick="javascript:history.go(-2)">返回页面</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Wrapper -->

    <!-- All Jquery -->
    <script src="../../assert/back_global/js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assert/back_global/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="../../assert/back_global/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../../assert/back_global/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="../../assert/back_global/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="../../assert/back_global/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../../assert/back_global/js/custom.min.js"></script>
</body>
</html>