<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" dir="rtl"><head><meta http-equiv="Content-Type" content="text/html; charset=cp1256" /><title>Welcome </title><meta name="keywords" content="stable template, free css, website templates, web design, html css" /><meta name="description" content="Stable Template is a standards-compliant free website template by templatemo.com" /><link href="http://localhost/ci/templatemo_style.css" rel="stylesheet" type="text/css" /><!-- Contact Form CSS files --><link type='text/css' href='http://localhost/ci/css/contact.css' rel='stylesheet' media='screen' /><style type="text/css">.slideshow { height: 232px; width: 232px; margin: auto }.slideshow img { padding: 15px; border: 1px solid #ccc; background-color: #eee; }</style><!-- include jQuery library --><script type="text/javascript" src="<?php echo base_url(); ?>/js/jquery.js"></script><!-- include Cycle plugin --><script type='text/javascript' src='<?php echo base_url(); ?>/js/jquery.cycle.all.min.js'></script><!--  initialize the slideshow when the DOM is ready --><script type="text/javascript">$(document).ready(function() {$('.slideshow').cycle({    fx:     'slideY',     speed:   300,     timeout: 3000,     next:   '.slideshow',     pause:   1 });});</script>    <head>          <title><?=$page_title?></title>      </head>      <body>  		<div id="templatemo_wrapper_outer">		<div id="templatemo_wrapper">					<!-- preload the images -->		<div style='display:none'>			<img src='img/contact/loading.gif' alt='' />		</div>	<div id="temmplatmeo_header">       		<div id="site_title">          <a href="<?php echo base_url(); ?>" target="_parent">            	���� ���������� <span>���� ���� ���� ��������� �������� ���������</span>            </a>        </div>        	<div id="templatemo_menu">                    <ul>                <li><a href="<?php echo base_url(); ?>" class="current">��������</a></li>                <li><a href="<?php echo (base_url() . 'index.php?/live/movies'); ?>" target="_parent">�������</a></li>                <li><a href="<?php echo (base_url() . 'index.php?/live/mail'); ?>">������</a></li>                <li><a href="<?php echo (base_url() . 'index.php?/live/upload'); ?>">����� �����</a></li>				<li><a href="<?php echo (base_url() . 'index.php?/live/live_channels'); ?>">����� ���</a></li>                <li><a href="#" class='contact' >�����</a></li>            </ul>    	                </div> <!-- end of templatemo_menu -->        </div> <!-- end of templatemo_header -->      <div id="templatemo_banner">  	    	<div class="banner_image"><span></span>			<div class="slideshow">		<img src="<?php echo base_url(); ?>/images/images (8).jpg" height="150" width="300" />		<img src="<?php echo base_url(); ?>/images/Footr_05[1].gif" height="150" width="300"  />		<img src="<?php echo base_url(); ?>/images/images (6).jpg" height="150" width="300"  />		<img src="<?php echo base_url(); ?>/images/180383_194415830581708_118696491486976_541243_958533_s[1].jpg" height="150" width="300"  />		<img src="<?php echo base_url(); ?>/images/CAGLURQ3.jpg" height="150" width="300"  />	</div>				</div>		���� ����������		  </div> <!-- end of templatemo_banner -->        <div id="templatemo_content_wrapper">        	<div id="content">                	<div class="section_w610 divider">        				</div>						<! --------------- Body -----------------------!>				<?php 			require $page;		?>								</div>       <div id="sidebar">	   	   <div id="login">			<? require 'login_view.php'; ?>			</br>				   </div>                	<h2 class="news">���������</h2>                  		<div class="news_section">                            <div class="news_box">                    <h3><a href="#"> ����� 1  </a></h3>                  <p>  ----------------------� </p>                  <div class="date">��  ������, ����� 2010</div>                </div>                                <div class="news_box">                    <h3><a href="#">����� 2</a></h3>                  <p>  ----------------------------------- � </p>                  <div class="date">��  ������, ����� 2010</div>                </div>                <div class="news_box">                    <h3><a href="#">����� 3 </a></h3>                  <p> ------------------------------------� </p>                  <div class="date">��  ������, ����� 2010</div>                </div>								<div class="news_box">                    <h3><a href="#">����� 4</a></h3>                  <p> -------------------------------------� </p>                  <div class="date">��  ������, ����� 2010</div>                </div>				        	</div>                        <div id="testimonial_section">                        	<h2 class="testimonial">����� �������</h2>                                <div class="testimonial_box">                        		<p>���. <a href="#">���� ����</a>�� ���� �� ������ �� �� ���� ��� � ���� ��� �� �� ������ ����<br />           		      <br />   		            <a href="#">��� ����� �������</a>����� ��� ������ ���� ��� �����<br />   		              <br />   		   					  <a href="#">����� ��������</a>�� ������ ���� ������� ����� � ����� ������� ����� ��������� �� ������� <br />   		              <br />   		            <a href="#">����� ��������</a>���� ���� ����� ������ ����� ��� �� ���� ��� ��� �� ���� <br />       		  </div>                          </div>        </div>         	        <div class="cleaner"></div>    	    </div> <!-- end of templatemo_content -->            <div id="templatemo_footer">        	<div class="about">        </div>                <div class="link_section">	        <h3>�������</h3>        	<ul class="footer_menu_list">               </ul>        </div>                <div class="link_section">			<h3>��������</h3>                	<ul class="footer_menu_list">	<li><a href="http://eramax.org" target="_blank">����� eramax</a>            </ul>        </div>                <div class="contactus_section">			</div>					<div class="cleaner"></div>    </div> <!-- end of footer -->        <div id="copyright">    	���� ����� � 2010 <a href="#" target="_parent">���� ����������</a> |         ������ <a href="http://validator.w3.org/check?uri=referer">XHTML</a> &amp;         <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>    </div></div> <!-- end of templatemo_wrapper --></div><!-- Load JavaScript files --><script type='text/javascript' src='http://localhost/ci/js/jquery.simplemodal.js'></script><script type='text/javascript' src='http://localhost/ci/js/contact.js'></script></body></html>