		<?php
			$this->load->helper('form');
			echo form_open('live/newUser');
			?>
		<table><tr><td>
		ÇבÇÓד ÇבÇזב:</td><td> <input type="text" name="first_name"></input></td></tr>
		<tr><td>ÇבÇÓד ÇבËÇהל :</td> <td><input type="text" name="last_name"></input></td></tr>
		<tr><td>ÇÓד ÇבדÓÊÎÏד :</td><td> <input type="text" name="username"></input></td></tr>
		<tr><td>‗בדÉ ÇבÓÑ :</td><td> <input type="password" name="password"></input></td></tr>
		<tr><td>ÇבÈÑםÏ ÇבÇב‗ÊÑזהל :</td><td>  <input type="text" name="email"></input></td></tr>
		<tr><td>ÇבהזÚ :</td><td> <input type="radio" name="sex" value="0" text="male">Ð‗Ñ</input>
		<input type="radio" name="sex" value="1" text="Female">ÇהËל</input></td></tr>
		<tr><td></td><td><input class="button_02" type="submit" value="ÊÓÌםב דÓÊÎÏד ÌÏםÏ"></input></td></tr>
		</table>
		<?php echo form_close(); ?>
		
		