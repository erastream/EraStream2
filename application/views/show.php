<script type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js"></script><p id="container1">Please install the Flash Plugin</p><script type="text/javascript">  var flashvars = { file:'<?echo base_url().$filepath;?>',autostart:'true' };  var params = { allowfullscreen:'true', allowscriptaccess:'always' };  var attributes = { id:'player1', name:'player1' };  swfobject.embedSWF('<?echo base_url();?>player.swf','container1','700','500','9.0.115','false',    flashvars, params, attributes);</script><?php require 'comment_form.php'; ?>