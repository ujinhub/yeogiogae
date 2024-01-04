<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>여기오개 관리자</title>
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

<!-- Plugin CSS Files -->
<link href="resources/plugins/dropzone/dist/dropzone.css" rel="stylesheet">
<link href="resources/plugins/dropzone/dist/dropzone.min.css" rel="stylesheet">
<link href="resources/plugins/dropzone/custom.css" rel="stylesheet">


<!-- =======================================================
* Template Name: NiceAdmin
* Updated: Nov 17 2023 with Bootstrap v5.3.2
* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">
	
		<div class="d-flex align-items-center justify-content-between">
			<a href="main.mdo" class="logo d-flex align-items-center">
				<img src="resources/images/logo_b.png" alt="">
			</a>
			<i class="bi bi-list toggle-sidebar-btn"></i>
		</div><!-- End Logo -->
		
		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">
				<li class="nav-item d-block d-lg-none">
					<a class="nav-link nav-icon search-bar-toggle" href="#">
						<i class="bi bi-search"></i>
					</a>
				</li><!-- End Search Icon -->
				
				<li class="nav-item dropdown">
					<a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
						<i class="bi bi-bell"></i>
						<span class="badge bg-primary badge-number">4</span>
					</a><!-- End Notification Icon -->
					
					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
						<li class="dropdown-header">
							You have 4 new notifications
							<a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="notification-item">
							<i class="bi bi-exclamation-circle text-warning"></i>
							<div>
								<h4>알림 제목</h4>
								<p>알림 내용</p>
								<p>알림 도착 시간</p>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li class="notification-item">
							<i class="bi bi-x-circle text-danger"></i>
							<div>
								<h4>알림 제목</h4>
								<p>알림 내용</p>
								<p>알림 도착 시간</p>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li class="notification-item">
							<i class="bi bi-check-circle text-success"></i>
							<div>
								<h4>알림 제목</h4>
								<p>알림 내용</p>
								<p>알림 도착 시간</p>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li class="notification-item">
							<i class="bi bi-info-circle text-primary"></i>
							<div>
								<h4>알림 제목</h4>
								<p>알림 내용</p>
								<p>알림 도착 시간</p>
							</div>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li class="dropdown-footer">
							<a href="#">Show all notifications</a>
						</li>
					</ul><!-- End Notification Dropdown Items -->
				</li><!-- End Notification Nav -->
				
				<li class="nav-item dropdown pe-3">
					<a class="nav-link nav-profile d-flex align-items-cneter pe-0" href="#" data-bs-toggle="dropdown">
						<i class="bi bi-person-circle"></i>
						<span class="d-none d-md-block dropdown-toggle ps-2">${user.member_name}</span>
					</a><!-- End Profile Icon -->
					
					<ul class="dropdown-menu dropdown-menu-end drpdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>${user.member_name}</h6>
							<span>${user.member_grade}</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li>
							<a class="dropdown-item d-flex align-items-center" href="#">
								<i class="bi bi-person"></i>
								<span>My Profile</span>
							</a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li>
							<a class="dropdown-item d-flex align-items-center" href="#">
								<i class="bi bi-gear"></i>
								<span>Account Settings</span>
							</a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li>
							<a class="dropdown-item d-flex align-items-center" href="#">
								<i class="bi bi-question-circle"></i>
								<span>Need help?</span>
							</a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>
						
						<li>
							<a class="dropdown-item d-flex align-items-center" href="#" onclick="checkOut()">
								<i class="bi bi-box-arrow-right"></i>
								<span>Log Out</span>
							</a>
						</li>
					</ul><!-- End Profile Dropdown Items -->
				</li><!-- End Profile Nav -->
			</ul>
		</nav><!-- End Icons Navigation -->
	</header><!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">
		<ul class="sidebar-nav" id="sidebar-nav">
			<li class="nav-item">
				<a class="nav-link collapsed" href="main.mdo">
					<i class="bi bi-grid"></i>
					<span>대시보드</span>
				</a>
			</li>
			<!-- End Dashboard Nav -->
			
			<!-- 객실 -->
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#rooms-nav" data-bs-toggle="collapse">
					<i class="bi bi-house-door"></i>
					<span>객실</span>
					<i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="rooms-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
					<li>
						<a id="roomList" onclick="acyncMovePage('getRoomList.mdo')">
							<i class="bi bi-circle"></i><span>객실 목록</span>
						</a>
					</li>
					<li>
						<a id="roomItemList" onclick="acyncMovePage('getRoomItemList.mdo')">
							<i class="bi bi-circle"></i><span>객실 물품</span>
						</a>
					</li>
				</ul>
			</li><!-- End Rooms Nav -->
			
			<!-- 시설 -->
			<li class="nav-item">
				<a id="facility" class="nav-link collapsed" onclick="acyncMovePage('getFacilityList.mdo')">
					<i class="bi bi-signpost-2"></i>
					<span>부가시설</span>
				</a>
			</li><!-- End Facility Nav -->
			
			<!-- 서비스항목 -->
			<li class="nav-item">
				<a id="service" class="nav-link collapsed" onclick="acyncMovePage('getServiceList.mdo')">
					<i class="bi bi-cup"></i>
					<span>서비스 물품</span>
				</a>
			</li><!-- End Service Nav -->
			
			<!-- 여행지 -->
			<li class="nav-item">
				<a id="travel" class="nav-link collapsed" onclick="acyncMovePage('getTourList.mdo')">
					<i class="bi bi-map"></i>
					<span>여행지</span>
				</a>
			</li><!-- End Tour Nav -->
			
			<!-- 예약 -->
			<li class="nav-item">
				<a id="reserve" class="nav-link collapsed" onclick="acyncMovePage('getReserveList.mdo')">
					<i class="bi bi-calendar-check"></i>
					<span>예약 현황</span>
				</a>
			</li><!-- End Reservation Nav -->
			
			<!-- 공지사항 -->
			<li class="nav-item">
				<a id="notice" class="nav-link collapsed" onclick="acyncMovePage('getNoticeList.mdo')">
					<i class="bi bi-megaphone"></i>
					<span>공지사항</span>
				</a>
			</li><!-- End Notice Nav -->
			
			<!-- 문의사항 -->
			<li class="nav-item">
				<a id="qna" class="nav-link collapsed" onclick="acyncMovePage('getQnaList.mdo')">
					<i class="bi bi-question-circle"></i>
					<span>Q&A</span>
				</a>
			</li><!-- End Q&A Nav -->
			
			<!-- 후기 -->
			<li class="nav-item">
				<a id="review" class="nav-link collapsed" onclick="acyncMovePage('getReviewList.mdo')">
					<i class="bi bi-list-stars"></i>
					<span>이용 후기</span>
				</a>
			</li><!-- End Review Nav -->
			
			<!-- 이벤트 -->
			<li class="nav-item">
				<a id="event" class="nav-link collapsed" onclick="acyncMovePage('getEventList.mdo')">
					<i class="bi bi-stars"></i>
					<span>이벤트</span>
				</a>
			</li><!-- End Event Nav -->
			
			<!-- 약관 -->
			<li class="nav-item">
				<a id="terms" class="nav-link collapsed" onclick="acyncMovePage('getTermsList.mdo')">
					<i class="bi bi-pencil-square"></i>
					<span>이용 약관</span>
				</a>
			</li><!-- End Terms Nav -->
			
			<!-- 통계 -->
			<li class="nav-item">
				<a id="statistics" class="nav-link collapsed" onclick="acyncMovePage('exam.mdo')">
					<i class="bi bi-graph-up"></i>
					<span>분석</span>
				</a>
			</li><!-- End Statisics Nav -->
			
			<li class="nav-item">
				<a id="member" class="nav-link collapsed" onclick="acyncMovePage('getMemberList.mdo')">
					<i class="bi bi-people-fill"></i>
					<span>관리자</span>
				</a>
			</li><!-- End Profile Nav -->
		</ul>
	</aside><!-- End Sidebar -->
	
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="main.mdo">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div><!-- End Page Title -->
		
		<section class="section dashboard">
			<h1>Main Dashboard</h1>
		</section>
	</main><!-- End #main -->
	
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>yeogiogae</span></strong>. All Rights Reserved
		</div>
	</footer><!-- End Footer -->
	
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  	<script src="resources/js/common.js"></script>
  		
	<!-- Vendor JS Files -->
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Template Main JS File -->
  	<script src="resources/assets/js/main.js"></script>
  	
</body>
</html>