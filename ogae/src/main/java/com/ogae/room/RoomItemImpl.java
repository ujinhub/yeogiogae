package com.ogae.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomItemImpl implements RoomItemService {
	@Autowired
	private RoomItemDAO roomItemDAO;

	@Override
	public int insertRoomItem(RoomItemVO vo) {
		return roomItemDAO.insertRoomItem(vo);
	}

	@Override
	public List<RoomItemVO> getRoomItemList(RoomItemVO vo) {
		return roomItemDAO.getRoomItemList(vo);
	}

	@Override
	public int updateRoomItem(RoomItemVO vo) {
		return roomItemDAO.updateRoomItem(vo);
	}

	@Override
	public int deleteRoomItem(RoomItemVO vo) {
		return roomItemDAO.deleteRoomItem(vo);
	}

	@Override
	public int getRoomItemCount() {
		return roomItemDAO.getRoomItemCount();
	}

	
}
