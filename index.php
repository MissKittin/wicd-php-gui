<?php
	// wicd php gui - server-admin-page module
	// 22.10.2019 - 26.10.2019

	// path settings
	$wicd_root_html=''; // none if placed in doc root
	$wicd_root_php=$_SERVER['DOCUMENT_ROOT'] . $wicd_root_html;

	// config
	$wicd_range_icons=$wicd_root_html . '/range_icons'; // path to range icons
	$wicd_theme='default' // select theme
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Wicd</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<?php echo $wicd_root_html; ?>/style.php?root=<?php echo $wicd_root_html; ?>&theme=<?php echo $wicd_theme; ?>">
		<script src="<?php echo $wicd_root_html; ?>/jquery-3.3.1.min.js"></script>
		<script src="<?php echo $wicd_root_html; ?>/script.php?root=<?php echo $wicd_root_html; ?>&icons=<?php echo $wicd_range_icons; ?>"></script>
	</head>
	<body>
		<div id="content">
			<?php include($wicd_root_php . '/body.php'); ?>
		</div>
	</body>
</html>