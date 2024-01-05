<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>이벤트 수정</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.mdo">메인화면</a></li>
			<li class="breadcrumb-item"><a href="#" onclick="acyncMovePage('getEventList.mdo')">이벤트 목록</a></li>
			<li class="breadcrumb-item active">이벤트 수정</li>
		</ol>
	</nav>
</div><!-- End Page Title -->

<section class="section terms min-vh-100 d-flex flex-column py-4">
	<div class="row">
		<div class="card">
			<div class="card-body">
				<form action="#" method="post">
					<input type="hidden" name="terms_code" class="form-control" value="Terms-01" disabled>
					<div class="row mb-3">
						<label for="eventTitle"" class="col-sm-2 col-form-label">이벤트명</label>
						<div class="col-sm-10">
							<input type="text" name="event_title" class="form-control" value="연말 할인 이벤트">
						</div>
					</div>
					<div class="row mb-3">
						<label for="eventContent" class="col-sm-2 col-form-label">이벤트 내용</label>
						<div class="col-sm-10">
							<textarea id="summernote_event" name="event_content" class="form-control">
								연말 할인 이벤트 입니다.
							</textarea>
						</div>
					</div>
					<div class="row mb-3">
						<label for="endDate" class="col-sm-2 col-form-label">시작일</label>
						<div class="col-sm-10">
							<input type="event_start" class="form-control" value="2023-12-01">
						</div>
					</div>
					<div class="row mb-3">
						<label for="startDate" class="col-sm-2 col-form-label">종료일</label>
						<div class="col-sm-10">
							<input type="event_end" class="form-control" value="2023-12-31">
						</div>
					</div>
					<div class="row mb-3">
						<label for="serviceUse" class="col-sm-2 col-form-label">이벤트 공개 여부</label>
						<div class="col-sm-10">
							<select class="form-select" name="service_use" aria-label="Default select example">
								<option value="1" selected>공개</option>
								<option value="0">비공개</option>
							</select>
						</div>
					</div>
					<div class="col-12" align="right">
						<button class="btn btn-success" type="submit">수정</button>
						<button class="btn btn-secondary" type="reset">취소</button>
						<!-- button class="btn btn-light" type="button" onclick="acyncMovePage('getTermsList.mdo')">목록</button -->
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script src="resources/js/util.js"></script> 