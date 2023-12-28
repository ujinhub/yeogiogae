package com.ogae.terms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TermsController {
	@PostMapping("getTermsList.mdo")
	public String getTermsList() {
		return "/terms/getTermsList";
	}
	
	@PostMapping("getTerms.mdo")
	public String getTerms() {
		return "/terms/getTerms";
	}
	
	@PostMapping("insertTerms.mdo")
	public String insertTerms() {
		return "/terms/insertTerms";
	}
}
