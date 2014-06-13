<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link type="image/x-icon" href="images/icons/favicon.ico" rel="shortcut icon" />
		<title>Sri Lanka Innovation Dashboard</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/styles.css" />
		<link rel="stylesheet" type="text/css" href="css/menu/styles1.css" />
		<link rel="stylesheet" type="text/css" href="css/menu/styles2.css" />
		<link rel="stylesheet" type="text/css" href="css/menu/styles3.css" />
		
		<link rel="stylesheet" href="lib/ammap/ammap.css" />
	
		<script type="text/javascript" src="js/jquery/jquery-1.9.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/d3/d3.min.js"></script>
		<script type="text/javascript" src="js/scripts/utility.js"></script>
		<script type="text/javascript" src="js/scripts/people-content.js"></script>
		<script type="text/javascript" src="js/menu/main.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
		
		<script type="text/javascript" src="lib/ammap/ammap.js"></script>
	    <script type="text/javascript" src="lib/ammap/maps/js/sriLankaHigh.js"></script>
	    <script type="text/javascript" src="js/scripts/places-content.js"></script>
	    
	    <script type="text/javascript" src="lib/ammap/maps/js/worldHigh.js"></script>
	    <script type="text/javascript" src="js/scripts/position-content.js"></script>
	    <script type="text/javascript" src="js/d3/RadarChart.js"></script>
		<script type="text/javascript" src="js/d3/LineChart.js"></script>
		<script type="text/javascript" src="js/d3/IndexBarChart.js"></script>

	    <link rel="stylesheet" type="text/css" href="css/menu/css/component.css" />
		<script src="js/modernizr.custom.js"></script>
		<script src="js/menu/js/modernizr.custom.js"></script>
		<script src="js/menu/js/classie.js"></script>
		<script src="js/menu/js/gnmenu.js"></script>
		<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="css/home.css" rel="stylesheet" type="text/css" />
	</head>
	<body onload="pageLoad();" class="skin-blue">
		<header class="mainheader">
            <div class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                <a href="index.jsp"><img src="images/costi_logo.png" height="50"  style="margin-top:-7px;margin-left:-10px;width:140px;"></a>
            </div>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <span ><img src="images/gov_logo.png" height="42" width="38" style="margin-top:4px;"></span>
                 <span class="fa" style="color:#F9F9F9;font-size:28px;vertical-align:middle;margin-left:10px;font-weight:bold;">Sri Lanka Innovation Dashboard</span>
                 <span id="menu" class="navbtn">
					<ul id="myTab" >
						<li style="height:50px;background-color:#F56954;width:95px;"><a class="test" href="#people"  data-toggle="tab" onclick="changeTab('people');">People</a></li>
						<li style="height:50px;background-color:#00A65A;width:95px;"><a class="test" href="#places" data-toggle="tab" onclick="changeTab('places');">Places</a></li>
						<li style="height:50px;background-color:#F39C12;width:95px;"><a class="test" href="#position"  data-toggle="tab" onclick="changeTab('position');">Position</a></li>
						<!-- <li style="height:50px;background-color:#F56954;"><a class="test" href="#position"  data-toggle="tab">Partnetships</a></li> -->
					</ul>
				</span>   
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>User <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                				<!-- User image -->
                				<li class="user-header bg-light-blue">
                					<img src="images/avatar5.png" class="img-circle" alt="User Image" />
                					<p>
                						Researcher
                					</p>
                				</li>
                				<!-- Menu Body -->
                				<li class="user-body">
                					<div class="col-xs-4 text-center">
                						<a href="#">Patents</a>
                					</div>
                					<div class="col-xs-4 text-center">
                						<a href="#">Publications</a>
                					</div>
                				</li>
                				<!-- Menu Footer-->
                				<li class="user-footer">
                					<div class="pull-left">
                						<a href="#" class="btn btn-default btn-flat">Profile</a>
                					</div>
                					<div class="pull-right">
                						<a href="#" class="btn btn-default btn-flat">Sign out</a>
                					</div>
                				</li>
                			</ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
		
			
	<div class="content-div">
		<table class="content-table">
			<tr>
				<td>
					<div class="tab-content">
						<!-- people division -->
						<div class="tab-pane fade" id="people">
							<!-- left menu -->
							<div id='cssmenu' style="float:left;">
								<ul>
									<li><a href='#' onclick="loadContent('People', 'Number of People',  'people.svg', 456542, 7678, 789)"><span>Area of Interest</span></a></li>
									<li><a href='#' onclick="load('people');loadContent('Natural Sciences', 'Number of People',  'natural-science.svg', 6242, 476, 11)"><span>Natural Sciences</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();loadContent('Mathematics', 'Number of People', 'maths.svg', 124, 25, 14)">Mathematics</a></li>
											<li><a href='#' onclick="changeSubArea();">Computer and information sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Physical sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Chemical sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Earth and related environmental sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Biological sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Other natural sciences</a></li>
										</ul>
									</li>
									<li><a href='#' onclick="load('people');loadContent('Engineering and Technology', 'Number of People', 'engineering-and-technology.svg', 6242, 476, 11)"><span>Engineering and Technology</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();">Civil engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Electrical engineering, electronic engineering, information engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Mechanical engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Chemical engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Materials engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Medical engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Environmental engineering</a></li>
											<li><a href='#' onclick="changeSubArea();">Environmental biotechnology</a></li>
											<li><a href='#' onclick="changeSubArea();">Industrial Biotechnology</a></li>
											<li><a href='#' onclick="changeSubArea();">Nano-technology</a></li>
											<li><a href='#' onclick="changeSubArea();">Other engineering and technologies</a></li>
										</ul>
									</li>
									<li><a href='#' onclick="load('people');loadContent('Medical and Health Sciences', 'Number of People', 'medical-and-health-sciences.svg', 6242, 476, 11)"><span>Medical and Health Sciences</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();">Basic medicine</a></li>
											<li><a href='#' onclick="changeSubArea();">Clinical medicine</a></li>
											<li><a href='#' onclick="changeSubArea();">Health sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Health biotechnology</a></li>
											<li><a href='#' onclick="changeSubArea();">Other medical sciences</a></li>
										</ul>
									</li>
									<li><a href='#' onclick="load('people');loadContent('Agricultural Sciences', 'Number of People', 'agricultural-sciences.svg', 6242, 476, 11)"><span>Agricultural Sciences</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();">Agriculture, forestry, and fisheries</a></li>
											<li><a href='#' onclick="changeSubArea();">Animal and dairy science</a></li>
											<li><a href='#' onclick="changeSubArea();">Veterinary science</a></li>
											<li><a href='#' onclick="changeSubArea();">Agricultural biotechnology</a></li>
											<li><a href='#' onclick="changeSubArea();">Other agricultural sciences</a></li>
										</ul>
									</li>
									<li><a href='#' onclick="load('people');loadContent('Social Sciences', 'Number of People', 'social-sciences.svg', 42, 476, 56)"><span>Social Sciences</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();">Psychology</a></li>
											<li><a href='#' onclick="changeSubArea();">Economics and business</a></li>
											<li><a href='#' onclick="changeSubArea();">Educational sciences</a></li>
											<li><a href='#' onclick="changeSubArea();">Sociology</a></li>
											<li><a href='#' onclick="changeSubArea();">Law</a></li>
											<li><a href='#' onclick="changeSubArea();">Political Science</a></li>
											<li><a href='#' onclick="changeSubArea();">Social and economic geography</a></li>
											<li><a href='#' onclick="changeSubArea();">Media and communications</a></li>
											<li><a href='#' onclick="changeSubArea();">Other social sciences</a></li>
										</ul>
									</li>
									<li><a href='#' onclick="load('people');loadContent('Humanities', 'Number of People', 'humanities.svg', 5472, 476, 24)"><span>Humanities</span></a>
										<ul>
											<li><a href='#' onclick="changeSubArea();">History and archaeology</a></li>
											<li><a href='#' onclick="changeSubArea();">Languages and literature</a></li>
											<li><a href='#' onclick="changeSubArea();">Philosophy, ethics and religion</a></li>
											<li><a href='#' onclick="changeSubArea();">Art (arts, history of arts, performing arts, music)</a></li>
											<li><a href='#' onclick="changeSubArea();">Other humanities</a></li>
										</ul>
									</li>
								</ul>
							</div>
								
								<div id="grid" style="float:left;width:77.5%;margin-left:5px;" class="dataGrid">
									<div id="blank" >
										<section id="left">
											<div id="userStats" class="clearfix" >
												<div class="pic">
													<a href="#"><img id="imgMain" src="images/icons/maths.svg" width="56" height="56" /></a>
												</div>
												<div class="data">
													<h3 id="area"></h3>
													<div align="right">
														<ul class="numbers clearfix" >
															<li style="margin-right: 5px;">
																<a href="#"><img id="imgPeople" src="images/icons/people.svg" width="22" height="22" >
																<b>People</b> : <strong id="numPeople">4500</strong></a>
															</li>
															<li style="border: 1px solid rgb(51, 51, 51); border-radius: 3px; padding: 2px; background-color: #eeeeee;margin-right: 5px;">
																<a href="#"><img id="imgPubs" src="images/icons/publications.svg" width="22" height="22" />
																<b>Publications</b> : <strong id="numPubs">759</strong></a>
															</li>
															<li style="border-right:0px;border: 1px solid rgb(51, 51, 51); border-radius: 3px; padding: 2px; background-color: #eeeeee;margin-right: 5px;">
																<a href="#"><img id="imgPatents" src="images/icons/patent.svg" width="22" height="22" />
																<b>Patents</b> : <strong id="numPatents">174</strong></a>
															</li>
														</ul>
													</div>
												</div>
											</div>

											<div id="chart_div" style="width: 605px; height: 250px; position: absolute;">
												<div class="draw-area" id="drawarea"></div>
											</div>
										</section>
									</div>
								</div>
								<div id="top-people-area">
									
									<div class="panel-group" id="top-people-accordion">
										<div class="panel top-panel">
											<div class="top-people">
												Top Researchers
											</div>
										</div>
										<div class="panel panel-people">
											<div class="people-name">
												<img src="images/user-images/institutions/uoc.png" width="24" height="24" class="inst-img" />
												<a href="#" onclick="popitup('profile.jsp')">Mayuri Wijesinghe</a>
											</div>
											<div id="top-people-1-area">
														
											</div>
										</div>
										<div class="panel panel-people">
											<div class="people-name">
												<img src="images/user-images/institutions/uop.png" width="24" height="24" class="inst-img"/>
												<a href="#">M Meegaskumbura</a>
											</div>
											<div id="top-people-2-area">
														
											</div>
										</div>
										<div class="panel panel-people">
											<div class="people-name">
												<img src="images/user-images/institutions/uom.png" width="24" height="24" class="inst-img"/>
												<a href="#">M Zwarteveen</a>
											</div>
											<div id="top-people-3-area">
														
											</div>
										</div>
										<div class="panel panel-people">
											<div class="people-name">
												<img src="images/user-images/institutions/ousl.png" width="24" height="24" class="inst-img"/>
												<a href="#">Abeysena C</a>
											</div>
											<div id="top-people-4-area">
														
											</div>
										</div>
										<div class="panel panel-people">
											<div class="people-name">
												<img src="images/user-images/institutions/sjp.png" width="24" height="24" class="inst-img"/>
												<a href="#">K P Hewagamage</a>
											</div>
											<div id="top-people-5-area">
														
											</div>
										</div>
									</div>
								</div>	
								<div class="draw-area" id="people-draw-area"></div>
								<div class="draw-area" id="people-draw-area-donut" ></div>
								<div style="clear: both;"></div> 
								
							</div>
							<!-- places division -->
							<div class="tab-pane fade" id="places">
								<div id='cssmenu3' style="float:left;">
									<ul>
										<li><a href='#'><span>Area of Interest</span></a></li>
										<li><a href='#' ><span>Natural Sciences</span></a>
											<ul>
												<li><a href='#'>Mathematics</a></li>
												<li><a href='#'>Computer and information sciences</a></li>
												<li><a href='#'>Physical sciences</a></li>
												<li><a href='#'>Chemical sciences</a></li>
												<li><a href='#'>Earth and related environmental sciences</a></li>
												<li><a href='#'>Biological sciences</a></li>
												<li><a href='#'>Other natural sciences</a></li>
											</ul>
										</li>
										<li><a href='#' onclick=""><span>Engineering and Technology</span></a>
											<ul>
												<li><a href='#' onclick="">Civil engineering</a></li>
												<li><a href='#'>Electrical engineering, electronic engineering, information engineering</a></li>
												<li><a href='#'>Mechanical engineering</a></li>
												<li><a href='#'>Chemical engineering</a></li>
												<li><a href='#'>Materials engineering</a></li>
												<li><a href='#'>Medical engineering</a></li>
												<li><a href='#'>Environmental engineering</a></li>
												<li><a href='#'>Environmental biotechnology</a></li>
												<li><a href='#'>Industrial Biotechnology</a></li>
												<li><a href='#'>Nano-technology</a></li>
												<li><a href='#'>Other engineering and technologies</a></li>
											</ul>
										</li>
										<li><a href='#' onclick=""><span>Medical and Health Sciences</span></a>
											<ul>
												<li><a href='#' onclick="">Basic medicine</a></li>
												<li><a href='#'>Clinical medicine</a></li>
												<li><a href='#'>Health sciences</a></li>
												<li><a href='#'>Health biotechnology</a></li>
												<li><a href='#'>Other medical sciences</a></li>
											</ul>
										</li>
										<li><a href='#' onclick=""><span>Agricultural Sciences</span></a>
											<ul>
												<li><a href='#' onclick="">Agriculture, forestry, and fisheries</a></li>
												<li><a href='#'>Animal and dairy science</a></li>
												<li><a href='#'>Veterinary science</a></li>
												<li><a href='#'>Agricultural biotechnology</a></li>
												<li><a href='#'>Other agricultural sciences</a></li>
											</ul>
										</li>
										<li><a href='#' onclick=""><span>Social Sciences</span></a>
											<ul>
												<li><a href='#' onclick="">Psychology</a></li>
												<li><a href='#'>Economics and business</a></li>
												<li><a href='#'>Educational sciences</a></li>
												<li><a href='#'>Sociology</a></li>
												<li><a href='#'>Law</a></li>
												<li><a href='#'>Political Science</a></li>
												<li><a href='#'>Social and economic geography</a></li>
												<li><a href='#'>Media and communications</a></li>
												<li><a href='#'>Other social sciences</a></li>
											</ul>
										</li>
										<li><a href='#' onclick=""><span>Humanities</span></a>
											<ul>
												<li><a href='#' onclick="">History and archaeology</a></li>
												<li><a href='#'>Languages and literature</a></li>
												<li><a href='#'>Philosophy, ethics and religion</a></li>
												<li><a href='#'>Art (arts, history of arts, performing arts, music)</a></li>
												<li><a href='#'>Other humanities</a></li>
											</ul>
										</li>
									</ul>
								</div>
								<div class="right-content-div" id="rightDivPlaces">
									<div id="drawarea-places">
										<div id="sri-lanka-map-area"></div>
										<div id="top-institutions-area">
											<div id="top-institutions-menu">
												<label style="font-size: 14px;">Organization: </label>
												<select>
													<option value="All">All</option>
													<option value="University">University</option>
													<option value="Institute">Institute</option>
												</select>&nbsp; &nbsp;
												<label style="font-size: 14px;">Category: </label>
												<select>
													<option value="All">All</option>
													<option value="Products">Products</option>
													<option value="Publications">Publications</option>
													<option value="Patents">Patents</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div style="clear: both;"></div>
							</div>
							<!-- position division -->
							<div class="tab-pane" id="position">
								<table style="border-collapse: collapse; width: 100%;">
									<tr>
										<td style="width: 215px; vertical-align: top;">
											<div id='cssmenu2'  style="float:left;">
												<ul>
													<li><a href='#' onclick="loadPositionFirstLevel()"><span>Global Innovation Index</span></a></li>
													<li><a href='#' onclick="loadPositionSecondLevel('Institutions')"><span>Institutions</span></a>
														<ul>
															<li><a href='#' onclick="">Political environment</a></li>
															<li><a href='#' onclick="">Political stability</a></li>
															<li><a href='#' onclick="">Government effectiveness</a></li>
															<li><a href='#' onclick="">Press freedom</a></li>
															<li><a href='#' onclick="">Regulatory environment</a></li>
															<li><a href='#' onclick="">Regulatory quality</a></li>
															<li><a href='#' onclick="">Rule of law</a></li>
															<li><a href='#' onclick="">Cost of redundancy dismissal, salary weeks</a></li>
															<li><a href='#' onclick="">Business environment</a></li>
															<li><a href='#' onclick="">Ease of starting a business</a></li>
															<li><a href='#' onclick="">Ease of resolving insolvency</a></li>
															<li><a href='#' onclick="">Ease of paying taxes</a></li>
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Human Capital & Research')"><span class="image">Human Capital & Research</span></a>
														<ul>
															<li><a href='#' onclick="">Education</a></li>
															<li><a href='#' onclick="">Current expenditure on education, % GNI</a></li>
															<li><a href='#' onclick="">Public expenditure/pupil, % GDP/cap</a></li>
															<li><a href='#' onclick="">School life expectancy, years</a></li>
															<li><a href='#' onclick="">PISA scales in reading, maths & science</a></li>
															<li><a href='#' onclick="">Pupil-teacher ratio, secondary</a></li>
															<li><a href='#' onclick="">Tertiary education</a></li>
															<li><a href='#' onclick="">Tertiary enrolment, % gross</a></li>
															<li><a href='#' onclick="">Graduates in science & engineering, %</a></li>
															<li><a href='#' onclick="">Tertiary inbound mobility, %</a></li>
															<li><a href='#' onclick="">Gross tertiary outbound enrolment, %</a></li>
															<li><a href='#' onclick="">Research and development (R&D)</a></li>
															<li><a href='#' onclick="">Researchers, headcounts/mn  pop</a></li>
															<li><a href='#' onclick="">Gross expenditure on R&D, % GDP</a></li>
															<li><a href='#' onclick="">QS university ranking, average score top 3</a></li>
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Infrastructure')"><span>Infrastructure</span></a>
														<ul>
															<li><a href='#' onclick="">Information & communication technologies (ICTs)</a></li>
															<li><a href='#' onclick="loadPositionThirdLevel('ICT access')">ICT access</a></li>
															<li><a href='#' onclick="loadPositionThirdLevel('ICT use')">ICT use</a></li>
															<li><a href='#' onclick="">Government’s online service</a></li>
															<li><a href='#' onclick="">E-participation</a></li>
															<li><a href='#' onclick="">General infrastructure</a></li>
															<li><a href='#' onclick="">Electricity output, kWh/cap</a></li>
															<li><a href='#' onclick="">Electricity consumption, kWh/cap</a></li>
															<li><a href='#' onclick="">Logistics performance</a></li>
															<li><a href='#' onclick="">Gross capital formation, % GDP</a></li>
															<li><a href='#' onclick="">Ecological sustainability</a></li>
															<li><a href='#' onclick="">GDP/unit of energy use, 2000 PPP$/kg oil eq</a></li>
															<li><a href='#' onclick="">Environmental performance</a></li>
															<li><a href='#' onclick="">ISO 14001 environmental certificates/bn PPP$ GDP</a></li>
															
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Market sophistication')"><span>Market sophistication</span></a>
														<ul>
															<li><a href='#' onclick="">Credit</a></li>
															<li><a href='#' onclick="">Ease of getting credit</a></li>
															<li><a href='#' onclick="">Domestic credit to private sector, % GDP</a></li>
															<li><a href='#' onclick="">Microfinance gross loans, % GDP</a></li>
															<li><a href='#' onclick="">Investment</a></li>
															<li><a href='#' onclick="">Ease of protecting investors</a></li>
															<li><a href='#' onclick="">Market capitalization, % GDP</a></li>
															<li><a href='#' onclick="">Total value of stocks traded, % GDP</a></li>
															<li><a href='#' onclick="">Venture capital deals/tr PPP$ GDP</a></li>
															<li><a href='#' onclick="">Trade & competition</a></li>
															<li><a href='#' onclick="">Applied tariff rate, weighted mean, %</a></li>
															<li><a href='#' onclick="">Non-agricultural mkt access weighted tariff, %</a></li>
															<li><a href='#' onclick="">Intensity of local competition</a></li>
															
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Business sophistication')"><span>Business sophistication</span></a>
														<ul>
															<li><a href='#' onclick="">Knowledge workers</a></li>
															<li><a href='#' onclick="">Knowledge-intensive employment, %</a></li>
															<li><a href='#' onclick="">Firms offering formal training, % firms</a></li>
															<li><a href='#' onclick="">R&D performed by business, % GDP</a></li>
															<li><a href='#' onclick="">R&D financed by business, %</a></li>
															<li><a href='#' onclick="">GMAT mean score</a></li>
															<li><a href='#' onclick="">GMAT test takers/mn pop. 20–34</a></li>
															<li><a href='#' onclick="">Innovation linkages</a></li>
															<li><a href='#' onclick="">University/industry research collaboration</a></li>
															<li><a href='#' onclick="">State of cluster development</a></li>
															<li><a href='#' onclick="">R&D financed by abroad, %</a></li>
															<li><a href='#' onclick="">JV–strategic alliance deals/tr PPP$ GDP</a></li>
															<li><a href='#' onclick="">Patent families filed in 3+ offices/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">Knowledge absorption</a></li>
															<li><a href='#' onclick="">Royalty & license fees payments, % service imports</a></li>
															<li><a href='#' onclick="">High-tech imports less re-imports, %</a></li>
															<li><a href='#' onclick="">Comm., computer & info. services imports, %</a></li>
															<li><a href='#' onclick="">FDI net inflows, % GDP</a></li>
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Knowledge & technology outputs')"><span>Knowledge & technology outputs</span></a>
														<ul>
															<li><a href='#' onclick="">Knowledge creation</a></li>
															<li><a href='#' onclick="">Domestic resident patent ap/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">PCT resident patent ap/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">Domestic res utility model ap/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">Scientific & technical articles/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">Citable documents H index</a></li>
															<li><a href='#' onclick="">Knowledge impact</a></li>
															<li><a href='#' onclick="">Growth rate of PPP$ GDP/worker, %</a></li>
															<li><a href='#' onclick="">New businesses/th pop. 15–64</a></li>
															<li><a href='#' onclick="">Computer software spending, % GDP</a></li>
															<li><a href='#' onclick="">ISO 9001 quality certificates/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">High- & medium-high-tech manufactures, %</a></li>
															<li><a href='#' onclick="">Knowledge diffusion</a></li>
															<li><a href='#' onclick="">Royalty & license fees receipts, % service exports</a></li>
															<li><a href='#' onclick="">High-tech exports less re-exports, %</a></li>
															<li><a href='#' onclick="">Comm., computer & info. services exports, %</a></li>
															<li><a href='#' onclick="">FDI net outflows, % GDP</a></li>
														</ul>
													</li>
													<li><a href='#' onclick="loadPositionSecondLevel('Creative outputs')"><span>Creative outputs</span></a>
														<ul>
															<li><a href='#' onclick="">Intangible assets</a></li>
															<li><a href='#' onclick="">Domestic res trademark reg/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">Madrid trademark registrations/bn PPP$ GDP</a></li>
															<li><a href='#' onclick="">ICT & business model creation</a></li>
															<li><a href='#' onclick="">ICT & organizational model creation</a></li>
															<li><a href='#' onclick="">Creative goods & services</a></li>
															<li><a href='#' onclick="">Audio-visual & related services exports, %</a></li>
															<li><a href='#' onclick="">National feature films/mn pop. 15–69</a></li>
															<li><a href='#' onclick="">Paid-for dailies, circulation, % pop. 15–69</a></li>
															<li><a href='#' onclick="">Printing & publishing manufactures, %</a></li>
															<li><a href='#' onclick="">Creative goods exports, %</a></li>
															<li><a href='#' onclick="">Online creativity</a></li>
															<li><a href='#' onclick="">Generic top-level domains (TLDs)/th pop. 15–69</a></li>
															<li><a href='#' onclick="">Country-code TLDs/th pop. 15–69</a></li>
															<li><a href='#' onclick="">Wikipedia monthly edits/mn pop. 15–69</a></li>
															<li><a href='#' onclick="">Video uploads on YouTube/pop. 15–69</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</td>
										<td style="vertical-align: top;">
											<div class="position-right-content-div" id="rightDivPosition" style="margin-top: 5px;">
												<div id="position-area">
													<div>
														<div id="position-breadcrumb-div" style="float: left;">
															<ol class="breadcrumb" style="margin-bottom: 0;" id="position-breadcrumb-ol">
																<li><a href="#">Home</a></li>
																<li><a href="#">Library</a></li>
																<li class="active">Data</li>
															</ol>
														</div>
														<div style="width: 80px; float: left;">
															<button type="button" id="toggleMapButton" class="btn" data-toggle="button" style="padding: 2px 12px;" title="Show Map"><img alt="map" src="images/small-world-map.png"></button>
														</div>
														<div style="clear: both;"></div>
													</div>
													<div id="position-radar-wrapper" style="text-align: center;">
														<div id="position-radar-chart" style="height: 455px;"></div>
													</div>
													<div id="position-map-wrapper">
														<div id="position-map" style="height: 455px; margin: auto;"></div>
													</div>
													<div id="position-index-bar-chart" style=""></div>
												</div>
											</div>
										</td>
									</tr>
								</table>
								<div style="clear: both;"></div>
							</div>	
						</div>								
					</td>
				</tr>
			</table>
		</div>
		<!-- tooltip -->
		<div id="tooltip2">
			<div class="tooltip-content">
				<p id="tooltip-title">title of tooltip</p>
				<div class="value">
					<span id="tooltip-value" class="value-part">75</span>
					<span id="tooltip-desc" class="value-total">People</span>
				</div>
			</div>
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg">
				<polygon id="tooltip-triangle" points="0,0 13,0 0,11"></polygon>
			</svg>
		</div>
		<script src="js/jquery/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/home/app.js" type="text/javascript"></script>
	</body>
</html>
