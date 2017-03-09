<?php
 $host="localhost"; // Host name 
$username="656636_robot"; // Mysql username 
$password="bogdaN12"; // Mysql password 
$db_name="robotulamuzant_clanteam_bancuri"; // Database name 
$tbl_name="members"; // Table name 

// Connect to server and select databse.
 $con = mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
 mysql_select_db("$db_name")or die("cannot select DB");

// username and password sent from form 
 $myusername=$_POST['username']; 
 $mypassword=$_POST['password']; 
// To protect MySQL injection (more detail about MySQL injection)
 $myusername = stripslashes($myusername);
 $mypassword = stripslashes($mypassword);
 $myusername = mysql_real_escape_string($myusername);
 $mypassword = mysql_real_escape_string($mypassword);

$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
 $result=mysql_query($sql);

// Mysql_num_row is counting table row
 $count=mysql_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){
	
	
 
// Register $myusername, $smypassword and redirect to file "login_success.php"
 session_register("$myusername");
 mysql_select_db("$db_name", $con);
 $sql = "CREATE TABLE IF NOT EXISTS $myusername ( id_banc INT(10), nota INT(10) )";
 mysql_query($sql);
 session_start();
 $_SESSION['login'] = "1";
 echo "logged in<br />";
 }
 else {
 die("Wrong Username or Password");
 }
 ?>



 <html>
<body>
<?php
echo "Logged in";
 ?>
</div>
 </body>
 </html>