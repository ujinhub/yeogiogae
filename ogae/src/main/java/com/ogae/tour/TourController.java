package com.ogae.tour;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TourController {
	@PostMapping("getTourList.mdo")
	public String getTourList() {
		return "/tour/getTourList";
	}
}
