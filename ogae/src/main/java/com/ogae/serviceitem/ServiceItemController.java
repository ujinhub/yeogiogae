package com.ogae.serviceitem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ServiceItemController {
	@PostMapping("getServiceList.mdo")
	public String getServiceList() {
		return "/service/getServiceList";
	}
	
	@PostMapping("insertService.mdo")
	public String insertService() {
		return "/service/insertService";
	}
}
