package com.erhsh.test.shiro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping(value = "/hello/{somebody}", method = RequestMethod.GET)
	public String getHelloPage(@PathVariable String somebody, Model model) {
		model.addAttribute("somebody", somebody);
		return "hello";
	}
}
