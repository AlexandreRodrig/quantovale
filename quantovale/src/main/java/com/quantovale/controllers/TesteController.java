package com.quantovale.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TesteController {
	
	@RequestMapping (value = "/teste",method =RequestMethod.POST)
	public String testarController (){
		
		System.out.println("bla");
		return "index";
	}

}
