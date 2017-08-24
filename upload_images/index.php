<?php

		$msg = "";
		// if upload button is pressed...
		
		if (isset($_POST['upload'])) {

		// path to store the uploaded image....

		$target = "images/".basename($_FILES['image']['name']);

		// conection to the database...

		$db = mysqli_connect("localhost","root","","photos");

		// get all the submitted data....

		$image = $_FILES['image']['name'];
		$text = $_POST['text'];

		$sql = "INSERT INTO images (image,text) VALUES ('$image','$text')";
		$result = mysqli_query($db,$sql); // stores the submitted data in tha database...
		if ($result) {
		 echo "image upload to the database";
		}
		// now move the uploaded images to the folder : images....

		if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {

			$msg = "image uploaded successfully";

			}

			else

			{

			$msg = "problem in uploading a image";

			}

		}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Image Upload</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<!--container start here-->
<div class="container">
	<div class="row">
		<div class="col-md-6 well">
			<form action="index.php" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="size" value="1000000">
				<input type="file" name="image">
				<textarea name="text" cols="40" rows="4" placeholder="say something about image"></textarea><br>
				<input type="submit" name="upload" value="upload image">
			</form>
		</div>
		<div class="col-md-6 well">
			<?php

				$db = mysqli_connect("localhost","root","","photos");
				$sql = "SELECT * FROM images";
				$result  = mysqli_query($db,$sql);
				while ($row = mysqli_fetch_array($result)) {
					echo "<div>";
						echo "<img src = 'images/".$row['image']."' width='200px' height = '200px' alt = 'image not found'>";
						echo "<p>".$row['text']."</p>";
					echo "</div>";
				}
			?>
		</div>
	</div>
</div>
<!--container close here-->
</body>
</html>