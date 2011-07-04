<?php
$ccc = '</br></br>';
foreach ($comments as $comment) { ?>
<div class="comx">
<ol class="commentlist">
			<li class="comment even thread-even depth-1" id="comment-1441">
				<div id="div-comment-1441" class="comment-body">
				<div class="comment-author vcard">
		<img alt="" src="http://localhost/ci/img/thumb_male.jpg" class="avatar avatar-32 photo" height="32" width="32">		<cite class="fn"><a href="#" rel="external nofollow" class="url"><?=$comment->username?></a></cite> <span class="says">םÞזב:</span>		</div>

		<div class="comment-meta commentmetadata"><a href="#">
			<?=$comment->date?></a>		</div>

		<p><?=$comment->text?></p>

		</div>
		
		</li>
		
	</ol>
	</div>


<?}?>


		<?php
			$this->load->helper('form');
			echo form_open('live/new_comment');
			?>


	  </br>
	  </br>
		<input type="hidden" name="video_id" value="<?=$video_id?>"/>
		<table><tr><td>
		<? 		if(isset($username) == False) { ?>
			
ÇÓד ÇבדÓÊÎÏד:</td><td><input type="text" name="username"/></td></tr><tr><td>
ÇבÈÑםÏ ÇבÇב‗ÊÑזהל:</td><td><input type="text" name="email"/></td></tr><tr><td>
<?}?>
ÇבÊÚבםÞ Úבל ÇבÝÏםז:</td><td>
<textarea name="text" cols=40 rows=4>
</textarea></td></tr><tr><td></td><td>
<input type=submit class="button_01"value="ÇÑÓב"></td></tr></table>
</form>

