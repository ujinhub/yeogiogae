<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>공지사항 추가</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.mdo">메인화면</a></li>
			<li class="breadcrumb-item"><a href="#" onclick="acyncMovePage('getNoticeList.mdo')">공지사항 목록</a></li>
			<li class="breadcrumb-item active">공지사항 추가</li>
		</ol>
	</nav>
</div><!-- End Page Title -->

<section class="section room">
	<div class="row">
		<div class="card">
			<div class="card-body">
				<form method="post" id="insertRoomForm" >
					<div class="row mb-3">
						<label for="noticeTitle" class="col-sm-2 col-form-label">제목</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="notice_title">
						</div>
					</div>
					<div class="row mb-3">
						<label for="noticeContent" class="col-sm-2 col-form-label">내용</label>
						<div class="col-sm-10">

						</div>
					</div>
					<div class="row mb-3">
						<label for="serviceUse" class="col-sm-2 col-form-label">공지사항 공개 여부</label>
						<div class="col-sm-10">
							<select class="form-select" name="service_use" aria-label="Default select example">
								<option value="1" selected>공개</option>
								<option value="0">비공개</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-12" align="right">
							<button class="btn btn-success insertBtn" id="insertNotice" type="button">등록</button>
							<button class="btn btn-secondary" type="reset">취소</button>
							<!-- button class="btn btn-light" type="button" onclick="acyncMovePage('getMemberList.mdo')">목록</button -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script src="resources/js/file.js"></script>
<!-- Plugin JS Files -->
<script src="resources/plugins/dropzone/dist/dropzone.js"></script>
<script src="resources/plugins/dropzone/dist/dropzone.min.js"></script>  	