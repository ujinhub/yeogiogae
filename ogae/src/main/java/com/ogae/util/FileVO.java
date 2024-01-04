package com.ogae.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FileVO {
	private int img_idx;
	private String img_path;
	private String img_name;
	private int img_rep;
	private String img_cat;
	
	// 테이블명
	private String category;
}
