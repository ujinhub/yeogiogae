/**
 * 
 */
$(function() {
	$('#submit').on("click", function() {
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
	
	$('#roomItemModal').on("hidden.bs.modal", function(e) {
		$('#roomItemForm').find("input[type='text']").val("");
		$('#submit').text("등록");
	});
		
	$('#searchSubmit').on("click", function() {
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
						htmlDummy += '<th scope="row">' + item.item_code + '</th>';
						htmlDummy += '<td>' + item.item_name + '</td>';
						htmlDummy += '<td>' + item.item_writer + '</td>';
						htmlDummy += '<td>' + item.item_regdate + '</td>';
						htmlDummy += '<td>';
						htmlDummy += '<button type="button" class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#roomItemModal" id="updateItem" onclick="showModal(&#39;' + item.item_code + '&#39;,&#39;' + item.item_name + '&#39;)">수정</button>&nbsp;';
						htmlDummy += '<button type="button" class="btn btn-outline-danger btn-sm" id="deleteItem" onclick="deleteItem(&#39;' + item.item_code + '&#39;)">삭제</button>';
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
	
});
	
function deleteItem(itemCode) {
	if(confirm('정말로 삭제하시겠습니까?') == true) {
		$.ajax ({
			type: "post",
			url: "deleteRoomItem.mdo",
			data: { item_code: itemCode },
			success: function(data) {
				acyncMovePage("getRoomItemList.mdo");
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		})
	} else {
		return false;
	}
}

function showModal(itemCode, itemName) {
	$('#roomItemCode').val(itemCode);
	$('#roomItemName').val(itemName);
	$('#submit').text('수정');
	//$('#roomItemModal').modal('show');
}