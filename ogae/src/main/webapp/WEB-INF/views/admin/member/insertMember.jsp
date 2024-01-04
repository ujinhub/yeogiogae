<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>관리자 추가</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.mdo">메인화면</a></li>
			<li class="breadcrumb-item"><a href="#" onclick="acyncMovePage('getMemberList.mdo')">관리자 목록</a></li>
			<li class="breadcrumb-item active">관리자 추가</li>
		</ol>
	</nav>
</div><!-- End Page Title -->

<div class="container">
	<section class="section register min-vh-100 d-flex flex-column py-4">
		<div class="card mb-3">
			<div class="card-body">
				<form class="row g-3 needs-validataion" method="post" id="insertMemberForm" novalidate>
					<div class="col-12">
						<label for="memberId" class="form-label">아이디</label>
						<input type="text" name="member_id" class="form-control" id="memberId" required>
						<div class="invalid-feedback">아이디를 입력해주세요!</div>
					</div>
					<div class="col-12">
						<label for="memberName" class="form-label">이름</label>
						<input type="text" name="member_name" class="form-control" id="memberName" required>
						<div class="invalid-feedback">이름을 입력해주세요!</div>
					</div>
					<div class="col-12">
						<label for="memberPassword" class="form-label">비밀번호</label>
						<input type="password" name="member_password" class="form-control" id="memberPassword" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요!</div>
					</div>
					<div class="col-12">
						<label for="memberTel" class="form-label">연락처</label>
					</div>
					<div class="col-md-2">
	                  <input type="text" class="form-control" id="phone1" value="010" readonly> 
	                </div>
	                <div class="col-md-auto"> - </div>
	                <div class="col-md-2"> 
	                  <input type="text" class="form-control" id="phone2" maxlength="4">
	                </div>
	                <div class="col-md-auto"> - </div>
	                <div class="col-md-2"> 
	                  <input type="text" class="form-control" id="phone3" maxlength="4">
	                </div>
					<div class="invalid-feedback">연락처를 입력해주세요!</div>
					<input type="hidden" name="member_tel" id="memberTel">
					<div class="col-12">
						<label class="form-label">등급</label>
						<select class="form-select" name="member_grade">
							<option value="general" selected>일반 관리자</option>
							<option value="admin">최고 관리자</option>
						</select>
					</div>
					<div class="col-12" align="right">
						<button class="btn btn-success" id="insertMember" type="button">등록</button>
						<button class="btn btn-secondary" type="reset">취소</button>
						<!-- button class="btn btn-light" type="button" onclick="acyncMovePage('getMemberList.mdo')">목록</button -->
					</div>
				</form>
			</div>
		</div>
	</section>
</div>

<script src="resources/js/member.js"></script>