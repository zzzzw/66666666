<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>


	</head>
	<!-- END HEAD -->
	<!-- BEGIN BODY -->
	<body class="page-header-fixed">
		<!-- 头部导入 -->
		<jsp:include page="../header.jsp"></jsp:include>

		<!-- BEGIN CONTAINER -->

		<div class="page-container">
			<!-- 菜单导入 -->
			<jsp:include page="../menu.jsp"></jsp:include>

			<!-- BEGIN PAGE -->
			<!-- BEGIN PAGE LEVEL STYLES -->

	 



<script type="text/javascript" src="<%=basePath%>/behind/airinfo/js/update.js"></script>

			<!-- BEGIN PAGE CONTENT-->

			<div class="row-fluid">

				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->

					<h3 class="page-title">


					</h3>

					<ul class="breadcrumb">

						<li>

							<i class="icon-home"></i>

							<a href="<%=basePath%>/behind/management-index.jsp">首页</a>

							<i class="icon-angle-right"></i>

							<a>航班添加</a>

						</li>

						<li>
							<a href="#"></a>
						</li>

						<li class="pull-right no-text-shadow">

							<div id="dashboard-report-range"
								class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
								data-tablet="" data-desktop="tooltips" data-placement="top"
								data-original-title="Change dashboard date range">

								<i class="icon-calendar"></i>

								<span></span>

								<i class="icon-angle-down"></i>

							</div>

						</li>

					</ul>

					<!-- END PAGE TITLE & BREADCRUMB-->

				</div>
				<!-- BEGIN EXAMPLE TABLE PORTLET-->

				<div class="portlet box blue">

					<div class="portlet-title">

						<div class="caption">
							<i class="icon-edit"></i>航班更新
						</div>



					</div>

					<div >







						<div class="portlet-body form">

							<!-- BEGIN FORM-->
							<s:iterator value="hblist" var="hb">
							<form action="line-manager!updateline.action" class="form-horizontal" method="post">
								<input type="hidden" name="lineid" value="${hb[7] }">
								<input type="hidden" name="planeid" value="${hb[17] }">
							
								<h4 class="form-section">
									信息
								</h4>

								<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												出发城市
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12" required name="l.startcity" value="${hb[12]}" disabled="disabled"
													>

												

											</div>

										</div>

									</div>

									<!--/span-->

									<div class="span6 ">

										<div class="control-group ">

											<label class="control-label">
												到达城市
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12" required name="l.endcity" value="${hb[13]}"  disabled="disabled"> 

												

											</div>

										</div>

									</div>

									<!--/span-->

								</div>

								<!--/row-->

								<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												出发机场
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12" required name="l.startplace" value="${hb[8]}">

											

											</div>

										</div>

									</div>

									<!--/span-->

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												到达机场
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12" required name="l.endplace" value="${hb[9]}">

											</div>

										</div>

									</div>

									<!--/span-->

								</div>

								<!--/row-->

								<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												飞机
											</label>
											<div class="controls">

												<select class="span12 select2_category" id="planeselect" name="p.id"
													 required>

													<option value="${hb[17]}">
														${hb[26]}
													</option>

													

												</select>

											</div>
											

										</div>

									</div>

									<!--/span-->

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												距离
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12"  name="l.distance" required value="${hb[15]}">

											</div>

										</div>

									</div>

									<!--/span-->

								</div>

								<!--/row-->

								<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												出发时间
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12"  name="l.starttime" required value="${hb[10]}" >

											</div>

										</div>

									</div>
									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												到达时间
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12"  name="l.endtime" required value="${hb[10]}">

											</div>

										</div>

									</div>

								</div>
								<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												航班号
											</label>

											<div class="controls">

												<input type="text" class="m-wrap span12"  name="l.linename" required value="${hb[1]}" disabled="disabled">

											</div>

										</div>

									</div>
									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												公司
											</label>

											<div class="controls">

												<select class="span12 select2_category" id="companyselect" name="companyid"
													 required>

													<option value="${hb[14]}">
														${hb[16] }
													</option>

													

												</select>

											</div>

										</div>

									</div>
									

								</div>
							
								
								<h4 class="form-section">
									舱位价格
								</h4>
									<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												头等舱
											</label>

											<div class="controls">

												<input type="number" class="m-wrap span12"  name="p.tdcprice" required value="${hb[22]}">

											</div>

										</div>

									</div>
									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												公务舱
											</label>

											<div class="controls">

												<input type="number" class="m-wrap span12" required name="p.swcprice" value="${hb[23]}">

											</div>

										</div>

									</div>

								</div>
									<div class="row-fluid">

									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												经济舱
											</label>

											<div class="controls">

												<input type="number" class="m-wrap span12"  name="p.jjcprice" required value="${hb[24]}">

											</div>

										</div>

									</div>
									<div class="span6 ">

										<div class="control-group">

											<label class="control-label">
												特惠舱
											</label>

											<div class="controls">

												<input type="number" class="m-wrap span12" required name="p.thcprice" value="${hb[25]}">

											</div>

										</div>

									</div>

								</div>
								
								

									<div class="form-actions" >
										<label class="checkbox">

														<input type="checkbox" value="1" name="build"/> 修改 每天的售票信息

														</label>

									<input type="submit" class="btn green" value="保存">
									

									</div>

								<!--/row-->

								

							</form>
							</s:iterator>
							<!-- END FORM-->

						</div>

					</div>













				</div>

			</div>

			<!-- END EXAMPLE TABLE PORTLET-->

		</div>

		</div>


		<!-- END PAGE HEADER-->

		</div>

		<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->

		</div>

	
		<!-- END CONTAINER -->
		<!-- 尾部导入 -->
		<jsp:include page="../foot.jsp"></jsp:include>

	</body>

	<!-- END BODY -->

</html>