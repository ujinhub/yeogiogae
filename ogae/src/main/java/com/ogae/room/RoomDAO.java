package com.ogae.room;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoomDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

}
