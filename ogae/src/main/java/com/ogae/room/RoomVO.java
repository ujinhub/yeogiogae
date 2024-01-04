package com.ogae.room;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomVO {
	private String room_id;
	private String room_name;
	private int room_size;
	private int room_max;
	private int room_pet;
	private String room_info;
	private String room_addinfo;
	private String room_items;
	private int room_price;
	private int room_use;
	private String room_writer;
	private Date room_regdate;
	private Date room_modydate;
	
	// 검색
	private String keyword;
}
