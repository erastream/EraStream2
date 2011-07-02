	<?php 
	$this->load->helper('form');
	echo form_open_multipart('live/do_upload2');?>

	
	Video Name<br><input type="text" name="name"  /><br>
	Description<br><input type="text" name="desc"  /><br>
	<input type="file" name="fx"  />
	<br /><br />
	<input class="button_01" type="submit" value="ÇÖÇÝÉ" />
	</form>
		<?php
			$this->load->helper('form');
			echo form_open('live/add_rate');
			?>
<form  name="rate" >
User Name<br><input type="text" name="username"><br>
Video Name<br><input type="text" name="name"><br>
Rate Value<br><input type="text" name="value"><br>
<input class="button_01" type="submit" value="add"></input>
</form>