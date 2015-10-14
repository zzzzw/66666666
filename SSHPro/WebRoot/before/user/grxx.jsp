<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<%
    HttpSession sessions = request.getSession();

			Object sessionValues = sessions.getAttribute("uid");//ssflag
			Object sessionaccount = sessions.getAttribute("account");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>首页</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
		<link rel="stylesheet"
			href="<%=basePath%>resource/foreground/css/mainstyle.css"></link>	
		<link href="<%=basePath %>BacksAdmin/assets/css/style.min.css" rel="stylesheet" />
				
		<link rel="stylesheet"
			href="<%=basePath%>/resource/foreground/css/bootstrap.min.css">
		<link rel="stylesheet"
			href="<%=basePath%>/resource/foreground/css/mytab.css">

			<link href="<%=basePath %>BacksAdmin/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="<%=basePath %>BacksAdmin/resource/foreground/css/f-style.css" rel="stylesheet" />
			<style>
			 body {
            padding-top: 20px;
            padding-bottom: 40px;
            color: #5a5a5a;
          background-color: #fff;
        }
			
			.carousel .item img {
			height:367px;
            width: 100%;
        }
         .carousel {
            height: 367px;
            margin-bottom: 60px;
        }
        .navbar.navbar-inverse {
    background: #96C4EC!important;
}

.navbar-inverse {
    background-color: #222!important;
    border-color: #96C4EC!important;
}

.navbar.navbar-inverse .navbar-brand, .navbar.navbar-inverse .navbar-nav>li>a {
    color: #FFFFFF!important;
    font-weight: bold!important;
}
.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus {
    color: #fff;
    background-color: #5D9AF3;
}
        
			
			</style>
<style>
			 body {
            padding-top: 20px;
            padding-bottom: 40px;
            color: #5a5a5a;
          background-color: #fff;
        }
			
			.carousel .item img {
			height:367px;
            width: 100%;
        }
         .carousel {
            height: 367px;
            margin-bottom: 60px;
        }
        .navbar.navbar-inverse {
    background: #96C4EC!important;
}

.navbar-inverse {
    background-color: #222!important;
    border-color: #96C4EC!important;
}

.navbar.navbar-inverse .navbar-brand, .navbar.navbar-inverse .navbar-nav>li>a {
    color: #FFFFFF!important;
    font-weight: bold!important;
}
.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus {
    color: #fff;
    background-color: #5D9AF3;
}
        
        
			
			</style>
	</head>
	<body >
		<div id="head">
		 <div><input type="hidden" name="flag" id="ssflag" value="<%=sessionValues %>"/></div>  
			<div class="row" style="font-size:14px;border-bottom:solid 1px;border-color:#F1F1F1">
		<span class="col-lg-1"></span>
		<span class="col-lg-2" style="margin-bottom:4px;margin-top:-16px">服务热线：10086</span>
		<span class="col-lg-4"></span>	
		<span class="col-lg-4" style="margin-bottom:4px;margin-top:-16px">
		<ul>
		<li style="float: right;">&nbsp;特色产品&nbsp;</li>
		<li style="float: right;">&nbsp;友情链接&nbsp;|</li>
		<li style="float: right;">&nbsp;微信&nbsp;|</li>
		<li style="float: right;">&nbsp;微博&nbsp;|</li>
		
		
		</ul>
		</span>	
		</div>
