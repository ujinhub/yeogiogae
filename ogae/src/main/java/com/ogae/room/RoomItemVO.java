package com.ogae.room;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomItemVO {
	private String item_id;
	private String item_name;
	private String item_writer;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date item_regdate;
	
	// 검색
	private String keyword;
}
