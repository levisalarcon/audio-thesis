<?php
include_once('connect.php');

$start = $_POST['start'];
$end = $_POST['end'];

    
if (mysql_query("INSERT INTO Lecture10 VALUES('$start','$end','')"))    
    echo '<script type="text/javascript">alert("your labels has been registered,awesome!");</script>';
    else
    echo '<script type="text/javascript">alert("something went wrong,please try again!");</script>';


   $myFile = "lecture10.txt";
   $fo = fopen($myFile, 'w') or die("can't open file");
   $data_query=mysql_query("SELECT start,end,segment from Lecture10");
     while($data=mysql_fetch_array($data_query))
   $stringData.= $data['start']." ".$data['end']." ".$data['segment']."\n";
   fwrite($fo, $stringData);
   fclose($fo);


   $myFile2 = "10.html";
   $fo2 = fopen($myFile2, 'w') or die("can't open file");
   $data2_query2=mysql_query("SELECT start,end,segment from Lecture10");
     while($data2=mysql_fetch_array($data2_query2))
   $stringData2.= $data2['start']."&nbsp"."&nbsp"."&nbsp"."&nbsp"."&nbsp"."&nbsp".$data2['end']."&nbsp"."&nbsp"."&nbsp"."&nbsp"."&nbsp"."&nbsp".$data2['segment']."<br>"."<br>";
   fwrite($fo2, $stringData2);
   fclose($fo2);
?>            



