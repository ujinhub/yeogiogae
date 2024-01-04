<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="pagetitle">
	<h1>객실 추가</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.mdo">메인화면</a></li>
			<li class="breadcrumb-item"><a href="#" onclick="acyncMovePage('getRoomList.mdo')">객실 목록</a></li>
			<li class="breadcrumb-item active">객실 추가</li>
		</ol>
	</nav>
</div><!-- End Page Title -->

<section class="section room">
	<div class="row">
		<div class="card">
			<div class="card-body">
				<form method="post" id="insertRoomForm" >
					<div class="row mb-3">
						<label for="roomName" class="col-sm-2 col-form-label">객실명</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="room_name">
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomName" class="col-sm-2 col-form-label">객실 요금</label>
						<div class="col-sm-10 input-group">
							<span class="input-group-text">￦</span>
							<input type="text" class="form-control" name="room_price">
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomSize" class="col-sm-2 col-form-label">객실 크기</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="room_size">
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomMax" class="col-sm-2 col-form-label">최대 인원 수</label>
						<div class="col-sm-10">
							<select class="form-select" name="room_max" aria-label="Default select example">
								<option value="2" selected>2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomPet" class="col-sm-2 col-form-label">최대 반려견 수</label>
						<div class="col-sm-10">
							<select class="form-select" name="room_pet" aria-label="Default select example">
								<option value="1" selected>1</option>
								<option value="2" >2</option>
								<option value="3">3</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomInfo" class="col-sm-2 col-form-label">객실 정보</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="room_info"></textarea>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomAddInfo" class="col-sm-2 col-form-label">객실 추가 정보</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="room_addinfo"></textarea>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomItems" class="col-sm-2 col-form-label">구비 시설</label>
						<div class="col-sm-10">
							<input type="hidden" name="room_items">
							<c:forEach var="items" items="${roomItemList}">
								<div class="form-check">
									<input type="checkbox" class="form-check-input" id="${items.item_id}">
									<label for="${items.item_id}" class="form-check-label">${items.item_name}</label>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomImages" class="col-sm-2 col-form-label">객실 이미지</label>
						<div class="col-sm-10">
							<div class="dropzone" id="fileDropzone">
								<div class="dz-message needsclick">
									<span class="text">
										<img src="resources/images/camera-icon-33.png" height="50px" alt="Camera" />
										여기에 파일을 끌어 놓거나 업로드하려면 클릭하십시오.
									</span>
									<span class="plus">+</span>
								</div>
								
								<div id="myTemplate" style="display: none;">
									<div id="mytmp" class="dz-preview dz-file-preview">
										<div class="dz-image"><img data-dz-thumbnail /></div>
										<div class="dz-details">
											<div class="dz-size"><span data-dz-size></span></div>
											<div class="dz-filename"><span data-dz-name></span></div>
										</div>
										<div class="dz-progress">
											<span class="dz-upload" data-dz-uploadprogress></span>
										</div>
										<div class="dz-error-message"><span data-dz-errormessage></span></div>
										<div class="dz-success-mark">
											<svg xmlns="http://www.w3.org/2000/svg" height="54px" viewBox="0 0 54 54" width="54px" fill="#000000">
												<path d="M0 0h24v24H0z" fill="none" />
												<path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z" />
											</svg>
										</div>
										<div class="dz-error-mark">
											<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
												<path d="M0 0h24v24H0z" fill="none" />
												<circle cx="12" cy="19" r="2" />
												<path d="M10 3h4v12h-4z" />
											</svg>
										</div>
										<div class="dz-remove" data-dz-remove>
											<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
												<path d="M0 0h24v24H0z" fill="none" />
												<path d="M14.59 8L12 10.59 9.41 8 8 9.41 10.59 12 8 14.59 9.41 16 12 13.41 14.59 16 16 14.59 13.41 12 16 9.41 14.59 8zM12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z" />
											</svg>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<label for="roomUse" class="col-sm-2 col-form-label">객실 사용여부</label>
						<div class="col-sm-10">
							<select class="form-select" name="room_use" aria-label="Default select example">
								<option value="1" selected>사용</option>
								<option value="0">미사용</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-12" align="right">
							<button class="btn btn-success insertBtn" id="insertRoom" type="button">등록</button>
							<button class="btn btn-secondary" type="reset">취소</button>
							<!-- button class="btn btn-light" type="button" onclick="acyncMovePage('getMemberList.mdo')">목록</button -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script src="resources/js/file.js"></script>
<!-- Plugin JS Files -->
<script src="resources/plugins/dropzone/dist/dropzone.js"></script>
<script src="resources/plugins/dropzone/dist/dropzone.min.js"></script>  	