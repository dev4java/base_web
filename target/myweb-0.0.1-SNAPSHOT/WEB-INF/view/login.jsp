<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/inc/globalConfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>Metronic  | Login Page</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="media/css/login.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">
	<!-- BEGIN LOGO -->
<%-- ----------=<%= request.getContextPath()%> ======<%=request.getRealPath("/")%>             =---------- --%>
	<div class="logo">
		<img src="media/image/logo-big.png" alt="" /> 
	</div>

	<!-- END LOGO -->

	<!-- BEGIN LOGIN -->

	<div class="content">

		<!-- BEGIN LOGIN FORM -->

		<form class="form-vertical login-form" id="login_form" action="/login" method="post">

			<h3 class="form-title">Login to your account</h3>

			<div class="alert alert-error hide">

				<button class="close" data-dismiss="alert"></button>

				<span>Enter any username and password.</span>

			</div>

			<div class="control-group">

				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">Username</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Username" id="uid" name="username"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Password</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input class="m-wrap placeholder-no-fix" type="password" placeholder="Password" id="pid" name="password" value="admin"/>

					</div>

				</div>

			</div>

			<div class="form-actions">

				<label class="checkbox">

				<input type="checkbox" name="remember" id="rid" value="1"/> Remember me

				</label>

				<button type="submit" id="loginBtn" class="btn green pull-right">

				Login <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

			<div class="forget-password">

				<h4>Forgot your password ?</h4>

				<p>

					no worries, click <a href="javascript:;" class="" id="forget-password">here</a>

					to reset your password.

				</p>

			</div>

			<div class="create-account">

				<p>

					Don't have an account yet ?&nbsp; 

					<a href="javascript:;" id="register-btn" class="">Create an account</a>

				</p>

			</div>

		</form>

		<!-- END LOGIN FORM -->        

		<!-- BEGIN FORGOT PASSWORD FORM -->

		<form class="form-vertical forget-form" action="index.html">

			<h3 class="">Forget Password ?</h3>

			<p>Enter your e-mail address below to reset your password.</p>

			<div class="control-group">

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-envelope"></i>

						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email" />

					</div>

				</div>

			</div>

			<div class="form-actions">

				<button type="button" id="back-btn" class="btn">

				<i class="m-icon-swapleft"></i> Back

				</button>

				<button type="submit" class="btn green pull-right">

				Submit <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

		</form>

		<!-- END FORGOT PASSWORD FORM -->

		<!-- BEGIN REGISTRATION FORM -->

		<form class="form-vertical register-form" action="index.html">

			<h3 class="">Sign Up</h3>

			<p>Enter your account details below:</p>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Username</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Password</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="Password" name="password"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-ok"></i>

						<input class="m-wrap placeholder-no-fix" type="password" placeholder="Re-type Your Password" name="rpassword"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">Email</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-envelope"></i>

						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<div class="controls">

					<label class="checkbox">

					<input type="checkbox" name="tnc"/> I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>

					</label>  

					<div id="register_tnc_error"></div>

				</div>

			</div>

			<div class="form-actions">

				<button id="register-back-btn" type="button" class="btn">

				<i class="m-icon-swapleft"></i>  Back

				</button>

				<button type="submit" id="register-submit-btn" class="btn green pull-right">

				Sign Up <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

		</form>

		<!-- END REGISTRATION FORM -->

	</div>

	<!-- END LOGIN -->

	<!-- BEGIN COPYRIGHT -->

	<div class="copyright">

		2013 &copy; Metronic. Admin Dashboard Template.

	</div>

	<!-- END COPYRIGHT -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<!-- password md5 -->

	<script src="media/js/jquery.md5.js" type="text/javascript"></script>
	
	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="media/js/jquery.validate.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js" type="text/javascript"></script>

	<script src="media/js/login.js" type="text/javascript"></script>      

	<!-- END PAGE LEVEL SCRIPTS --> 

	<script>

		jQuery(document).ready(function() {     

		  App.init();

		  Login.init();

 				$("#loginBtn").click("click",function(e){
					var username=$("#uid").val();
					//var pwd=$("#pid").val();
					var pwd = $.md5($("#pid").val());
					//var rme=$("#rid").val();
					var rme=$("#pid").attr("value");
					alert("username="+username+"   pwd="+pwd+"   rme="+rme);
					//$("#login_form")[0].submit();
					$.ajax({  
			            type: "POST", 
			            url: "/login", 
			            cache: false, //将不会从浏览器缓存中加载请求信息。 
			            data:{'username':username,'password':pwd,'rme':rme},    
			            dataType: 'json', 
			            success: function(data,statusText){
			            	alert("----"+data.status);
			              if(data.status==0){
			            	  //alert(data.statusText);
			            	  window.location.href("/usr/index");
			              }else{
			            	  alert(data.statusText);
			              }
			            }, 
			            error: function(XMLHttpRequest, textStatus, errorThrown){ 
			                  alert( "系统异常!");
			                  alert( textStatus);
			                  alert( XMLHttpRequest);
			                  alert( errorThrown);
			            } 
			           }); 
					
				}); 
		});

	</script>

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  
var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);
_gaq.push(['_setDomainName', 'keenthemes.com']);
_gaq.push(['_setAllowLinker', true]);
_gaq.push(['_trackPageview']);
(function() {    
	var ga = document.createElement('script');
	ga.type = 'text/javascript';
	ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') 
	+ 'stats.g.doubleclick.net/dc.js';    
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(ga, s);
	})();
</script>
</body>

<!-- END BODY -->

</html>
