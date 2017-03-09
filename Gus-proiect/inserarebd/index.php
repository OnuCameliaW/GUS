<!doctype html>

<html>

<head>

</head>

<body>

	<form action="index.php" method="POST" enctype="multipart/form-data">

		<p>File:<input type="file" name="image"></p>
		<br>
		<p>Dificultate:<input type="text" name="dificultate"></p>
		<br>
		<input type="submit" value="Upload">

	</form>



	<?php

		mysql_connect("sql205.byethost7.com", "b7_16118976", "camius");

		mysql_select_db("b7_16118976_databaseimage");
		//require_once('connect.php');

		$file=$_FILES['image']['tmp_name'];
		$dificultate=isset($_POST['dificultate']) ? $_POST['dificultate'] : '';;


		if(!isset($file))

			echo "Please select an image.";

		else

		{

			 $image=addslashes(file_get_contents($_FILES['image']['tmp_name']));

			 $image_name=addslashes($_FILES['image']['name']);

			 $image_size=getimagesize($_FILES['image']['tmp_name']);

			$image_name = substr($image_name, 0, -4);

			 if($image_size==FALSE)

			 	echo "That`s not an image";

			 else{

			 	if(!$insert=mysql_query("Insert into store values ('','$image_name','$image','$dificultate')"))

			 		echo "Problem uploading image";

			 	else

			 	{

			 		$lastid=mysql_insert_id();

			 		echo "Image uploaded.<p />Your image:<p /><img src=get.php?id=$lastid>";

			 	}



			 }

		}

	?>

</body>

</html>