
<ul class="recordedShowThumbsV4 clearAfter" style="list-style:none;">
<?php foreach ($movies as $movie) { $lk = 'index.php/live/show/'.$movie->id; ?>
	<li class="firstinrow">
		<a href="<?=$lk?>" class="shadowbox">
			<img src="<?=$movie->thumb?>" alt="<?=$movie->name?>" width="192" height="108" class="lazyloaded">
		</a>
		<h4><a href="<?=$lk?>"><?=$movie->name?></a></h4>
		<small> view: <?=$movie->view?></small>
	</li>
	<?}?>
</ul>