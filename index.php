<?php

	include "factory.php";

	$selectedCountryCode = "";

	if ( isset($_POST["go"]) ) {
		$selectedCountryCode = $_POST["egone"];
	}

?>

<!doctype html>
<html lang="en">
	
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto&display=swap" />

		<title>Country picker demo</title>
	</head>
	
	<body>
		<div class="container mt-5 mb-5">
			<div class="row">
				<div class="col">
					<h1>Select a new country</h1>
				</div>
			</div>

			<?php if ( isset($_POST["go"]) ) { ?>
				<div class="row mt-1 mb-5">
					<div class="col">
						<?php var_dump($_POST); ?>
					</div>
				</div>
			<?php } ?>

			<form action="" method="POST">
				<div class="row mt-5">
					<div class="col-2 pt-1">
						<label for="egone">Start typing:</label>
					</div>
					<div class="col-3">
						<input type="text" class="form-control country-picker" name="egone" id="egone" value="<?php print $selectedCountryCode; ?>" />
					</div>
					<div class="col pt-1" id="egone-pickarea"></div>
					<div class="col-1">
						<button type="submit" class="btn btn-success" name="go">Save</button>
					</div>
				</div>
			</form>

		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		<script src="picker.js"></script>

	</body>
</html>