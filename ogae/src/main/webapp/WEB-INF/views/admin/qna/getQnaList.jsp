<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>문의사항</h1>
</div><!-- End Page Title -->

<section class="section qna">
	<div class="card">
		<div class="card-body">
			<div class="top">
				<div class="search-select">
					<select aria-label="Default select example">
						<option selected>Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
				</div>
				<div class="search-bar">
					<form action="#" class="search-form d-flex align-items-center" method="post">
						<input type="text" name="query" placeholder="Search" title="Enter search keyword">
						<button type="submit" title="Search" class="btn btn-outline-secondary btn-sm"><i class="bi bi-search"></i></button>
					</form>
				</div><!-- End Search Bar -->
			</div><!-- End top -->
			<br><hr>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">작성자</th>
						<th scope="col">문의 제목</th>
						<th scope="col">문의 날짜</th>
						<th scope="col">답변 날짜</th>
						<th scope="col">관리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">2</th>
						<td>권유진</td>
						<td>문의드립니다.</td>
						<td>2023-12-21</td>
						<td>미답변</td>
						<td>
							<button type="button" class="btn btn-outline-primary btn-sm">답변하기</button>&nbsp;
							<button type="button" class="btn btn-outline-danger btn-sm">삭제</button>&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th scope="row">1</th>
						<td>김철수</td>
						<td>문의드립니다.</td>
						<td>2023-12-21</td>
						<td>2023-12-22</td>
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