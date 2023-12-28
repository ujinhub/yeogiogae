/**
 * 
 */
 
function acyncMovePage(url) {
	var ajaxOption = {
			url: url,
			async: true,
			type: "post",
			dataType: "html",
			cache: false
	};
	
	$.ajax(ajaxOption).done(function(data) {
		$('#main').children().remove();
		$('#main').html(data);
	});
}


function checkOut() {
	if(confirm('로그아웃 하시겠습니까?') ==  true) {
		$.ajax ({
			type: "post",
			url: "logoutProc.mdo",
			success: function(data) {
				location.href = "login.mdo";
			},
			error: function(request, status, error) {
				console.log("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});	
	}
}