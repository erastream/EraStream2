<html>  
    <head>  
        <title>DONEEEEEEEEEE</title>  
    </head>  
    <body>  
		
		<h3>DONEEEEEEEEEE
		</br>
		 <?php
			//$this->load->model('live_model');

		 $t = $this->session->userdata('loged');
		 if($t == true) echo 'welcome '.$this->session->userdata('username');
		 else $this->load->view('login_view');
		 ?>
		
		
		
    </body>  
</html>