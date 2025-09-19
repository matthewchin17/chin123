<?php
$conn=mysql_connect("localhost","root","","hotel");

if(!$conn){
 die("Failed");
}

$Email=$_POST['Email'];
$Password=$_POST['Mobile'];

$mysql ="SELECT * FROM hotel WHERE Email='$Email'AND Mobile ='$Mobile'";
$Result = mysqli_query($conn,$mysql);

if(mysqli_num_rows($result)>0){
    echo "Successfully";
    exit();
}
else{
    echo "Failed";
}
mysqli_close($conn);
?>