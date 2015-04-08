<?php
include_once('connect.php');



    
if (mysql_query("TRUNCATE Lecture1"))    
    echo '<script type="text/javascript">alert("your labels has been deleted,awesome!");</script>';
    else
    echo '<script type="text/javascript">alert("something went wrong,please try again!");</script>';

   $myFile = "lecture1.txt";
   $fo = fopen($myFile, 'w') or die("can't open file");
   $data_query=mysql_query("SELECT start,end,segment from Lecture1");
     while($data=mysql_fetch_array($data_query))
   $stringData.= $data['start']." ".$data['end']." ".$data['segment']."\n";
   fwrite($fo, $stringData);
   fclose($fo);
?>            



