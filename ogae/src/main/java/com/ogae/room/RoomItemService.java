package com.ogae.room;

import java.util.List;

public interface RoomItemService {
	int getRoomItemCount();
	int insertRoomItem(RoomItemVO vo);
	List<RoomItemVO> getRoomItemList(RoomItemVO vo);
	int updateRoomItem(RoomItemVO vo);
	int deleteRoomItem(RoomItemVO vo);
}
