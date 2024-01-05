/**
 * 
 */
 $(document).ready(function() {
 	$('#summernote').summernote({
 		height: 300,
 		minHeight: null,
 		maxHeight: null,
 		focus: false,
 		lang: 'ko-KR',
 		toolbar: [
 					['fontname', ['fontname']],
 					['fontsize', ['fontsize']],
 					['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
 					['color', ['forecolor', 'color']],
 					['table', ['table']],
 					['para', ['ul', 'ol', 'paragraph']],
 					['height', ['height']],
 					['insert', ['link']],
 					['view', ['help']]
 				],
 		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움', '돋움체', '바탕체'],
 		fontSize: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']
 	});
 	
 	$('#summernote_event').summernote({
 		height: 300,
 		minHeight: null,
 		maxHeight: null,
 		focus: false,
 		lang: 'ko-KR',
 		toolbar: [
 					['fontname', ['fontname']],
 					['fontsize', ['fontsize']],
 					['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
 					['color', ['forecolor', 'color']],
 					['table', ['table']],
 					['para', ['ul', 'ol', 'paragraph']],
 					['height', ['height']],
 					['insert', ['link', 'picture']],
 					['view', ['help']]
 				],
 		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움', '돋움체', '바탕체'],
 		fontSize: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72']
 	});
 });