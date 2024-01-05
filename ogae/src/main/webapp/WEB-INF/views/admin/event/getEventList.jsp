<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>이벤트</h1>
</div><!-- End Page Title -->

<section class="section event">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<button type="button" class="btn btn-primary btn-sm" onclick="acyncMovePage('insertEvent.mdo')">+ 추가</button>
				
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
						<th scope="col">#</th>
						<th scope="col">썸네일</th>
						<th scope="col">이벤트명</th>
						<th scope="col">시작일</th>
						<th scope="col">종료일</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td><img src="https://ogae-dev.s3.ap-northeast-2.amazonaws.com/upload/event/202312071317575001.jpg" height="90px"></td>
						<td>연말 할인이벤트</td>
						<td>2023-12-01</td>
						<td>2023-12-30</td>
						<td>admin</td>
						<td>2023-12-21</td>
						<td>
							<button type="button" class="btn btn-outline-primary btn-sm"  onclick="acyncMovePage('getEvent.mdo')">수정</button>&nbsp;
							<button type="button" class="btn btn-outline-danger btn-sm">삭제</button>&nbsp;&nbsp;
						</td>
					</tr>
				</tbody>
			</table><!-- End Table -->
		</div>
	</div>
</section>