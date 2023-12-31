<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>이용약관 추가</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.mdo">메인화면</a></li>
			<li class="breadcrumb-item"><a href="#" onclick="acyncMovePage('getTermsList.mdo')">이용약관 목록</a></li>
			<li class="breadcrumb-item active">이용약관 추가</li>
		</ol>
	</nav>
</div><!-- End Page Title -->

<section class="section terms min-vh-100 d-flex flex-column py-4">
	<div class="row">
		<div class="card">
			<div class="card-body">
				<form action="#" method="post">
					<div class="row mb-3">
						<label for="termsTitle"" class="col-sm-2 col-form-label">약관명</label>
						<div class="col-sm-10">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="row mb-3">
						<label for="termsContent" class="col-sm-2 col-form-label">약관 내용</label>
						<div class="col-sm-10">
							<textarea id="summernote" name="terms_content" class="form-control"></textarea>
						</div>
					</div>
					<div class="row mb-3">
						<label for="endDate" class="col-sm-2 col-form-label">만료일</label>
						<div class="col-sm-10">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="row mb-3">
						<label for="startDate" class="col-sm-2 col-form-label">정책적용일</label>
						<div class="col-sm-10">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">필수여부</label>
						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="termsCheck">
								<label class="form-check-label" for="termsCheck">필수</label>
							</div>
						</div>								
					</div>
					<div class="col-12" align="right">
						<button class="btn btn-success" type="submit">등록</button>
						<button class="btn btn-secondary" type="reset">취소</button>
						<!-- button class="btn btn-light" type="button" onclick="acyncMovePage('getTermsList.mdo')">목록</button -->
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script src="resources/js/util.js"></script> 