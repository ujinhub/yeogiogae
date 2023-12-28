package com.ogae.room;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoomItemDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertRoomItem(RoomItemVO vo) {
		return sqlSessionTemplate.insert("RoomItem.insertRoomItem", vo);
	}
	
	public List<RoomItemVO> getRoomItemList(RoomItemVO vo) {
		return sqlSessionTemplate.selectList("RoomItem.getRoomItemList", vo);
	}
	
	public int updateRoomItem(RoomItemVO vo) {
		return sqlSessionTemplate.update("RoomItem.updateRoomItem", vo);
	}
	
	public int deleteRoomItem(RoomItemVO vo) {
		return sqlSessionTemplate.delete("RoomItem.deleteRoomItem", vo);
	}
	
	public int getRoomItemCount() {
		return sqlSessionTemplate.selectOne("RoomItem.getRoomItemCount");
	}
}
