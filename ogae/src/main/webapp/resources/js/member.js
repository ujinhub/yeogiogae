/**
 * 
 */

$(function() {
	
	$('#searchSubmit').on("click", function() {
		var data = JSON.parse(sessionStorage.getItem('user'));

		$.ajax ({
			type: "post",
			url: "getSearchMemberList.mdo",
			data: $('#searchForm').serialize(),
			dataType: "json",
			success: function(res) {
				if(res.code == -1) {
					alert(res.message);
					return;
				}
				
				var dataList = JSON.stringify(res.data);
				
				$('.table > tbody').empty();
				if(dataList.length >= 1) {
					var cnt = res.data.length;
					for(var item of res.data) {
						htmlDummy = '<tr>';
						htmlDummy += '<th scope="row">' + (cnt--) + '</th>';
						htmlDummy += '<td>' + item.member_id + '</td>';
						htmlDummy += '<td>' + item.member_name + '</td>';
						htmlDummy += '<td>' + item.member_tel + '</td>';
						htmlDummy += '<td>';
						if(item.member_grade == 'admin') {
							htmlDummy += '최고 관리자';
						} else if(item.member_grade == 'general') {
							htmlDummy += '일반 관리자';
						}
						htmlDummy += '</td>';
						htmlDummy += '<td>';
						if(data.member_grade == 'admin') {
							htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm updateMember" id="updateMember">수정</button>&nbsp;';
							htmlDummy += '<button type="button" class="btn btn-outline-danger btn-sm deleteMember" id="deleteMember">삭제</button>';
						} else if(data.member_grade == 'general') {
							if(item.member_id == data.member_id) {
								htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm updateMember" id="updateMember")">수정</button>';
							}
						}
						htmlDummy += '</td>'
						$('.table').append(htmlDummy);
					}
				}
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});	
	});
	
	// 관리자 등록
	$('#insertMember').on("click", function() {
		var bCheck = checkMember();
		if(bCheck == true) {
			$('#memberTel').val($('#phone1').val() + $('#phone2').val() + $('#phone3').val());
			var form = $("#insertMemberForm").serialize();
			var url = 'insertMemberProc.mdo';
		
			$.ajax({
				type: "post",
				url: url,
				data: form,
				dataType: "html",
				success: function(data) {
					acyncMovePage("getMemberList.mdo");
				},
				error: function(request, status, error) {
					console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
		}
	});
	
	// 관리자 삭제
	$('.deleteMember').on("click", function() {
		var memberId = $(this).parents().find('.memberId').val();
		if(confirm('정말로 삭제하시겠습니까?') == true) {
			$.ajax ({
				type: "post",
				url: "deleteMemberProc.mdo",
				data: { member_id: memberId },
				success: function(data) {
					acyncMovePage("getMemberList.mdo");
				},
				error: function(request, status, error) {
					console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
		}
	});
	
	// 수정 화면 호출
	$('.updateMember').on("click", function() {
		var memberId = $(this).parents().parents().prev().val();
		
		acyncMovePage("getMember.mdo?id=" + memberId);
	});
	
	// 전화번호 출력 형식 변환
	if($('#memberTel').val() != null) {
		var tel = $('#memberTel').val();
		
		if(tel.length == 11) {
			$('#phone2').val(tel.substr(3,4));
			$('#phone3').val(tel.substr(7,4));
		}
	}
	
	// 정보 수정
	$('#updateMemberProc').on("click", function() {
		
		if($('#memberPassword').val() == '') {
			$('#memberPassword').siblings('.invalid-feedback').show();
			$('#memberPassword').focus();
			return;
		}
		
		if($('#checkPassword').val() == '') {
			alert('비밀번호를 확인해주세요');
			return;
		}
		
		var result = checkMember()
		
		if(result == true) {
			var form = $("#updateMemberForm").serialize();
			var url = 'updateMemberProc.mdo';
		
			$.ajax({
				type: "post",
				url: url,
				data: form,
				dataType: "html",
				success: function(data) {
					acyncMovePage("getMemberList.mdo");
				},
				error: function(request, status, error) {
					console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
		}
		
	});
	
	function checkMember() {

		if($('#memberId').val() == '') {
			$('#memberId').siblings('.invalid-feedback').show();
			$('#memberId').focus();
			return false;
		}
		
		if($('#memberName').val() == '') {
			$('#memberName').siblings('.invalid-feedback').show();
			$('#memberName').focus();
			return false;
		}
		
		if($('#memberPassword').val() == '') {
			$('#memberPassword').siblings('.invalid-feedback').show();
			$('#memberPassword').focus();
			return false;
		}
		
		if($('#phone2').val() == '' || $('#phone3').val() == '') {
			$('#phone3').parents().next('.invalid-feedback').show();
			if($('#phone2').val() == '') {
				$('#phone2').focus();
			} else {
				$('#phone3').focus();
			}
			return false;
		}
		
		$('#memberTel').val($('#phone1').val() + $('#phone2').val() + $('#phone3').val());
		
		return true;
	}
	
	$('#checkPassword').on("blur", function() {
		var pass = $('#memberPassword').val();
		if(pass != '') {
			if(pass != $('#checkPassword').val()) {
				$('#checkPassword').siblings('.invalid-feedback').show();
			} else {
				$('#checkPassword').siblings('.invalid-feedback').hide();
			}
		}
	});
	
	$('#memberId').on("blur", function() {
		if($('#memberId').val() != '') {
			$('#memberId').siblings('.invalid-feedback').hide();
		}
	});
	
	$('#memberName').on("blur", function() {
		if($('#memberName').val() != '') {
			$('#memberName').siblings('.invalid-feedback').hide();
		}
	});
	
	$('#memberPassword').on("blur", function() {
		if($('#memberPassword').val() != '') {
			$('#memberPassword').siblings('.invalid-feedback').hide();
		}
	});
	
	$('#phone2, #phone3').on("blur", function() {
		if($('#phone2').val() != '' && $('#phone3').val() != '') {
			$('#phone3').parents().next('.invalid-feedback').hide();
		} 
	});
	
	function resetData() {
		alert('reset');
	}
});

	