package com.ogae.facility;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FacilityController {
	@PostMapping("getFacilityList.mdo")
	public String getFacilityList() {
		return "/facility/getFacilityList";
	}
}
