<?php
$ccc = '</br></br>';
foreach ($comments as $comment) {
    $ccc = $ccc. $comment->username . '</br> ���� : ';
	$ccc = $ccc. $comment->text . '</br></br>';
}
echo $ccc;
?>


		<?php
			$this->load->helper('form');
			echo form_open('live/new_comment');
			?>
			
		<input type="hidden" name="video_id" value="<?=$video_id?>"/>
		<table><tr><td>
		<? 		if(isset($username) == False) { ?>
			
��� ��������:</td><td><input type="text" name="username"/></td></tr><tr><td>
������ ����������:</td><td><input type="text" name="email"/></td></tr><tr><td>
<?}?>
������� ��� ������:</td><td>
<textarea name="text" cols=40 rows=4>
</textarea></td></tr><tr><td></td><td>
<input type=submit class="button_01"value="����"></td></tr></table>
</form>

