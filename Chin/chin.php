<?php
$conn=mysqli_connect("localhost","root","","hotel");

if(!$conn){
 die("Failed");
}

$Email=$_POST['Email'];
$Password=$_POST['Password'];

$mysql ="SELECT * FROM guesttable WHERE Email='$Email'AND Password ='$Password'";
$result = mysqli_query($conn,$mysql);

if(mysqli_num_rows($result)>0){
    echo "Successful";
    exit();
}
else{
    echo "Failed";
}
mysqli_close($conn);
?>