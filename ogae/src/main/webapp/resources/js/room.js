/**
 * 
 */
$(document).ready(function() {

	// 객실 아이템
	$('#submit').on('click', function() {
		var form = $("#roomItemForm").serialize();
		var btn = $('#submit').text();
		var url = 'insertRoomItem.mdo';
		
		if(btn === '수정') {
			url = 'updateRoomItem.mdo';
		}
		
		$.ajax({
			type: "post",
			url: url,
			data: form,
			//dataType: "html",
			success: function(data) {
				$('#roomItemModal').modal('hide');
				acyncMovePage("getRoomItemList.mdo");
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});
	});
	
	$('#roomItemName').keyup(function(e) {
		if(e.keyCode == 13) {
			$('#submit').click();
		}
	});
	
	$('#roomItemModal').on("show.bs.modal", function(e) {
		$(this).find('#roomItemName').focus();
	});
	
	$('#roomItemModal').on("hidden.bs.modal", function(e) {
		$(this).find('#roomItemName').val("");
		$(this).find('#submit').text("등록");
	});
		
	$('#searchSubmit').on('click', function() {
		$.ajax ({
			type: "post",
			url: "getSearchRoomItemList.mdo",
			data: $('#searchForm').serialize(),
			dataType: "json",
			success: function(data) {
				$('#itemTable > tbody').empty();
				if(data.length >= 1) {
					$.each(data, function(index, item) {
						htmlDummy = '<tr>';
						htmlDummy += '<th scope="row">' + item.item_id + '</th>';
						htmlDummy += '<td>' + item.item_name + '</td>';
						htmlDummy += '<td>' + item.item_writer + '</td>';
						htmlDummy += '<td>' + item.item_regdate + '</td>';
						htmlDummy += '<td>';
						htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm updateItem" data-bs-toggle="modal" data-bs-target="#roomItemModal">수정</button>&nbsp;';
						htmlDummy += '<button type="button" class="btn btn-outline-danger btn-sm deleteItem">삭제</button>';
						htmlDummy += '</td>'
						$('#itemTable').append(htmlDummy);
					})
				}
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});			
	});
	
	$('.deleteItem').on('click', function() {
		if(confirm('정말로 삭제하시겠습니까?') == true) {
			var itemId = $(this).parents().siblings('th').children('.itemId').val();
			
			$.ajax ({
				type: "post",
				url: "deleteRoomItem.mdo",
				data: { item_id: itemId },
				success: function(data) {
					acyncMovePage("getRoomItemList.mdo");
				},
				error: function(request, status, error) {
					console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
		}
	});
	
	$('.updateItem').on('click', function() {
		$('#roomItemId').val($(this).parents().siblings('th').children('.itemId').val());
		$('#roomItemName').val($(this).parents().siblings('.itemName').text());
		$('#submit').text('수정');
	});
	
	// 객실 이미지
	$('#imgFile').on('change', function(e) {
		alert('change');
	});
	
});
