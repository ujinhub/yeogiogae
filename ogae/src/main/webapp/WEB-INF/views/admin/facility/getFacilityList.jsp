<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>부가시설</h1>
</div><!-- End Page Title -->

<section class="section facility">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<button type="button" class="btn btn-primary btn-sm">+ 추가</button>
				
				<div class="search-bar">
					<form action="#" class="search-form d-flex align-items-center" method="post">
						<input type="text" name="query" placeholder="Search" title="Enter search keyword">
						<button type="submit" title="Search" class="btn btn-outline-secondary btn-sm"><i class="bi bi-search"></i></button>
					</form>
				</div><!-- End Search Bar -->
			</div><!-- End top -->
			<hr>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">시설코드</th>
						<th scope="col">썸네일</th>
						<th scope="col">시설명</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">FACILITY-01</th>
						<td><img src="https://ogae-dev.s3.ap-northeast-2.amazonaws.com/upload/facility/202311231424479001.jpg" height="90px"></td>
						<td>야외수영장</td>
						<td>admin</td>
						<td>2023-12-21</td>
						<td>
							<button type="button" class="btn btn-outline-primary btn-sm">수정</button>&nbsp;
							<button type="button" class="btn btn-outline-danger btn-sm">삭제</button>&nbsp;&nbsp;
						</td>
					</tr>
				</tbody>
			</table><!-- End Table -->
		</div>
	</div>
</section>