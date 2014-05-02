<!DOCTYPE html>

<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="/WEB-INF/inc/taglibs.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>Metronic | Form Stuff - Form Layouts</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="${ctx }/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="${ctx }/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="${ctx }/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<link rel="shortcut icon" href="${ctx }/media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">
			<%@include file="/WEB-INF/view/usr/usr_header.jsp" %> 
		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->

	<div class="page-container row-fluid">

		<!-- BEGIN SIDEBAR -->
			<%@include file="/WEB-INF/view/sys/sys_menu.jsp" %> 
		<!-- END SIDEBAR -->

		<!-- BEGIN PAGE -->  

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->   

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>Layout</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

									</select>

								</label>

								<label>

									<span>Header</span>

									<select class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

									</select>

								</label>

								<label>

									<span>Sidebar</span>

									<select class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

								<label>

									<span>Footer</span>

									<select class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->  

						<h3 class="page-title">

							Form Layouts

							 <small>form layouts and more</small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="index.html">Home</a> 

								<span class="icon-angle-right"></span>

							</li>

							<li>

								<a href="#">Form Stuff</a>

								<span class="icon-angle-right"></span>

							</li>

							<li><a href="#">Form Layouts</a></li>

						</ul>

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN SAMPLE FORM PORTLET-->   

						<div class="portlet box blue tabbable">

							<div class="portlet-title">

								<div class="caption">

									<i class="icon-reorder"></i>

									<span class="hidden-480">General Layouts</span>

								</div>

							</div>

							<div class="portlet-body form">

								<div class="tabbable portlet-tabs">

									<ul class="nav nav-tabs">

										<li><a href="#portlet_tab3" data-toggle="tab">Inline</a></li>

										<li><a href="#portlet_tab2" data-toggle="tab">Grid</a></li>

										<li class="active"><a href="#portlet_tab1" data-toggle="tab">Default</a></li>

									</ul>

									<div class="tab-content">

										<div class="tab-pane active" id="portlet_tab1">

											<!-- BEGIN FORM-->

											<form action="#" class="form-horizontal">

												<div class="control-group">

													<label class="control-label">Small Input</label>

													<div class="controls">

														<input type="text" placeholder="small" class="m-wrap small" />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Meduam Input</label>

													<div class="controls">

														<input type="text" placeholder="medium" class="m-wrap medium" />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Large Input</label>

													<div class="controls">

														<input type="text" placeholder="large" class="m-wrap large" />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Huge Input</label>

													<div class="controls">

														<input type="text" placeholder="huge" class="m-wrap huge" />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Disabled Input</label>

													<div class="controls">   

														<input class="m-wrap medium" type="text" placeholder="Disabled input here..." disabled />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Readonly Input</label>

													<div class="controls">   

														<input class="m-wrap medium" readonly type="text" placeholder="Readonly input here..." disabled />

														<span class="help-inline">Some hint here</span>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Small Dropdown</label>

													<div class="controls">

														<select class="small m-wrap" tabindex="1">

															<option value="Category 1">Category 1</option>

															<option value="Category 2">Category 2</option>

															<option value="Category 3">Category 5</option>

															<option value="Category 4">Category 4</option>

														</select>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Medium Dropdown</label>

													<div class="controls">

														<select class="medium m-wrap" tabindex="1">

															<option value="Category 1">Category 1</option>

															<option value="Category 2">Category 2</option>

															<option value="Category 3">Category 5</option>

															<option value="Category 4">Category 4</option>

														</select>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Large Dropdown</label>

													<div class="controls">

														<select class="large m-wrap" tabindex="1">

															<option value="Category 1">Category 1</option>

															<option value="Category 2">Category 2</option>

															<option value="Category 3">Category 5</option>

															<option value="Category 4">Category 4</option>

														</select>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Radio Buttons</label>

													<div class="controls">

														<label class="radio">

														<input type="radio" name="optionsRadios1" value="option1" />

														Option 1

														</label>

														<label class="radio">

														<input type="radio" name="optionsRadios1" value="option2" checked />

														Option 2

														</label>  

														<label class="radio">

														<input type="radio" name="optionsRadios1" value="option2" />

														Option 3

														</label>  

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Radio Buttons</label>

													<div class="controls">

														<label class="radio line">

														<input type="radio" name="optionsRadios2" value="option1" />

														Option 1

														</label>

														<label class="radio line">

														<input type="radio" name="optionsRadios2" value="option2" checked />

														Option 2

														</label>  

														<label class="radio line">

														<input type="radio" name="optionsRadios2" value="option2" />

														Option 3

														</label>  

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Checkbox</label>

													<div class="controls">

														<label class="checkbox">

														<input type="checkbox" value="" /> Checkbox 1

														</label>

														<label class="checkbox">

														<input type="checkbox" value="" /> Checkbox 2

														</label>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Checkbox</label>

													<div class="controls">

														<label class="checkbox line">

														<input type="checkbox" value="" /> Checkbox 1

														</label>

														<label class="checkbox line">

														<input type="checkbox" value="" /> Checkbox 2

														</label>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Textarea</label>

													<div class="controls">

														<textarea class="medium m-wrap" rows="3"></textarea>

													</div>

												</div>

												<div class="control-group">

													<label class="control-label">Large Textarea</label>

													<div class="controls">

														<textarea class="large m-wrap" rows="3"></textarea>

													</div>

												</div>

												<div class="form-actions">

													<button type="submit" class="btn blue"><i class="icon-ok"></i> Save</button>

													<button type="button" class="btn">Cancel</button>

												</div>

											</form>

											<!-- END FORM-->  

										</div>

										<div class="tab-pane " id="portlet_tab2">

											<form>

												<div class="controls controls-row">

													<input class="span12 m-wrap" type="text" placeholder=".span12" />

												</div>

												<div class="controls controls-row">

													<input class="span11 m-wrap" type="text" placeholder=".span11" />

													<input class="span1 m-wrap" type="text" placeholder=".span1" />

												</div>

												<div class="controls controls-row">

													<input class="span10 m-wrap" type="text" placeholder=".span10" />

													<input class="span2 m-wrap" type="text" placeholder=".span2" />

												</div>

												<div class="controls controls-row">

													<input class="span9 m-wrap" type="text" placeholder=".span9" />

													<input class="span3 m-wrap" type="text" placeholder=".span3" />

												</div>

												<div class="controls controls-row">

													<input class="span8 m-wrap" type="text" placeholder=".span8" />

													<input class="span4 m-wrap" type="text" placeholder=".span4" />

												</div>

												<div class="controls controls-row">

													<input class="span7 m-wrap" type="text" placeholder=".span7" />

													<input class="span5 m-wrap" type="text" placeholder=".span5" />

												</div>

												<div class="controls controls-row">

													<input class="span6 m-wrap" type="text" placeholder=".span6" />

													<input class="span6 m-wrap" type="text" placeholder=".span6" />

												</div>

												<div class="controls controls-row">

													<input class="span5 m-wrap" type="text" placeholder=".span5" />

													<input class="span7 m-wrap" type="text" placeholder=".span7" />

												</div>

												<div class="controls controls-row">

													<input class="span4 m-wrap" type="text" placeholder=".span4" />

													<input class="span8 m-wrap" type="text" placeholder=".span8" />

												</div>

												<div class="controls controls-row">

													<input class="span3 m-wrap" type="text" placeholder=".span3" />

													<input class="span9 m-wrap" type="text" placeholder=".span9" />

												</div>

												<div class="controls controls-row">

													<input class="span2 m-wrap" type="text" placeholder=".span2" />

													<input class="span10 m-wrap" type="text" placeholder=".span10" />

												</div>

												<div class="controls controls-row">

													<input class="span1 m-wrap" type="text" placeholder=".span1" />

													<input class="span11 m-wrap" type="text" placeholder=".span11" />

												</div>

												<div class="controls controls-row">

													<input class="span2 m-wrap" type="text" placeholder=".span2" />

													<input class="span3 m-wrap" type="text" placeholder=".span3" />

													<input class="span4 m-wrap" type="text" placeholder=".span4" />

													<input class="span2 m-wrap" type="text" placeholder=".span2" />

													<input class="span1 m-wrap" type="text" placeholder=".span1" />

												</div>

											</form>

										</div>

										<div class="tab-pane " id="portlet_tab3">

											<h4>Login Form</h4>

											<form action="#">

												<input type="text" class="m-wrap" placeholder="Email" /><br />

												<input type="password" class="m-wrap" placeholder="Password" />

												<label class="checkbox">

												<input type="checkbox" /> Remember me

												</label>

												<button type="submit" class="btn green">Sign in</button>

											</form>

											<hr />

											<h4>Login Form</h4>

											<form action="#">

												<div class="input-icon left">

													<i class="icon-envelope"></i>

													<input type="text" class="m-wrap" placeholder="Email" />

												</div>

												<div class="input-icon left">                                          

													<i class="icon-lock"></i>

													<input type="password" class="m-wrap" placeholder="Password" />

												</div>

												<label class="checkbox">

												<input type="checkbox" /> Remember me

												</label>

												<button type="submit" class="btn purple">Sign in</button>

											</form>

											<hr />

											<form action="#">

												<div class="input-prepend">                

													<button class="btn blue">Login</button><input class="m-wrap" size="16" type="password" placeholder="Your Password" />

												</div>

											</form>

											<h4>Search Form</h4>

											<form action="#">

												<div class="input-append hidden-phone">  

													<input class="m-wrap medium" size="10" type="text" placeholder="Twitter Username" /><button class="btn red">Search</button><button class="btn black">Back</button>

												</div>

												<div class="input-append visible-phone">  

													<input class="m-wrap" size="10" type="text" placeholder="Twitter Username" /><button class="btn red">Search</button><button class="btn black">Back</button>

												</div>

											</form>

											<hr />

											<form action="#" class="form-search">

												<div class="input-append">

													<input class="m-wrap" type="text" /><button class="btn green" type="button">Search!</button>

												</div>

											</form>

										</div>

									</div>

								</div>

							</div>

						</div>

						<!-- END SAMPLE FORM PORTLET-->

					</div>

				</div>

				<!-- END PAGE CONTENT-->         

			</div>

			<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->  

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2013 &copy; Metronic by keenthemes.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="${ctx }/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="${ctx }/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="${ctx }/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="${ctx }/media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="${ctx }/media/js/excanvas.min.js"></script>

	<script src="${ctx }/media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="${ctx }/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="${ctx }/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="${ctx }/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="${ctx }/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<script src="${ctx }/media/js/app.js"></script>     

	<script>

		jQuery(document).ready(function() {   

		   // initiate layout and plugins

		   App.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->   

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>