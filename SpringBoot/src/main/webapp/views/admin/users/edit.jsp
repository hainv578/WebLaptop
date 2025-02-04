<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/css/bootstrap.min.css" ></link>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light px-5">
	  <a class="navbar-brand" href="#">Navbar</a>
	
	  <div class="collapse navbar-collapse">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Users</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Categories</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Products</a>
	      </li>
	    </ul>
	  </div>
	</nav>

	<div class="mt-5 col-10 offset-1">
		<form:form
			modelAttribute="user"
			method="POST"
			action="${ pageContext.request.contextPath }/admin/users/update/1">
			<input type="hidden" name="_method" value="put" />
			
			
			
			<div class="form-group mt-3">
				<label for="name">Name</label>
			    <form:input path="name" class="form-control" id="name" name="name" autocomplete="off" />
				<form:errors path="name" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<label for="email">Email</label>
			    <form:input path="email" class="form-control" id="email" name="email" autocomplete="off" />
				<form:errors path="email" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<label for="password">Password</label>
				<form:password path="password" value="*********" name="password" class="form-control" disabled="true"/>
				<form:errors path="password" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<label for="dob">Date of Birth</label>
 			    <%-- <form:input type="date" path="dob" class="form-control" id="dob" name="dob" autocomplete="off" /> --%>
			</div>
			<div class="form-group mt-3">
				<label for="role">Role</label>
				<form:select path="role" id="role" class="form-control">
					<form:option value="1">Sinh Viên</form:option>
					<form:option value="2">Giảng Viên</form:option>
					<form:option value="3">PDT</form:option>
					<form:option value="4">CNBM</form:option>
				</form:select>
				<form:errors path="role" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<label for="avatar">Image</label>
			    <input type="file" class="form-control" id="avatar" name="avatar">
			</div>
			<div class="form-group mt-3">
				<label for="gender">Gender</label>
				<form:select path="gender" id="gender" class="form-control">
					<form:option value="1">Male</form:option>
					<form:option value="2">Female</form:option>
				</form:select>
				<form:errors path="gender" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<label for="status">Status</label>
				<form:select path="status" id="status" class="form-control">
					<form:option value="1">Active</form:option>
					<form:option value="2">Inactive</form:option>
				</form:select>
				<form:errors path="status" element="span" cssClass="text-danger""/>
			</div>
			<div class="form-group mt-3">
				<button class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-danger">Clear</button>
			</div>
		</form:form>
	</div>
</body>
</html>