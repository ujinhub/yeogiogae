package com.ogae.reserve;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ReserveController {
	@PostMapping("getReserveList.mdo")
	public String getReserveList() {
		return "/reserve/getReserveList";
	}
}
