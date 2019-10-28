<?php
	// wicd php gui - router script
	// 28.10.2019

	// url with index.php destroys application - prevent this
	if(strtok(substr($_SERVER['REQUEST_URI'], strrpos($_SERVER['REQUEST_URI'], '/') + 1), '?') === 'index.php')
	{
		http_response_code(404);
		exit();
	}

	// abort script - load destination file
	return false;
?>