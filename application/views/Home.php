<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 50px;
}
a {
    color: green;
    text-decoration: none;
    font-size: 20px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<a href='<?php echo site_url('Baru/school_management')?>'>Home a bout school</a> |
		<a href='<?php echo site_url('Baru/teacher_management')?>'>Teacher</a> |
		<a href='<?php echo site_url('Baru/students_management')?>'>Students</a> |
		<a href='<?php echo site_url('Baru/mapel_management')?>'>Mata Pelajaran</a> | 
		<a href='<?php echo site_url('Baru/schedule_management')?>'>Schedule</a> |
		<a href='<?php echo site_url('Baru/parents_management')?>'>Parents</a> |
		<a href='<?php echo site_url('Baru/contact_management')?>'>Contact Us</a>|
	</div>
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
