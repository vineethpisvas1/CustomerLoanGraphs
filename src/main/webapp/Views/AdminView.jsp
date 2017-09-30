<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>User View</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
	<script src="<c:url value="/Resources/JavaScript/jsFunctions.js" />"></script>
	<c:set var="session1" value="active"></c:set>
	<c:set var="session2" value="inactive"></c:set>
	<c:if test="${!session.equals(session1)}">
		<c:redirect url="index.jsp"></c:redirect>
	</c:if>
	<c:set var="temp1" value="right"></c:set>
	<c:set var="temp2" value="wrong"></c:set>
	<c:set var="temp3" value="nodata"></c:set>
	<div align="center">
		<c:if test="${check.equals(temp1)}">
			<h4>Operation has been successful!</h4>
		</c:if>
		<c:if test="${check.equals(temp2)}">
			<h4>Sorry. The operation couldn't be processed.</h4>
		</c:if>
		<c:if test="${check.equals(temp3)}">
			<h4>Sorry. There is currently no data to show.</h4>
		</c:if>
	</div>
	<div class="jumbotron">
		<div style="float: right">
			<form action="logout" method="post">
				<h3>
					<button type="submit" style="font-weight: 700; font-size: 13px"
						class="btn btn-danger">Logout</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</h3>
			</form>
		</div>
		<!-- Page Header -->
		<div class="page-header container">
			<h2>
				<strong>ADMIN'S HOMEPAGE</strong>
			</h2>
		</div>
	</div>
	<div class="container" style="padding-left: 40px; padding-right: 40px;">
		<ul class="nav nav-tabs nav-inverse">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#home"><b>CREATE</b></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu1"><b>RETRIEVE</b></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu2"><b>UPDATE</b></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu3"><b>DELETE</b></a></li>
		</ul>
		<div class="tab-content">
			<div id="home" class="tab-pane fade show active">
				<form action="create" modelAttribute="customer" method="post"
					name="Create">
					<!-- Text Input Boxes -->
					<input type="hidden" name="CRUD" value="Create">
					<div class="inline"
						style="width: 500px; padding-right: 15px; padding-left: 10px; float: left">
						<br>
						<div class="form-group">
							<label for="usr">Customer Code:</label> <input type="text"
								class="form-control" name="customerCode" path="customerCode"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))"
								required />
						</div>
						<div class="form-group">
							<label for="usr">Name:</label> <input type="text"
								class="form-control"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))"
								name="customerName" path="customerName" required />
						</div>
						<div class="form-group">
							<label for="usr">Address Line 1:</label> <input type="text"
								class="form-control" name="address1" path="address1"
								onkeypress="return checkSize(this)" required />
						</div>
						<div class="form-group">
							<label for="usr">Address Line 2:</label> <input type="text"
								class="form-control" name="address2" path="address2" value=""
								onkeypress="return checkSize(this)" />
						</div>
						<div class="form-group">
							<label for="usr">Pin Code:</label> <input type="text"
								class="form-control" name="pincode" path="pincode"
								onkeypress="return (isInt(event) && checkSize(this))" required />
						</div>
						<br>
					</div>
					<div class="inline"
						style="width: 500px; padding-top: 7px; padding-right: 10px; padding-left: 15px; float: right">
						<br>
						<div class="form-group">
							<label for="usr">E-mail:</label> <input type="text"
								class="form-control" name="email" path="username" required />
						</div>
						<div class="form-group">
							<label for="usr">Contact Number:</label> <input type="text"
								class="form-control" name="contactNumber" path="contactNumber"
								onkeypress="return (isInt(event) && checkSize(this))" />
						</div>
						<div class="form-group">
							<label for="usr">Primary Contact Person:</label> <input
								type="text" class="form-control" name="primaryContactPerson"
								path="primaryContactPerson"
								onkeypress="return (isAlphabetSpace(event) && checkSize(this))"
								required />
						</div>
						<br>
						<div class="form-group">
							<label for="usr">Active/Inactive Flag:</label><br> <label
								class="radio-inline"><input type="radio"
								name="optradio2" path="flag" value="A" required>&nbsp;&nbsp;Active</label>&nbsp;&nbsp;&nbsp;&nbsp;<label
								class="radio-inline"><input type="radio"
								name="optradio2" path="flag" value="I" required>&nbsp;&nbsp;Inactive</label>
						</div>
						<br>
						<div class="form-group">
							<input type="hidden" class="form-control" name="createDate"
								path="createDate" />
						</div>
						<div class="form-group">
							<input type="hidden" class="form-control" name="createdBy"
								path="createdBy" value="${username}" />
						</div>
					</div>
					<br>
					<!-- Submit Button Box -->
					<div align="center" style="padding-top: 400px">
						<input type="submit" class="btn btn-primary"
							style="font-weight: 700; font-size: 13px" id="signin"
							value="Create" name="operation"> <input type="reset"
							class="btn btn-warning" style="font-weight: 700; font-size: 13px"
							style="display:inline" value="Reset" id="reset">
					</div>
					<br> <br>
				</form>
			</div>

			<div id="menu1" class="tab-pane fade">
				<br>
				<form action="retrieve" modelAttribute="customer" method="post"
					name="Retrieve">
					<!-- Text Input Boxes -->
					<input type="hidden" name="CRUD" value="Retrieve">
					<div class="inline" style="width: 500px; float: left">
						<div class="form-group">
							<label for="usr">View:</label><br> <label
								class="radio-inline"><input type="radio"
								name="optradio1" value="Specific Record"
								onclick="specificRecordView()" required>&nbsp;&nbsp;Specific
								record</label>&nbsp;&nbsp;&nbsp;&nbsp; <label class="radio-inline"><input
								type="radio" name="optradio1" value="All Records"
								onclick="allRecordsView()" required>&nbsp;&nbsp;All
								records</label>
						</div>
						<div class="form-group" id="customerCodeDiv" style="display: none">
							<label for="usr">Customer Code:</label> <input type="text"
								class="form-control" name="customerCode" id="customerCode"
								path="customerCode"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))" />
						</div>
						<br>
						<!-- Submit Button Box -->
						<div>
							<input type="submit" class="btn btn-primary"
								style="font-weight: 700; font-size: 13px" id="signin"
								value="Retrieve" name="operation"> <input type="reset"
								class="btn btn-warning"
								style="font-weight: 700; font-size: 13px" style="display:inline"
								onclick="allRecordsView()" value="Reset" id="reset">
						</div>
						<br> <br>
					</div>
				</form>
			</div>

			<div id="menu2" class="tab-pane fade">
				<br>
				<form action="update" modelAttribute="customer" method="post"
					name="Update">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="usr"><input
						type="checkbox" value="off" onclick="showHide(this)"
						name="customerNameBox" id="customerName">&nbsp;&nbsp;Name&nbsp;</label>
					<label for="usr"><input type="checkbox" value="off"
						onclick="showHide(this)" name="address1Box" id="address1">&nbsp;&nbsp;Address
						Line 1&nbsp;</label> <label for="usr"><input type="checkbox"
						value="off" onclick="showHide(this)" name="address2Box"
						id="address2">&nbsp;&nbsp;Address Line 2&nbsp;</label> <label
						for="usr"><input type="checkbox" value="off"
						onclick="showHide(this)" name="pincodeBox" id="pincode">&nbsp;&nbsp;Pin
						Code&nbsp;</label> <label for="usr"><input type="checkbox"
						value="off" onclick="showHide(this)" name="emailBox" id="email">&nbsp;&nbsp;E-mail&nbsp;</label>
					<label for="usr"><input type="checkbox" value="off"
						onclick="showHide(this)" name="contactNumberBox"
						id="contactNumber">&nbsp;&nbsp;Contact Number&nbsp;</label> <label
						for="usr"><input type="checkbox" value="off"
						onclick="showHide(this)" name="primaryContactPersonBox"
						id="primaryContactPerson">&nbsp;&nbsp;Primary Contact
						Person&nbsp;</label> <label for="usr"><input type="checkbox"
						value="off" onclick="showHide(this)" name="flagBox" id="flag">&nbsp;&nbsp;Active/Inactive
						Flag&nbsp;</label> <br>
					<!-- Text Input Boxes -->
					<input type="hidden" name="CRUD" value="Update">
					<div class="inline"
						style="width: 500px; padding-right: 15px; padding-left: 10px; float: left">
						<br>
						<div class="form-group">
							<label for="usr">Customer Code:</label> <input type="text"
								class="form-control" name="customerCode"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))"
								required />
						</div>
						<div class="form-group">
							<label for="usr">Name:</label> <input type="text"
								class="form-control"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))"
								name="customerName" disabled />
						</div>
						<div class="form-group">
							<label for="usr">Address Line 1:</label> <input type="text"
								class="form-control" name="address1"
								onkeypress="return checkSize(this)" disabled />
						</div>
						<div class="form-group">
							<label for="usr">Address Line 2:</label> <input type="text"
								class="form-control" name="address2"
								onkeypress="return checkSize(this)" disabled />
						</div>
						<div class="form-group">
							<label for="usr">Pin Code:</label> <input type="text"
								class="form-control" name="pincode"
								onkeypress="return (isInt(event) && checkSize(this))" disabled />
						</div>
						<br>
					</div>
					<div class="inline"
						style="width: 500px; padding-top: 7px; padding-right: 10px; padding-left: 15px; float: right">
						<br>
						<div class="form-group">
							<label for="usr">E-mail:</label> <input type="text"
								class="form-control" name="email" disabled />
						</div>
						<div class="form-group">
							<label for="usr">Contact Number:</label> <input type="text"
								class="form-control" name="contactNumber"
								onkeypress="return (isInt(event) && checkSize(this))" disabled />
						</div>
						<div class="form-group">
							<label for="usr">Primary Contact Person:</label> <input
								type="text" class="form-control" name="primaryContactPerson"
								onkeypress="return (isAlphabetSpace(event) && checkSize(this))"
								disabled />
						</div>
						<div class="form-group">
							<label for="usr">Active/Inactive Flag:</label><br> <label
								class="radio-inline"><input type="radio" name="flag"
								value="A" disabled>&nbsp;&nbsp;Active</label>&nbsp;&nbsp;&nbsp;&nbsp; <label class="radio-inline"><input
								type="radio" name="flag" value="I" disabled>&nbsp;&nbsp;Inactive</label>
						</div>
						<br>
						<div class="form-group">
							<input type="hidden" class="form-control" name="modifiedBy"
								value="${username}" />
						</div>
					</div>
					<br>
					<!-- Submit Button Box -->
					<div align="center" style="padding-top: 400px">
						<input type="submit" class="btn btn-primary"
							style="font-weight: 700; font-size: 13px" id="signin"
							value="Update" name="operation"> <input type="reset"
							onclick="resetUpdate()" class="btn btn-warning"
							style="font-weight: 700; font-size: 13px" style="display:inline"
							value="Reset" id="reset">
					</div>
					<br> <br>
				</form>
			</div>

			<div id="menu3" class="tab-pane fade">
				<br>
				<form action="delete" modelAttribute="customer" method="post"
					name="Delete">
					<!-- Text Input Boxes -->
					<input type="hidden" name="CRUD" value="Delete">
					<div class="inline" style="width: 500px; float: left">
						<div class="form-group" id="customerCodeDiv">
							<label for="usr">Customer Code:</label> <input type="text"
								class="form-control" name="customerCode" id="customerCode"
								onkeypress="return (isAlphanumeric(event) && checkSize(this))"
								required />
						</div>
						<br>
						<!-- Submit Button Box -->
						<div>
							<input type="submit" class="btn btn-primary"
								style="font-weight: 700; font-size: 13px" id="signin"
								value="Delete" name="operation"> <input type="reset"
								class="btn btn-warning"
								style="font-weight: 700; font-size: 13px" style="display:inline"
								value="Reset" id="reset">
						</div>
						<br> <br>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Script -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
</body>
</html>