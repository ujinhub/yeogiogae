package com.ogae.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomImpl implements RoomService {
	
	@Autowired
	private RoomDAO roomDAO;
}
