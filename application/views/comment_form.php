		<?php
			$this->load->helper('form');
			echo form_open('live/new_comment');
			?>
			<br><br><br><br>
<form method=post="http://www.kumquat.com/demo">
<input type="hidden" name="video_id" value="<?=$video_id?>"/>
<table><tr><td>
��� ��������:</td><td><input type="text" name="username"/></td></tr><tr><td>
������ ����������:</td><td><input type="text" name="email"/></td></tr><tr><td>
������� ��� ������:</td><td>
<textarea name="text" cols=40 rows=4>
</textarea></td></tr><tr><td></td><td>
<input type=submit value="����"></td></tr></table>
</form>