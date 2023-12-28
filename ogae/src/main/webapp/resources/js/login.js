/**
 * 
 */
  
 // login.jsp
 $(document).ready(function() {
	// 저장된 쿠키값을 가져와서 세팅, 없으면 공백
	var cookie = getCookie('cookieId');
	$('#yourId').val(cookie);
	
	// 아이디를 저장해서 페이지 로딩 시 아이디 표시된 상태면 체크박스 선택
	if($('#yourId').val() != '') {
		$('#rememberMe').attr('checked', true);
	} else {
		$('#rememberMe').attr('checked', false);
	}
	
	$('#rememberMe').change(function() {
		if($('#rememberMe').is(':checked')) {
			setCookie('cookieId', $('#yourId').val(), 7);	// 7일 동안 쿠키 보관
		} else {
			deleteCookie('cookieId');
		}
	});
	
	// 아이디 저장 체크된 상태에서 아이디를 입력하는 경우 -> 쿠키 저장
	$('#id').keyup(function() {
		if($('#rememberMe').is(':checked')) {
			setCookie('cookieId', $('#yourId').val(), 7);	// 7일 동안 쿠키 보관
		}
	});
	
	// 쿠키 저장
	// setCookie => saveId 함수에서 넘겨준 시간과 현재시간을 비교하여 쿠키를 생성 및 삭제
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value) + ((exdays == null) ? '':'; expires=' + exdate.toGMTString());
		document.cookie = cookieName + '=' + cookieValue;
	}
	
	// 쿠키 삭제
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + '= ' + '; expires=' + expireDate.toGMTString();
	}
	
	// 쿠키 가져오기
	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if(start != -1) {
			// 쿠키가 존재
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if(end == -1) {
				// 쿠키 값의 마지막 위치 인덱스 번호 설정
				end = cookieData.length;
			}
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
	
	$('#yourId').keyup(function(e) {
		$('#yourId').siblings('.invalid-feedback').hide();
		if(e.keyCode == 13) {
			$('#login').click();
		}
		
	});
	
	$('#yourPassword').keyup(function(e) {
		$('#yourPassword').siblings('.invalid-feedback').hide();
		if(e.keyCode == 13) {
			$('#login').click();
		}
	});
	
	$('#login').on('click', function() {
		var yourId = $('#yourId').val();
		var yourPassword = $('#yourPassword').val();
		
		if(yourId == '') {
			$('#yourId').siblings('.invalid-feedback').show();
			$('#yourId').focus();
			return;
		} 
		if(yourPassword == '') {
			$('#yourPassword').siblings('.invalid-feedback').show();
			$('#yourPassword').focus();
			return;
		}
		$.ajax({
			type: "post",
			url: "loginProc.mdo",
			dataType: "json",
			data: {
				member_id: yourId,
				member_password: yourPassword
			},
			success: function(res) {
				if(res.code == -1) {
					alert(res.message);
					return;
				} 
				
				if(res.code == 1) {
					sessionStorage.setItem('user', JSON.stringify(res.data));
					location.href = 'main.mdo';
				}
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		})
	});
});