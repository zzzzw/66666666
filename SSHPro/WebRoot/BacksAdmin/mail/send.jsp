<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8" />
    <title>AirPlane| searcPlane</title>
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/animate.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/style-responsive.min.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
    <!-- ================== END BASE CSS STYLE ================== -->
    <!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-calendar/css/bootstrap_calendar.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
    <link href="<%=basePath %>/BacksAdmin/assets/plugins/morris/morris.css" rel="stylesheet" />
    
   
    <!-- ================== END PAGE LEVEL CSS STYLE ================== -->
    <!-- ================== BEGIN BASE JS ================== -->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/pace/pace.min.js"></script>
  
    
    
   
    <!-- ================== END BASE JS ================== -->
</head>
<body>
    <!-- begin #page-loader -->
    <div id="page-loader" class="fade in">
        <span class="spinner"></span>
    </div>
    <!-- end #page-loader -->
    <!-- begin #page-container -->
    <div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
        <!-- begin #header -->
        <div id="header" class="header navbar navbar-default navbar-fixed-top">
            <!-- begin container-fluid -->
            <div class="container-fluid">
                <!-- begin mobile sidebar expand / collapse button -->
                <div class="navbar-header">
                    <a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>Color Admin</a>
                    <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                        </span>
                    </button>
                </div>
                <!-- end mobile sidebar expand / collapse button -->
                <!-- begin header navigation right -->
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <form class="navbar-form full-width">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Enter keyword" />
                            <button type="submit" class="btn btn-search">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                        </form>
                    </li>
                    <li class="dropdown"><a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
                        <i class="fa fa-bell-o"></i><span class="label">5</span> </a>
                        <ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">Notifications (5)</li>
                            <li class="media"><a href="javascript:;">
                                <div class="media-left">
                                    <i class="fa fa-bug media-object bg-red"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="media-heading">
                                        Server Error Reports</h6>
                                    <div class="text-muted f-s-11">
                                        3 minutes ago</div>
                                </div>
                            </a></li>
                            <li class="media"><a href="javascript:;">
                                <div class="media-left">
                                    <img src="<%=basePath %>/BacksAdmin/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                <div class="media-body">
                                    <h6 class="media-heading">
                                        John Smith</h6>
                                    <p>
                                        Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                    <div class="text-muted f-s-11">
                                        25 minutes ago</div>
                                </div>
                            </a></li>
                            <li class="media"><a href="javascript:;">
                                <div class="media-left">
                                    <img src="<%=basePath %>/BacksAdmin/assets/img/user-2.jpg" class="media-object" alt="" /></div>
                                <div class="media-body">
                                    <h6 class="media-heading">
                                        Olivia</h6>
                                    <p>
                                        Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                    <div class="text-muted f-s-11">
                                        35 minutes ago</div>
                                </div>
                            </a></li>
                            <li class="media"><a href="javascript:;">
                                <div class="media-left">
                                    <i class="fa fa-plus media-object bg-green"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="media-heading">
                                        New User Registered</h6>
                                    <div class="text-muted f-s-11">
                                        1 hour ago</div>
                                </div>
                            </a></li>
                            <li class="media"><a href="javascript:;">
                                <div class="media-left">
                                    <i class="fa fa-envelope media-object bg-blue"></i>
                                </div>
                                <div class="media-body">
                                    <h6 class="media-heading">
                                        New Email From John</h6>
                                    <div class="text-muted f-s-11">
                                        2 hour ago</div>
                                </div>
                            </a></li>
                            <li class="dropdown-footer text-center"><a href="javascript:;">View more</a> </li>
                        </ul>
                    </li>
                    <li class="dropdown navbar-user"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<%=basePath %>/BacksAdmin/assets/img/user-13.jpg" alt="" />
                        <span class="hidden-xs">Adam Schwartz</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu animated fadeInLeft">
                            <li class="arrow"></li>
                            <li><a href="javascript:;">Edit Profile</a></li>
                            <li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
                            <li><a href="javascript:;">Calendar</a></li>
                            <li><a href="javascript:;">Setting</a></li>
                            <li class="divider"></li>
                            <li><a href="javascript:;">Log Out</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- end header navigation right -->
            </div>
            <!-- end container-fluid -->
        </div>
        <!-- end #header -->
        <!-- begin #sidebar -->
       <div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<div class="image">
							<a href="javascript:;"><img src="assets/img/user-13.jpg" alt="" /></a>
						</div>
						<div class="info">
							Sean Ngu
							<small>Front end developer</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">导航</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-home"></i>
						    <span>首页</span>
					    </a>
						<ul class="sub-menu">
						
						    <li class="active"><a href="<%=basePath%>/BacksAdmin/index.jsp">主控面板</a></li>
						   
						</ul>
					</li>
					<li class="has-sub active">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-file-o"></i>
						    <span >购票管理</span>
					    </a>
						<ul class="sub-menu">
						    <li class="active"><a href="<%=basePath%>/BacksAdmin/flight/chapiao.jsp">在线购票</a></li>
						    <li><a href="<%=basePath%>/BacksAdmin/order_approve/list.jsp">订单审核</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-newspaper-o"></i>
						    <span>航空公司管理</span>
					    </a>
						<ul class="sub-menu">
						   		<li>
									<a href="<%=basePath%>/BacksAdmin/aircompany/search.jsp">查询</a>
								</li>
								<li class="active">
									<a href="<%=basePath%>/BacksAdmin/aircompany/add.jsp">添加</a>
								</li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-user"></i>
						    <span>人员管理</span>
					    </a>
						<ul class="sub-menu">
						   <li ><a href="employee!A.action">录入员工信息</a></li>
						    <li><a href="employee!Find.action">删除员工信息</a></li>
						     <li ><a href="employee!Find1.action">修改员工信息</a></li>
						    <li><a href="employee!Find2.action">查询员工信息</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-calendar-o"></i>
						    <span>折扣管理</span>
					    </a>
						<ul class="sub-menu">
						    <li ><a href="<%=basePath%>/BacksAdmin/discount/calendar1.jsp">折扣管理</a></li>
						    <li><a href="#">自定义添加内容</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-paper-plane-o"></i>
						    <span>航班管理</span>
					    </a>
					    
						<ul class="sub-menu">
						     <li ><a href="line-manager!queryLineToday.action">查询航班</a></li>
						 
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="glyphicon glyphicon-plane"></i>
						    <span>飞机管理</span>
					    </a>
						<ul class="sub-menu">
						    <li><a
								href="plane!czfj.action">查询</a></li>
							<li><a href="<%=basePath %>BacksAdmin/plane/add.jsp">添加</a></li>
						</ul>
					</li>
					<li class="has-sub ">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-users"></i>
						    <span>客户管理</span>
					    </a>
						<ul class="sub-menu">
						   <li ><a href="<%=basePath %>/BacksAdmin/ordermd/tuser!show.action">查询</a></li>
						    <li class="active"><a href="<%=basePath %>/BacksAdmin/ordermd/Tuser1.jsp">添加</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-list-alt"></i>
						    <span>季度报表</span>
					    </a>
						<ul class="sub-menu">
						    <li ><a href="#">自定义添加内容</a></li>
						    <li><a href="#">自定义添加内容</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
							<span class="badge pull-right">99</span>
							<i class="fa fa-inbox"></i> 
							<span>邮箱</span>
						</a>
						<ul class="sub-menu">
						    <li><a href="email_inbox.html">Inbox v1</a></li>
						    <li><a href="email_inbox_v2.html">Inbox v2</a></li>
						    <li><a href="email_compose.html">Compose</a></li>
						    <li><a href="email_detail.html">Detail</a></li>
						</ul>
					</li>
					
				
				
					
					
					
					
				
					
					
					
				
				
				
			        <!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
			        <!-- end sidebar minify button -->
                </ul>
                <!-- end sidebar nav -->
            </div>
            <!-- end sidebar scrollbar -->
        </div>
        <div class="sidebar-bg">
        </div>
        <!-- end #sidebar -->
        <!-- begin #content -->
        <div id="content" class="content">
            <!-- begin breadcrumb -->
            <ol class="breadcrumb pull-right">
                <li><a href="javascript:;">主页</a></li>
                <li><a href="javascript:;">查票管理</a></li>
                <li class="active">查询</li>
            </ol>
            <!-- end breadcrumb -->
            <!-- begin page-header -->
            <h1 class="page-header">
                                 查票管理 <small>以下是所有需要填写的信息...</small></h1>
            <!-- end page-header -->
           <div class="panel panel-inverse">
			    <div class="panel-heading">
			        <div class="panel-heading-btn">
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
			            <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			        </div>
			        <h4 class="panel-title">订票查询</h4>
			    </div>
			    <div class="alert alert-info fade in">
							<button type="button" class="close" data-dismiss="alert">
								<span aria-hidden="true">&times;</span>
							</button>
							
						<label class="control-label" for="input01" style="font-weight:bold">
							  远方，从holy airport开始
						</label>	
						 
			   </div>
			    <div class="panel-body">
			        <!-- begin row -->
                    <form method="post" action="mail!send.action"> 
						
						输入你邮箱号码：<input type="text" name="sendto"><br/>
						输入邮件标题<input type="text" name="title"><br/>
					           输入邮件内容<textarea name="content" id="" cols="30" rows="10"></textarea>
					    <button id="a123" type="submit">send</button>
					    
					  
					</form>     
			    </div>
			    <div id="message">
			       <td colspan="2"><s:actionmessage/></td>
			       
			    </div>
			</div>
		</div>
		
            <!-- end row -->
     
            <!-- begin row -->
         
		
			
			
            <!-- end row -->
            <!-- begin row -->
      
            <!-- end row -->
        </div>
        <!-- end #content -->
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i
                class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">
                    Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">
                        &nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector"
                        data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">
                        &nbsp;</a></li>
                </ul>
                <div class="divider">
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">
                        Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">
                        Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">
                        Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage">
                            <i class="fa fa-refresh m-r-3"></i>Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
        <!-- begin scroll to top btn -->
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
            data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
    <!-- end page container -->
    <!-- ================== BEGIN BASE JS ================== -->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery/jquery-1.9.1.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

    <!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-cookie/jquery.cookie.js"></script>

    <!-- ================== END BASE JS ================== -->
    <!-- ================== BEGIN PAGE LEVEL JS ================== -->

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/morris/raphael.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/morris/morris.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-merc-en.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/bootstrap-calendar/js/bootstrap_calendar.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/plugins/gritter/js/jquery.gritter.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/js/dashboard-v2.min.js"></script>

    <script src="<%=basePath %>/BacksAdmin/assets/js/apps.min.js"></script>
      <script src="<%=basePath %>/BacksAdmin/mail/js/send.js"></script>

    <!-- ================== END PAGE LEVEL JS ================== -->
    

    <script>
        $(document).ready(function() {
            App.init();
            DashboardV2.init();
        });
	</script>

</body>
</html>
