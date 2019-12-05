<cfinclude template="factory.cfm" />

<cfsilent>

	<cfset selectedCountryCode = "" />

	<cfif structKeyExists(FORM,"go")>
		<cfset selectedCountryCode = FORM.egone />
	</cfif>
</cfsilent>

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

			<cfif structKeyExists(FORM,"go")>
				<div class="row mt-1 mb-5">
					<div class="col">
						<cfdump var="#FORM#" />
					</div>
				</div>
			</cfif>

			<cfoutput>
				<form action="" method="POST">
					<div class="row mt-5">
						<div class="col-2 pt-1">
							<label for="egone">Start typing:</label>
						</div>
						<div class="col-3">
							<input type="text" class="form-control country-picker" name="egone" id="egone" value="#selectedCountryCode#" />
						</div>
						<div class="col" id="egone-pickarea"></div>
						<div class="col-1">
							<button type="submit" class="btn btn-success" name="go">Save</button>
						</div>
					</div>
				</form>

				<hr />

				<div class="row mt-1">
					<div class="col-3 pt-2">
						getCountryFromCode("LUX")
					</div>
					<div class="col">
						<input type="text" readonly class="form-control" value="#getCountryFromCode('LUX')#" />
					</div>
				</div>
				<div class="row mt-1">
					<div class="col-3 pt-2">
						getCountryFromCode("XXX")
					</div>
					<div class="col">
						<input type="text" readonly class="form-control" value="#getCountryFromCode('XXX')#" />
					</div>
				</div>
			</cfoutput>

		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		<script src="picker.js"></script>
		<script>
			cpickerProperties({btnClass:"btn btn-outline-secondary mr-1 mb-1"});
		</script>

	</body>
</html>