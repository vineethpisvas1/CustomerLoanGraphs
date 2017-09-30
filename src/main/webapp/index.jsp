<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Administrator View</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
</head>
<body>
	<script src="<c:url value="/Resources/JavaScript/jsFunctions.js" />"></script>
	<div class="container">
		<br> <br>
		<div style="padding-left: 40%; padding-right: 30%;">
			<ul class="nav nav-pills nav-justified">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="pill" href="#customers">Customers</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#loans">Loans</a></li>
				<li class="nav-item">
			</ul>
		</div>
		<div class="tab-content">
			<br> <br>
			<div class="tab-pane active" id="customers" role="tabpanel">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#customercreate" role="tab">Create</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#customerretrieve" role="tab">Retrieve</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#customerupdate" role="tab">Update</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#customerdelete" role="tab">Delete</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<br> <br>
					<div class="tab-pane fade show active" id="customercreate"
						role="tabpanel">
						<form action="create" modelAttribute="customer" method="post"
							name="Create">
							<!-- Text Input Boxes -->
							<input type="hidden" name="CRUD" value="Create">
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
							<!-- Submit Button Box -->
							<div align="center">
								<br>
								<br> <input type="submit" class="btn btn-primary"
									style="font-weight: 700; font-size: 13px" id="signin"
									value="Create" name="operation"> <input type="reset"
									class="btn btn-warning"
									style="font-weight: 700; font-size: 13px"
									style="display:inline" value="Reset" id="reset">
							</div>
							<br> <br>
						</form>
					</div>
					<div class="tab-pane fade" id="customerretrieve" role="tabpanel">customerretrieve</div>
					<div class="tab-pane fade" id="customerupdate" role="tabpanel">customerupdate</div>
					<div class="tab-pane fade" id="customerdelete" role="tabpanel">customerdelete</div>
				</div>
			</div>
			<div class="tab-pane" id="loans" role="tabpanel">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#loancreate" role="tab">Create</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#loanretrieve" role="tab">Retrieve</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#loanupdate" role="tab">Update</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#loandelete" role="tab">Delete</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<br> <br>
					<div class="tab-pane fade show active" id="loancreate"
						role="tabpanel">
						<form action="create" modelAttribute="customer" method="post"
							name="Create">
							<!-- Text Input Boxes -->
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
							<!-- Submit Button Box -->
							<div align="center">
								<br>
								<br> <input type="submit" class="btn btn-primary"
									style="font-weight: 700; font-size: 13px" id="signin"
									value="Create" name="operation"> <input type="reset"
									class="btn btn-warning"
									style="font-weight: 700; font-size: 13px"
									style="display:inline" value="Reset" id="reset">
							</div>
							<br> <br>
						</form>
					</div>
					<div class="tab-pane fade" id="loanretrieve" role="tabpanel">loanretrieve</div>
					<div class="tab-pane fade" id="loanupdate" role="tabpanel">loanupdate</div>
					<div class="tab-pane fade" id="loandelete" role="tabpanel">loandelete</div>
				</div>
			</div>
		</div>


		<%--<div class="tab-content">
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
	</div> --%>
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