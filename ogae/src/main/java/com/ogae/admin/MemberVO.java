package com.ogae.admin;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private String member_id;
	private String member_name;
	private String member_password;
	private String member_tel;
	private String member_grade;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date member_regdate;
	
	// 검색
	private String keyword;
}
