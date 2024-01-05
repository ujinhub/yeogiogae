package com.ogae.util;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ResponseDTO<T> {
	private int statusCode; 	// HTTP 상태 코드
	private int code;			// 성공 1, 실패 -1
	private String resultCode;	// 성공 "success", 실패 "fail"
	private String message;		// alert 메시지
	private T data;				// 반환 데이터
}
