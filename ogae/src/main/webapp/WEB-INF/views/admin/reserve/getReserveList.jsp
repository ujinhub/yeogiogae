<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>예약사항</h1>
</div><!-- End Page Title -->

<section class="section reservation">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<button type="button" class="btn btn-primary btn-sm">+ 추가</button>
				
				<div class="search-bar">
					<form action="#" class="search-form d-flex align-items-center" method="post">
						<select class="" aria-label="Default select example">
							<option value="1" selected>예약번호</option>
							<option value="2">예약자</option>
							<option value="3">전화번호</option>
							<option value="3">예약일자</option>
							<option value="3">결제정보</option>
						</select>&nbsp;
						<input type="text" name="query" placeholder="Search" title="Enter search keyword">
						<button type="submit" title="Search" class="btn btn-outline-secondary btn-sm"><i class="bi bi-search"></i></button>
					</form>
				</div><!-- End Search Bar -->
			</div><!-- End top -->
			<hr>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">예약번호</th>
						<th scope="col">예약자명</th>
						<th scope="col">전화번호</th>
						<th scope="col">예약일자</th>
						<th scope="col">객실정보</th>
						<th scope="col">결제정보</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Kwon</td>
						<td>010-5324-2514</td>
						<td>2023-12-21</td>
						<td>101호 객실</td>
						<td>카드/완료</td>
						<td>
							<button type="button" class="btn btn-outline-success btn-sm">상세보기</button>&nbsp;
							<button type="button" class="btn btn-outline-danger btn-sm">삭제</button>&nbsp;&nbsp;
						</td>
					</tr>
				</tbody>
			</table><!-- End Table -->
		</div>
	</div>
</section>