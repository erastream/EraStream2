<html>  
    <head>  
        <title><?=$page_title?></title>  
    </head>  
    <body>
		<?php
			$this->load->helper('form');
			echo form_open('live/AddVid');
			?>
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<form  name="site" action="addvideo.html" method="post">
<label>Video Name</label>
<input type="text" name="name" size="15" maxlength="20" value="" /><br>
<label>Description</label>
<input type="text" name="desc" size="15" maxlength="20" value="" /><br>
<label>View No.</label>
<input type="text" name="view" size="15" maxlength="20" value="" /><br>
<label>Link</label>
<input type="text" name="link" size="15" maxlength="20" value="" /><br>
Date&nbsp;&nbsp;&nbsp;
    Day
     <select name="date"  tabindex="20">
      <option value="0" selected>----</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
	 </select>
	Month
    <select name="date" tabindex="21">
      <option value="0" selected>---</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
	</select>
	Year
     <select name="date" id="DOByear" tabindex="22">
      <option value="0" selected>-----</option>
      <option value="1911">1911</option>
      <option value="1912">1912</option>
      <option value="1913">1913</option>
	</select>
<input type="submit" value="ADD" name="signup" onclick="return btntest_onclick()" />					
</form>
</html>