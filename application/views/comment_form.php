<?php
$ccc = '</br></br>';
foreach ($comments as $comment) { ?>
	<div class="comx">
	<ul class="comment">
	<li id="comment_2520527" class="clearfix comment comment_2520527 userid_167224057">
	 <span> 
	 <div id="2520527" class="avatar female offline">
	 <a href="/nor201104" title="nor201104 | ??? ?????? | ???? | 20 ???/?????" class="imageWrap person">
	  <img src="<?echo base_url() . 'img/thumb_male.jpg' ;?>" alt="" width="80" height="60">
	 </a>
	 <a href="/nor201104" title="nor201104 | ??? ?????? | ???? | 20 ???/?????" class="nick person">
	  <span><?=$comment->username?></span> </a>
	<span class="age">20</span></div>
	 </span>
	 <p> 
	  
	 <a href="/nor201104" class="displayName"><?= $comment->username?></a>
		  <small class="dimmed"> <?=$comment->date?> </small>
	 </p>
	 <p class="body smiley">
	 <?=$comment->text?> 
	 
	 </p>
	  <hr>
	  </li>
	  </ul>
	</div>

<?}?>


		<?php
			$this->load->helper('form');
			echo form_open('live/new_comment');
			?>
		</br>
	  </br>
	  </br>		</br>
	  </br>	  </br>		</br>
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

