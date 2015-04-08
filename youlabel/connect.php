<?php
$conn = mysql_connect("mysql11.000webhost.com","a3258441_tesis","tesis123");
if (!$conn) { die('Could not connect to MySQL: ' . mysql_error());
 } echo 'Database On'; 
//mysql_close($conn);
$db = mysql_select_db("a3258441_labels");          
?>         

