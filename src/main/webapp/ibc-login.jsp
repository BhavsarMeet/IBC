<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<!DOCTYPE html>
			<html lang="en">

			<head>

				<meta charset="utf-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<title>IBC-Login</title>

				<!-- Style.css -->
				<link href="/css/login.css" rel="stylesheet">

				<!-- font awesome url -->
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

			</head>

			<body>
				<h2>IBC Employee Login</h2>
				<div class="container" id="container">

					<div class="form-container sign-up-container">

						<form action="addadmin" method="post">

							<!-- <input type="hidden" name="underinspectioncarpage" value="1">
			<input type="hidden" name="readyforinspectionpage" value="1">
			<input type="hidden" name="newcarpage" value="1">
			<input type="hidden" name="page" value="1"> -->

							<h1>Create Account</h1>
							<div class="social-container">
								<a href="#" class="social"><i class="fa fa-facebook-official"
										aria-hidden="true"></i></a>
								<a href="#" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>

							</div>
							<span>or use your email for registration</span>

							<input type="text" name="adminName" placeholder="Name" value="${admin.adminName}" />
							<span style="color:red ;">
								<form:errors path="admin.adminName" />
							</span>
							<input type="text" name="adminPhone" placeholder="Phone" value="${admin.adminPhone}">
							<span style="color:red ;">
								<form:errors path="admin.adminPhone" />
							</span>
							<input type="email" name="adminEmail" placeholder="Email" value="${admin.adminEmail}"  />
							<span style="color:red ;">
								<form:errors path="admin.adminEmail" />
							</span>
							<input type="password" name="adminPassword" placeholder="Password" />
							<span style="color:red ;">
								<form:errors path="admin.adminPassword"  />
							</span>

							<button type="submit">Sign Up</button>
						</form>
					</div>
					<div class="form-container sign-in-container">
						<form action="ibclogin" method="post">
							<!-- <input type="hidden" name="underInspectionCurrentPage" value="1">
			<input type="hidden" name="readyForInspectionCurrentPage" value="1">
			<input type="hidden" name="newCarEnquiryCurrentPage" value="1">
			<input type="hidden" name="page" value="1"> -->
							${error}
							${msg}
							<h1>Sign in</h1>
							<div class="social-container">
								<a href="#" class="social"><i class="fa fa-facebook-official"
										aria-hidden="true"></i></a>
								<a href="#" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>

							</div>
							<span>or use your account</span>

							<input type="email" name="email" placeholder="Email" />

							<input type="password" name="password" placeholder="Password" />
							<a href="#">Forgot your password?</a>
							<button type="submit">Sign In</button>
						</form>
					</div>
					<div class="overlay-container">
						<div class="overlay">
							<div class="overlay-panel overlay-left">
								<h1>Welcome Back!</h1>
								<p>To keep connected with us please login with your personal info</p>
								<button class="ghost" id="signIn">Sign In</button>
							</div>
							<div class="overlay-panel overlay-right">
								<h1>Hello, Friend!</h1>
								<p>Enter your personal details and start journey with us</p>
								<button class="ghost" id="signUp">Sign Up</button>
							</div>
						</div>
					</div>
				</div>

				<!-- CALLLING JS -->
				<script src="js/login.js"></script>


			</body>

			</html>