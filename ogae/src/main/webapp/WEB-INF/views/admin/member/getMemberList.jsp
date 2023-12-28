<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>관리자 목록</h1>
</div><!-- End Page Title -->

<section class="section member">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<button type="button" class="btn btn-primary btn-sm" onclick="acyncMovePage('insertMember.mdo')">+ 추가</button>
				
				<div class="search-bar">
					<form id="searchForm" method="post">
						<input type="text" name="keyword" placeholder="아이디/이름 검색" title="Enter search keyword">
						<button type="button" id="searchSubmit" title="Search" class="btn btn-outline-secondary btn-sm"><i class="bi bi-search"></i></button>
					</form>
				</div><!-- End Search Bar -->
			</div><!-- End top -->
			<hr>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">연락처</th>
						<th scope="col">등급</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${memberList}" varStatus="status">
						<input type="hidden" class="memberId" value="${member.member_id}">
						<tr>
							<th scope="row">${fn:length(memberList) - status.index}</th>
							<td>${member.member_id}</td>
							<td>${member.member_name}</td>
							<td>${member.member_tel}</td>
							<td>
								<c:if test="${member.member_grade == 'admin'}">최고 관리자</c:if>
								<c:if test="${member.member_grade == 'general'}">일반 관리자</c:if>
							</td>
							<td>
								<c:if test="${user.member_grade == 'admin'}">
									<button type="button" class="btn btn-outline-primary btn-sm updateMember" id="updateMember">수정</button>&nbsp;
									<button type="button" class="btn btn-outline-danger btn-sm deleteMember" id="deleteMember">삭제</button>
								</c:if>
								<c:if test="${user.member_grade == 'general'}">
									<c:if test="${user.member_id eq member.member_id}">
										<button type="button" class="btn btn-outline-primary btn-sm">수정</button>
									</c:if>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table><!-- End Table -->
		</div>
	</div>
</section>

<script src="resources/js/member.js"></script>