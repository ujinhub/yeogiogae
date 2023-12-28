package com.ogae.review;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ReviewController {
	@PostMapping("getReviewList.mdo")
	public String reviewList() {
		return "/review/getReviewList";
	}
}
