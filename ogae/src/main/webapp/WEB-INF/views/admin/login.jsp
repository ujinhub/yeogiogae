<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>관리자 로그인</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/images/favicon_b.png" rel="icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/assets/css/style.css" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

</head>
<body>
	<main>
		<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<div class="d-flex justify-content-center py-4">
											<a href="main.mdo" class="logo d-flex align-items-center w-auto">
												<img src="resources/images/logo_r.png" alt="">
											</a>
										</div><!-- End Logo -->
									</div>
									<form class="row g-3 needs-validation" action="loginProc.mdo" method="post" novalidate>
										<div class="col-12">
											<label for="yourId" class="form-label">아이디</label>
											<div class="input-group has-validation">
												<input type="text" name="member_id" class="form-control" id="yourId" value="${cookie.id.value}" required>
												<div class="invalid-feedback">아이디를 입력해주세요.</div>
											</div>
										</div>
										
										<div class="col-12">
											<label for="yourPassword" class="form-label">비밀번호</label>
											<input type="password" name="member_password" class="form-control" id="yourPassword" required>
											<div class="invalid-feedback">비밀번호를 입력하세요!</div>
										</div>
										
										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" name="remember" id="rememberMe">
												<label class="form-check-label" for="rememberMe">아이디 저장</label>
											</div>
										</div>

										<div class="col-12">
											<button class="btn btn-outline-primary w-100" type="button" id="login">Login</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	
	<!-- Vendor JS Files -->
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Template Main JS File -->
  	<script src="resources/assets/js/main.js"></script>	
  
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="resources/js/login.js"></script>

</body>
</html>

