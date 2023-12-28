package com.ogae.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class NoticeController {
	@PostMapping("getNoticeList.mdo")
	public String getNoticeList() {
		return "/notice/getNoticeList";
	}
}
