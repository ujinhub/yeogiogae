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
							htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm" id="updateMember" onclick="updateMember.mdo?id="' + item.member_id + '">수정</button>&nbsp;';
							htmlDummy += '<button type="button" class="btn btn-outline-danger btn-sm" id="deleteMember" onclick="deleteMember(&#39;' + item.member_id + '&#39;)">삭제</button>';
						} else if(data.member_grade == 'general') {
							if(item.member_id == data.member_id) {
								htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm" id="updateMember" onclick="updateMember.mdo?id="' + item.member_id + '")">수정</button>&nbsp;';
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
	
	// ============================================================
	$('.updateMember').on("click", function() {
		alert('updateMember');
	});
	
});
	