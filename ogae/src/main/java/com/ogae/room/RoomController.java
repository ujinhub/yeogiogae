package com.ogae.room;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ogae.admin.MemberVO;

@Controller
public class RoomController {
	
	@Autowired
	private RoomItemService roomItemService;
	
	// 객실 등록
	@PostMapping("getRoomList.mdo")
	public String getRoomList() {
		return "/room/getRoomList";
	}
	
	@PostMapping("insertRoom.mdo")
	public String insertRoomView(Model model) {
		
		List<RoomItemVO> roomItemList = roomItemService.getRoomItemList(null);
		model.addAttribute("roomItemList", roomItemList);
		
		return "/room/insertRoom";
	}
	
	
	
	// 객실 물품 등록
	/**
	 * 객실 물품 검색 조회
	 * @param vo
	 * @return
	 */
	@ResponseBody
	@PostMapping("getSearchRoomItemList.mdo")
	public List<RoomItemVO> getSearchRoomItemList(RoomItemVO vo) {

		List<RoomItemVO> roomItemList = roomItemService.getRoomItemList(vo);
		return roomItemList;
	}
	
	/**
	 * 객실 물품 조회
	 * @param model
	 * @param vo
	 * @return
	 */
	@PostMapping("getRoomItemList.mdo")
	public String getRoomItemList(Model model, RoomItemVO vo) {

		model.addAttribute("roomItemList", roomItemService.getRoomItemList(vo));
		return "/room/getRoomItemList";
	}
	
	/**
	 * 객실 물품 등록
	 * @param vo
	 * @return
	 */
	@RequestMapping("insertRoomItem.mdo")
	public String insertRoomItem(RoomItemVO vo, HttpServletRequest request) {
	
		HttpSession session = request.getSession(false);
		
		if(session.getAttribute("user") != null) {
			MemberVO member = (MemberVO)session.getAttribute("user");
			vo.setItem_writer(member.getMember_id());
		}
		
		roomItemService.insertRoomItem(vo);
		
		return "/room/getRoomItemList";
	}
	
	/**
	 * 객실 물품 이름 수정
	 * @param vo
	 * @return
	 */
	@RequestMapping("updateRoomItem.mdo")
	public String updateRoomItem(RoomItemVO vo) {
		
		roomItemService.updateRoomItem(vo);
		
		return "/room/getRoomItemList";
	}
	
	/**
	 * 객실 물품 삭제
	 * @param vo
	 * @return
	 */
	@RequestMapping("deleteRoomItem.mdo")
	public String deleteRoomItem(RoomItemVO vo) {
		
		roomItemService.deleteRoomItem(vo);
		
		return "/room/getRoomItemList";
	}
	
}