<div class="row">
				<div class="col-md-offset-1 col-md-3">
				<img src="<%=basePath%>resource/foreground/img/logos/sshk.jpg"
							>
					<a href="<%=basePath%>/before/f-index.jsp"><img
							src="<%=basePath%>resource/foreground/img/mPurpose-logo.png"
							alt="Multipurpose Twitter Bootstrap Template">
					</a>
				</div>
				
			</div>
			<div style="width: 100%">
				<div class="navbar navbar-inverse" role="navigation" id="menu-nav">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">切换导航</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>

						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="#">首页</a>
								</li>
								<li>
									<a href="<%=basePath %>before/flight/search.jsp">预订行程</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">自助服务
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="#feature-tab" data-tab="tab-chrome">Chrome</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-firefox">Firefox</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-safari">Safari</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-opera">Opera</a>
										</li>
										<li>
											<a href="#feature-tab" data-tab="tab-ie">IE</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="#" data-toggle="modal" data-target="#about-modal">信息服务</a>
								</li>
							
							</ul>
							<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown">
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label">5</span>
						</a>
						<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">通知 (5)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">系统错误消息</h6>
                                        <div class="text-muted f-s-11">3分钟前</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="<%=basePath %>BacksAdmin/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">习大大</h6>
                                        <p>吴振廷，加油！</p>
                                        <div class="text-muted f-s-11">25分钟前</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="<%=basePath %>BacksAdmin/assets/img/user-2.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">张珂源</h6>
                                        <p>吴振廷欧巴！</p>
                                        <div class="text-muted f-s-11">35分钟前</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> 新用户注册</h6>
                                        <div class="text-muted f-s-11">一个小时前</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> 来自姚明的新邮件</h6>
                                        <div class="text-muted f-s-11">2小时前</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">更多</a>
                            </li>
						</ul>
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<%=basePath %>BacksAdmin/assets/img/user-13.jpg" alt="" /> 
							<span class="hidden-xs"><%=sessionaccount %></span> <b class="caret"></b>
						</a>
						<div><input type="hidden" name="flag" id="ssflag" value="<%=sessionValues %>"/></div> 
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="<%=basePath %>before/order/jsp/myorder.jsp">我的订单</a></li>
							<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> 盒子</a></li>
							<li><a href="javascript:;">日历</a></li>
							<li><a href="<%=basePath %>before/user/grxx.jsp;">个人中心</a></li>
							<li class="divider"></li>
							<li><a href="javascript:;">退出</a></li>
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
							
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- end head -->
<!-- begin mycontent -->
		<div id="mycontent" class="container-fluid">  
		    <!-- begin row -->
		     <div class="row" > 
		       
		          <!-- begin col-md-1 -->
		          <div class="col-md-offset-1 col-md-1" >
               
		    
		          </div>
		           <!-- end col-md-1 -->
		           
		           <!-- begin col-md-8 -->
		           <div class="col-md-8">
		       
				<div class="panel panel-info" style="height:auto">
		                     <div class="panel-heading">个人信息</div>
		                     <div class="well">
				<div class="panel-body well" >
				 
					<form id="grxxform" class="form form-horizontal">
					<div><input type="hidden" name="tue.id" id="tue.id" value="<%=sessionValues %>"/></div>
					<div id="grxx">
					
					</div>
					</form>
					 <div class="form-group">
					 <div class="col-lg-5"></div>
					<div class="col-lg-1"><input type="button" name="update" id="update" class="btn btn-info" value="修改"/></div>
						 <div class="col-lg-6"></div>
					</div>
					
					<div class="form-group">
						 <div class="col-lg-5"></div>
					<div class="col-lg-1"><input type="button" name="save" id="save" class="btn btn-info" value="保存" /></div>
						 <div class="col-lg-6"></div>
					</div>
					
				</div>
				</div>
		                
		           </div>
		           
		           <!-- end col-md-7 -->
		     </div>
		     
		     <!-- end row -->
		     <div class="col-md-1" >
           
		     
		
		          </div>
		
		    
		
		</div>
		</div>
		
		<!-- end mycontent -->



		<!-- Footer -->
		<div id="foot" class="container-fluid">
			<div class="col-md-offset-2 col-md-2 col-xs-6">
				<h4>
					关于神航
				</h4>
				<ul>
					<li>
						<a href="/about/zjdh/index.html" target="_blank">走进神航</a>
					</li>
					<li>
						<a href="/about/dhxw/index.html" target="_blank">神航资讯</a>
					</li>
					<li>
						<a href="http://zhaopin.ceair.com/" target="_blank">神航招聘</a>
					</li>
					<li>
						<a href="/about/thlm/index.html" target="_blank">天合联盟</a>
					</li>
				</ul>
			</div>
			<div class="col-md-2 col-xs-6">
				<h4>
					互动支持
				</h4>
				<ul>
					<li>
						<a href="/about/lxwm/index.html" target="_blank">联系我们</a>
					</li>
					<li>
						<a href="/guide2/hycjwtjd/index.html" target="_blank">常见问题</a>
					</li>
					<li>
						<a href="/about/yjfk/index.html" target="_blank">意见建议</a>
					</li>
					<li>
						<a href="/sitemap.html" target="_blank">网站导航</a>
					</li>
				</ul>
			</div>
			<div class="col-md-2 col-xs-6">
				<h4>
					友情链接
				</h4>
				<ul>
					<li>
						<a href="http://www.ceairgroup.com" target="_blank">中国神圣航空集团公司</a>
					</li>
					<li>
						<a href="http://www.shanghai-air.com" target="_blank">上海航空公司</a>
					</li>
					<li>
						<a href="http://www.flycua.com" target="_blank">中国联航</a>
					</li>
					<li>
						<a href="http://www.ceholiday.com" target="_blank">神航假期</a>
					</li>
					<li>
						<a href="http://loyaltymember.ceair.com/mp_static/index.html"
							target="_blank">东方万里行</a>
					</li>
				</ul>
			</div>
			<div class="col-md-2 col-xs-6">
				<h4>
					关注我们
				</h4>
				<ul>
					<li>
						<a href="http://t.qq.com/ceairdotcom" target="_blank">神航腾讯微博</a>
					</li>
					<li>
						<a href="http://e.weibo.com/ceairdotcom" target="_blank">神航新浪微博</a>
					</li>
					<li>
						<a href="http://page.renren.com/donghang" target="_blank">神航人人网</a>
					</li>
					<li>
						<a href="http://site.douban.com/ceair/" target="_blank">神航豆瓣</a>
					</li>
					<li>
						<a href="/talent.html" target="_blank">神航达人计划</a>
					</li>

				</ul>

			</div>

		</div>


		<!-- Javascripts -->

		<script src="<%=basePath %>resource/foreground/js/jquery-1.9.1.min.js"></script>
		<script src="<%=basePath%>resource/foreground/js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="<%=basePath%>resource/foreground/js/jquery.fitvids.js"></script>
		<script
			src="<%=basePath%>resource/foreground/js/jquery.sequence-min.js"></script>
		<script src="<%=basePath%>resource/foreground/js/jquery.bxslider.js"></script>
		<script src="<%=basePath%>resource/foreground/js/main-menu.js"></script>
		<script src="<%=basePath%>resource/foreground/js/template.js"></script>
		<script src="<%=basePath%>resource/foreground/js/wddh.js"></script>
		<script src="<%=basePath%>resource/foreground/js/grxx-update.js"></script>
		<script src="<%=basePath%>resource/foreground/js/jquery.validate.js"></script>
		<script src="<%=basePath%>resource/foreground/js/session.js"></script>



	</body>
</html>
