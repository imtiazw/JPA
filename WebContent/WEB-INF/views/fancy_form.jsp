<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css" />

<!-- Scripts -->
<script
	src="//ajax.googleapis.com/ajax/libs/mootools/1.3.0/mootools-yui-compressed.js"></script>
<script src="https://code.jquery.com/jquery-1.11.0.min.js"
	type="text/javascript"></script>

<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"
	type="text/javascript"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"
	type="text/javascript"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"
	type="text/javascript"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.4.0/lang/en-gb.js"
	type="text/javascript"></script>

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />


<!-- bootstrap JavaScript -->
<script type="text/javascript">
	$(function() {
		$('#flight_time').datetimepicker();
		$('#passenger_date_of_birth').datetimepicker();
		var date_input = $('input[name="date"]'); //our date input has the name "date"
		var container = $('.bootstrap-iso form').length > 0 ? $(
				'.bootstrap-iso form').parent() : "body";
		var options = {
			format : 'mm/dd/yyyy',
			container : container,
			todayHighlight : true,
			autoclose : true,
		};
		date_input.datepicker(options);
	});
</script>

</head>
<body class="container">
	<div>
		<p class="h1">Add Flight and Airplane</p>
	</div>
	<form method="post" action="AddFlight">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="flight_from">From</label> <select class="form-control"
						required id="flight_from" name="flight_from">
						<option value="paris">PARIS</option>
						<option value="nice">NICE</option>
						<option value="doha">DOHA</option>
						<option value="islamabad">ISLAMABAD</option>
						<option value="karachi">KARACHI</option>
						<option value="amsterdam">AMSTERDAM</option>
						<option value="new_yark">NEW YORK</option>
					</select>
				</div>
				<div class="form-group">
					<label for="destination">To</label> <select class="form-control"
						required id="destination" name="destination">
						<option value="paris">PARIS</option>
						<option value="nice">NICE</option>
						<option value="doha">DOHA</option>
						<option value="islamabad">ISLAMABAD</option>
						<option value="karachi">KARACHI</option>
						<option value="amsterdam">AMSTERDAM</option>
						<option value="new_yark">NEW YORK</option>
					</select>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="flight_time">Time of flight</label>
					<div id='flight_time'>
						<input type='text' class="form-control input-group date" value=""
							required name="flight_time" />
					</div>
				</div>
				<div class="form-group">
					<label for="price">Price</label> <input type="number"
						class="form-control" required id="price" name="price" min="0"
						value="0">
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="manufacturer">Manufacturer</label> <input
						class="form-control" type="text" value="" required
						id="manufacturer" name="manufacturer">
				</div>
				<div class="form-group">
					<label for="model">Model Name</label> <input class="form-control"
						type="text" value="" required id="model" name="model">
				</div>
				<div class="form-group">
					<label for="seating">Seating</label> <input class="form-control"
						type="number" id="seating" name="seating" min="20" max="400"
						value="" step="">
				</div>
			</div>
			<button type="submit" class="btn btn-primary btn-lg">Add
				flight and airplane</button>
		</div>
	</form>
	<div>
		<h1>Add Pilot to Flight</h1>
	</div>
	<form method="post" action="AddPilotToFlight">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="fist_name">First Name</label> <input
						class="form-control" type="text" value="" id="first_name"
						name="first_name">
				</div>
				<div class="form-group">
					<label for="last_name">Last Name</label> <input
						class="form-control" type="text" value="" id="last_name"
						name="last_name">
				</div>
				<div class="form-group">
					<label for="license">License</label> <input class="form-control"
						type="number" value="" id="license" name="license">
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="pilot_rank">Pilot Rank</label> <select
						class="form-control" id="pilot_rank" name="pilot_rank">
						<option value="captain">Captain</option>
						<option value="first_pilot">First Pilot</option>
						<option value="junior_pilot">Junior Pilot</option>
					</select>
				</div>
				<div class="form-group">
					<label for="flight_id">Flight ID</label> <input type="text"
						class="form-control" value="" id="flight_id" required name="flight_id">
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-lg">Add
			pilot to flight</button>
	</form>
	<div>
		<h1>Add Passenger</h1>
	</div>
	<form method="post" action="AddPassenger">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="first_name_passenger">First Name</label> <input
						type="text" class="form-control" value=""
						id="first_name_passenger" name="first_name_passenger">
				</div>
				<div class="form-group">
					<label for="last_name_passenger">First Name</label> <input
						type="text" class="form-control" value="" id="last_name_passenger"
						name="last_name_passenger">
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label class="control-label" for="date">Date of birth</label> <input
						class="form-control" id="date" name="date" type="text" />
				</div>
				<div class="form-group">
					<label for="passenger_gender">Gender</label> <select
						class="form-control" id="passenger_gender" name="passenger_gender">
						<option value="male">Male</option>
						<option value="female">Female</option>
					</select>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="flight_class">Flight Class</label> <select
						class="form-control" id="flight_class" name="flight_class">
						<option value="coach">Coach</option>
						<option value="business">Business</option>
						<option value="first">First</option>
					</select>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-lg">Add
			Passenger</button>
	</form>
	<div>
		<h1>Add Passenger to Flight</h1>
	</div>
	<form method="post" action="AddPassengerToFlight">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="passenger_id">Add a passenger with an ID of</label> <input
						type="text" class="form-control" value="" id="passenger_id"
						required name="passenger_id">
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="flight_id">to a flight with an ID of</label> <input
						type="text" class="form-control" value="" id="flight_id"
						required name="flight_id">
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-lg">Add
			Passenger to Flight</button>
	</form>
	<div>
		<h1>Add Flight to Passenger</h1>
	</div>
	<form method="post" action="">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="passenger_id_rev">Add a flight with an ID of</label> <input
						type="text" class="form-control" value="" id="passenger_id_rev"
						name="passenger_id_rev">
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12">
				<div class="form-group">
					<label for="flight_id_rev">to a passenger with an ID of</label> <input
						type="text" class="form-control" value="" id="flight_id_rev"
						name="flight_id_rev">
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary btn-lg">Add
			Flight to Passenger</button>
	</form>
</body>
</html>