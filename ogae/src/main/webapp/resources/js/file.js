/**
 * 
 */
 $(document).ready(function() {
 	var dropzoneError = '';
 	Dropzone.autoDiscover = false;
 	const dropzone = new Dropzone('div.dropzone', {
 		url: '/fileUpload',method: 'post',
		autoProcessQueue: false,
		clickable: true,
		autoQueue: false,
		createImageThumbnails: true,
		thumbnailHeight: 150,
		thumbnailWidth: 150,
		maxFiles: 10,
		maxFileSize: 10,
		paramName: 'image',
		parallelUploads: 10,
		uploadMultiple: true,
		timeout: 300000,
		acceptedFiles: '.jpeg,.jpg,.png,.gif,.JPEG,.JPG,.PNG,.GIF',
		dictInvalidFileType: '이미지 파일만 업로드 가능합니다.',
		dictMaxFilesExceeded: '최대 10개까지 업로드 하실 수 있습니다.',
 		
 		init: function() {
			console.log('최초실행');
			let myDropzone = this;
			document.querySelector('.insertBtn').addEventListener('click', function() {
				console.log('업로드');
				if(myDropzone.getRejectedFiles().length > 0) {
					let files = myDropzone.getRejectedFiles();
					console.log('거부된 파일이 있습니다.', files);
					return;
				}
				
				myDropzone.processQueue();
			});

			this.on('sending', function(file, xhr, formData) {
				console.log('보내는 중');
			});
			
			this.on('success', function(file, responseText) {
				console.log('성공');
			});
			
			this.on('error', function(file, errorMessage) {
				console.log(errorMessage);
			});
		},
 		previewTemplate: document.querySelector('#myTemplate').innerHTML
 	});

});