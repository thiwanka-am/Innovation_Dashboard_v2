<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sri Lanka Innovation Dashboard</title>
		<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'	name='viewport'>
		<!-- bootstrap 3.0.2 -->
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<!-- font Awesome -->
		<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- Ionicons -->
		<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />

		<link href="css/home.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/common.js"></script>
		<!-- bxSlider CSS file -->
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		  <![endif]-->
          <link rel="stylesheet" href="css/colorbox/colorbox.css" />
	</head>
    <body class="skin-blue">
      	<header class="mainheader">
      		<div class="logo">
      			<a href="index.jsp"><img src="images/costi_logo.png" height="50"
      				style="margin-left: -10px; width: 140px;"></a>
      		</div>
      		<nav class="navbar navbar-static-top" role="navigation"> 
      			<span>
      				<img src="images/gov_logo.png" height="42" width="38" style="margin-top: 4px;">
      			</span>
      			<span class="fa" style="color: #F9F9F9; font-size: 28px; vertical-align: middle; margin-left: 10px; font-weight: bold;">Sri	Lanka Innovation Dashboard
      			</span>
      			<div class="navbar-right">
      				<ul class="nav navbar-nav">
      					<!-- <li class="dropdown user user-menu">
      						<a href="#"	class="dropdown-toggle" data-toggle="dropdown">
      							<i class="glyphicon glyphicon-user"></i>
      						<span>User
      							<i class="caret"></i>
      						</span>
      						</a>
	      					<ul class="dropdown-menu">
	      						User image
	      						<li class="user-header bg-light-blue">
	      							<img src="images/avatar5.png" class="img-circle" alt="User Image" />
	      							<p>Researcher</p>
	      						</li>
	      							Menu Body
	  							<li class="user-body">
	  								<div class="col-xs-4 text-center">
	  									<a href="#">Patents</a>
	  								</div>
	  								<div class="col-xs-4 text-center">
	  									<a href="#">Publications</a>
	  								</div>
	  							</li>
	  							Menu Footer
	  							<li class="user-footer">
	  								<div class="pull-left">
	  									<a href="#" class="btn btn-default btn-flat">Profile</a>
	  								</div>
	  								<div class="pull-right">
	  									<a href="#" class="btn btn-default btn-flat">Sign out</a>
	  								</div>
	  							</li>
	      					</ul>
      					</li> -->
      					<li class="dropdown user user-menu">
      						<a href="http://localhost:8080/InnovationDashboard/register.jsp"	class="iframe dropdown-toggle" >
      							<i class="glyphicon glyphicon-user"></i>
	      						<span>Register</span>
      						</a>
	      				</li>
      				</ul>
      			</div>
      		</nav>
      	</header>
		<div class="wrapper row-offcanvas row-offcanvas-left">
			<!-- Right side column. Contains the navbar and content of the page -->
			<aside class="right-side"> 
				<section>
					<div class="box-body">
						<div data-ride="carousel" class="carousel slide" id="carousel-example-generic">
							<div class="carousel-inner">
								<div class="item active">
									<img alt="First slide" src="images/innovation1.jpg">
									<!-- <div class="carousel-caption">
			                        	First Slide
			                    	</div> -->
	                    		</div>
								<!-- <div class="item">
			                    	<img alt="Second slide" src="images/innovation2.jpg">
			                        <div class="carousel-caption">
			                            Second Slide
			                        </div>
			                    </div> -->
								<!-- <div class="item">
			                    	<img alt="Third slide" src="images/innovation.jpg">
			                       	<div class="carousel-caption">
			                            Third Slide
			                        </div>
			                    </div> -->
	                		</div>
				                <a data-slide="prev" href="#carousel-example-generic" class="left carousel-control">
				                	<span class="glyphicon glyphicon-chevron-left"></span>
				            	</a>
				            	<a data-slide="next" href="#carousel-example-generic" class="right carousel-control">
				            		<span class="glyphicon glyphicon-chevron-right"></span>
				        		</a>
    					</div>
       			 	</div>
        		</section> 
        		<section class="content"> 
        			<div class="row">
        				<div class="col-lg-4 col-xs-4">
        					<div class="small-box bg-red">
			        			<div class="inner">
			        				<h3 class="fa">People</h3>
			        				<p>Researchers, Scientists, Inventors, Innovators...</p>
			        			</div>
			        			<div class="icon">
			        				<i class="ion ion-person-add"></i>
			        			</div>
			        			<a href="dashboard.jsp?option=people" class="small-box-footer">
			        				More info <i class="fa fa-arrow-circle-right"></i>
			        			</a>
			        		</div>
			        		<div class="box  box-primary">
			        			<div class="box-body">
			        				<p>amber, microbrewery abbey hydrometer, brewpub ale lauter
			        					tun saccharification oxidized barrel. berliner weisse wort
			        					chiller adjunct hydrometer alcohol aau! sour/acidic sour/acidic
			        					chocolate malt ipa ipa hydrometer.</p>
			        			</div>
			        		</div>
			        	</div>
			        	<div class="col-lg-4 col-xs-4">
			        		<div class="small-box bg-green">
			        			<div class="inner">
			        				<h3 class="fa">Places</h3>
			        				<p>Institutes and Organizatons afiliated with innovation...</p>
			        			</div>
			        			<div class="icon">
			        				<i class="ion ion-earth"></i>
			        			</div>
			        				<a href="dashboard.jsp?option=places" class="small-box-footer">
			        					More info <i class="fa fa-arrow-circle-right"></i>
			        				</a>
			        			</div>
			        			<div class="box  box-primary">
			        				<div class="box-body">

			        					<p>amber, microbrewery abbey hydrometer, brewpub ale lauter
			        						tun saccharification oxidized barrel. berliner weisse wort
			        						chiller adjunct hydrometer alcohol aau! sour/acidic sour/acidic
			        						chocolate malt ipa ipa hydrometer.</p>
			        				</div>
			        			</div>
			        			</div>
			        			<div class="col-lg-4 col-xs-4">
			        				<div class="small-box bg-yellow">
			        					<div class="inner">
			        						<h3 class="fa">Position</h3>
			        						<p>Global Innovation Index and other innovation indexs...</p>
			        					</div>
			        					<div class="icon">
			        						<i class="ion ion-stats-bars"></i>
			        					</div>
			        					<a href="dashboard.jsp?option=position" class="small-box-footer">
			        						More info <i class="fa fa-arrow-circle-right"></i>
			        					</a>
			        				</div>
			        				<div class="box  box-primary">
			        					<div class="box-body">
			        						<p>amber, microbrewery abbey hydrometer, brewpub ale lauter
			        							tun saccharification oxidized barrel. berliner weisse wort
			        							chiller adjunct hydrometer alcohol aau! sour/acidic sour/acidic
			        							chocolate malt ipa ipa hydrometer.</p>
			        					</div>
			        				</div>
			        			</div>
			        			<!-- <div class="col-lg-4 col-xs-4">
			        				<div class="small-box bg-aqua">
			        					<div class="inner">
			        						<h3 class="fa">Partnerships</h3>
			        						<p>People's, Institute's affiliation with foreign parties...</p>
			        					</div>
			        					<div class="icon">
			        						<i class="ion ion-pie-graph"></i>
			        					</div>
			        					<a onclick="dashboard.jsp?option=partnerships" href=""
			        						class="small-box-footer"> More info <i
			        						class="fa fa-arrow-circle-right"></i>
			        					</a>
			        				</div>
		        					<div class="box  box-primary">
		        						<div class="box-body">
		        							<p>amber, microbrewery abbey hydrometer, brewpub ale lauter
		        							tun saccharification oxidized barrel. berliner weisse wort
		        							chiller adjunct hydrometer alcohol aau! sour/acidic sour/acidic
		        							chocolate malt ipa ipa hydrometer.</p>
		        						</div>
		        					</div>
			        			</div> -->
        					</div>
		        		<div class="row">
		        		<div class="col-xs-12 connectedSortable"></div>
		        	</div>
        		</section>
        	</aside>
        		<div class="box box-solid bg-light-blue"
        		style="width: 100%; height: 100px; margin-top: 0px; padding-top: 0px; border-radius: 0px 0px 0px 0px; margin-bottom: 0px; vertical-align: bottom;">
        		<div class="box-body">
        			<p style="float: left; width: 85%">amber, microbrewery abbey
        				hydrometer, brewpub ale lauter tun saccharification oxidized
        				barrel. berliner weisse wort chiller adjunct hydrometer alcohol
        				aau! sour/acidic sour/acidic chocolate malt ipa ipa hydrometer.</p>
        				<!-- <h1 style="float: right; margin-top: 0px;">2014</h1> -->
        			</div>
        	</div>
    	</div>
        	
        	<script src="js/jquery/jquery-1.9.1.js"></script>
        	<!-- jQuery UI 1.10.3 -->
        	<script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        	<!-- Bootstrap -->
        	<script src="js/bootstrap.min.js" type="text/javascript"></script>
        	<script src="js/home/app.js" type="text/javascript"></script>
        	<script src="js/colorbox/jquery.colorbox.js"></script>
            <!-- Code for load register.jsp file using color box -->
            <script>
            	$(document).ready(function() {
                	$(".iframe").colorbox({iframe: true, width: "60%", height: "93%"});
            	});
        	</script>
    </body>
</html>