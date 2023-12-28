<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>객실 물품</h1>
</div><!-- End Page Title -->

<section class="section room-item">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#roomItemModal">+ 추가</button>

				<div class="search-bar">
					<form id="searchForm" method="post">						
						<input type="text" name="keyword" placeholder="물품명 검색" title="Enter search keyword">
						<button type="button" id="searchSubmit" title="Search" class="btn btn-outline-secondary btn-sm"><i class="bi bi-search"></i></button>
					</form>
				</div><!-- End Search Bar -->				
			</div><!-- End top -->

			<hr>
			<table class="table table-bordered" id="itemTable">
				<thead>
					<tr>
						<th scope="col">물품코드</th>
						<th scope="col">물품명</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${roomItemList}" var="itemList">
						<tr>
							<th scope="row">${itemList.item_code}</th>
							<td>${itemList.item_name}</td>
							<td>${itemList.item_writer}</td>
							<td>${itemList.item_regdate}</td>
							<td>
								<button type="button" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#roomItemModal" id="updateItem" onclick="showModal('${itemList.item_code}','${itemList.item_name}')">수정</button>&nbsp;
								<button type="button" class="btn btn-outline-danger btn-sm" id="deleteItem" onclick="deleteItem('${itemList.item_code}')">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table><!-- End Table -->
			
			<!-- Pagination -->
			<nav>
				<ul class="pagination justify-content-end">
					<li class="page-item">
						<c:if test="${paging.prev}">
							<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</c:if>
						<c:if test="${not paging.prev}">
							<a class="page-link" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</c:if>
					</li>
					<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
						<li class="page-item"><a class="page-link" href="#">${num+1}</a></li>
					</c:forEach>
					<li class="page-item">
						<c:if test="${paging.next}">
							<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</c:if>
						<c:if test="${not paging.next}">
							<a class="page-link"aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</c:if>
					</li>
				</ul>
			</nav><!-- End Pagination -->
		</div>
	</div>
</section>
				
<!-- Modal -->
<div class="modal fade" id="roomItemModal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<div class="modal-title">물품명</div>
			</div>
			<form method="post" id="roomItemForm">
				<div class="modal-body">
					<input type="hidden" name="item_code" id="roomItemCode" value="0">
					<input type="text" class="form-control" name="item_name" id="roomItemName">
				</div>
				<div class="modal-footer">
					<button type="button" id="submit" class="btn btn-success btn-sm">등록</button>
					<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">취소</button>
				</div>
			</form>
		</div>
	</div>
</div>

<script src="resources/js/room.js"></script>