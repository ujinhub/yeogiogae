package com.ogae.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class QnaController {
	@PostMapping("getQnaList.mdo")
	public String getQnaList() {
		return "/qna/getQnaList";
	}
}
