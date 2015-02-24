package com.quantovale.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.management.InvalidAttributeValueException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/logar", method = RequestMethod.POST)
	public String preLogin( @RequestParam("email") String email,@RequestParam("password") String password, HttpServletRequest request, ModelMap modelMap) {

		

		return "cadastrar";

	}

}
