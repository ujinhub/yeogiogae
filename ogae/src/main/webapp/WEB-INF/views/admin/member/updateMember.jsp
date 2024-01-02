<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>관리자 추가</h1>
</div><!-- End Page Title -->

<div class="container">
	<section class="section register min-vh-100 d-flex flex-column py-4">
		<div class="card mb-3">
			<div class="card-body">
				<form class="row g-3 needs-validataion" method="post" id="updateMemberForm" novalidate>
					<div class="col-12">
						<label for="memberId" class="form-label">아이디</label>
						<input type="text" name="member_id" class="form-control" id="memberId" value="${member.member_id}" readonly>
					</div>
					<div class="col-12">
						<label for="memberName" class="form-label">이름</label>
						<input type="text" name="member_name" class="form-control" id="memberName" value="${member.member_name}" readonly>
					</div>
					<c:if test="${user.member_id == member.member_id}">
						<div class="col-12">
							<label for="memberPassword" class="form-label">비밀번호</label>
							<input type="password" name="member_password" class="form-control" id="memberPassword" required>
							<div class="invalid-feedback">비밀번호를 입력해주세요!</div>
						</div>
						<div class="col-12">
							<label for="memberPassword" class="form-label">비밀번호 확인</label>
							<input type="password" class="form-control" id="checkPassword" required>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다!</div>
						</div>
					</c:if>
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
					<input type="hidden" name="member_tel" id="memberTel" value="${member.member_tel}">
					<div class="col-12">
						<label class="form-label">등급</label>
						<select class="form-select" name="member_grade">
							<c:if test="${user.member_grade == 'admin'}">
								<option value="general" ${member.member_grade == 'general' ? 'selected':''}>일반 관리자</option>
								<option value="admin" ${member.member_grade == 'admin' ? 'selected':''}>최고 관리자</option>
							</c:if>
							<c:if test="${user.member_grade == 'general'}">
								<option value="general" selected}>일반 관리자</option>
							</c:if>
						</select>
					</div>
					<div class="col-12" align="right">
						<button class="btn btn-success" type="button" id="updateMemberProc">수정</button>
						<button class="btn btn-secondary" type="button" id="resetData">취소</button>
						<button class="btn btn-light" type="button" onclick="acyncMovePage('getMemberList.mdo')">목록</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>

<script src="resources/js/member.js"></script>