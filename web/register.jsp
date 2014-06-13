<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="js/bootstrap/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/forms/registerform.css" />
</head>
<body>
<div id="formWrapper" class="container">
  <form class="form-horizontal">
    <fieldset>
      
      <!-- Form Name -->
      <legend id="titleWrapper">Register</legend>
      <!-- Select Basic -->
      <div class="form-group">
        <label class="control-label col-xs-3" for="title">Title</label>
        <div class="col-xs-9">
          <select id="title" name="title" class="form-control">
            <option value="1">Mr</option>
            <option value="2">Mrs</option>
          </select>
        </div>
      </div>
      
      <!-- Text input-->
      <div class="form-group">
        <label class="control-label col-xs-3" for="firstname">First Name</label>
        <div class="col-xs-9">
          <input id="firstname" name="firstname" type="text" placeholder="First Name" class="form-control input-md" required="">
        </div>
      </div>
      
      <!-- Text input-->
      <div class="form-group">
        <label class="control-label col-xs-3" for="lastname">Last Name</label>
        <div class="col-xs-9">
          <input id="lastname" name="lastname" type="text" placeholder="Last Name" class="form-control input-md" required="">
        </div>
      </div>
      
      <!-- Text input-->
      <div class="form-group">
        <label class="control-label col-xs-3" for="initials">Initials</label>
        <div class="col-xs-9">
          <input id="initials" name="initials" type="text" placeholder="Initials" class="form-control input-md" required="">
        </div>
      </div>
      
      <!-- Select Basic -->
      <div class="form-group">
        <label class="control-label col-xs-3" for="gender">Gender</label>
        <div class="col-xs-9">
          <select id="gender" name="gender" class="form-control">
            <option value="1">Male</option>
            <option value="2">Female</option>
          </select>
        </div>
      </div>
      
      <!-- Select Basic -->
      <div class="form-group">
        <label class="control-label col-xs-3" for="organization">Organization</label>
        <div class="col-xs-9">
          <select id="organization" name="organization" class="form-control">
            <option value="1">Organization 1</option>
            <option value="2">Organization 2</option>
            <option value="3">Organization 3</option>
          </select>
        </div>
      </div>
      
      <!-- Select Basic -->
      <div class="form-group">
        <label class="control-label col-xs-3" for="mainresarea">Main Res. Area</label>
        <div class="col-xs-9">
          <select id="mainresarea" name="mainresarea" class="form-control">
            <option value="1">Research Area 1</option>
            <option value="2">Research Area 2</option>
            <option value="3">Research Area 3</option>
          </select>
        </div>
      </div>
      
      <!-- Text input-->
      <div class="form-group">
        <label class="control-label col-xs-3" for="email">E-Mail</label>
        <div class="col-xs-9">
          <input id="email" name="email" type="text" placeholder="E-Mail" class="form-control input-md" required="">
        </div>
      </div>
      
      <!-- Password input-->
      <div class="form-group">
        <label class="control-label col-xs-3" for="password">Password</label>
        <div class="col-xs-9">
          <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required="">
        </div>
      </div>
      
      <!-- Button -->
      <div class="form-group">
        <label class="control-label col-xs-3" for="register"></label>
        <div class="col-xs-9">
          <button id="register" name="register" class="btn btn-primary">Register</button>
        </div>
      </div>
    </fieldset>
  </form>
</div>
</body>
</html>