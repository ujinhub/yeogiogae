package com.ogae.util;

public class Common {
	
	private static Common instance = null;
	
	public static Common getInstance() {
		if(instance == null) {
			return new Common();
		} else {
			return null;
		}
	}
}
