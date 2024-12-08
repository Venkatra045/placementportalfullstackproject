package com.placement.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController 
{
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home");
		return mv;
	}
	
	@GetMapping("loginas")
	public ModelAndView about()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("loginas");
		return mv;
	} 
	
	
	@GetMapping("maincontact")
	public ModelAndView contact()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("maincontact");
		return mv;
	}
	 @Autowired 
	 private JavaMailSender mailSender; 
	 
	
}
