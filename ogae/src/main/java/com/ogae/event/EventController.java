package com.ogae.event;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EventController {
	@PostMapping("getEventList.mdo")
	public String getEventList() {
		return "/event/getEventList";
	}
}
