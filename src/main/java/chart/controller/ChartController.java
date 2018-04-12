package chart.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import chart.dto.Music;
import chart.dto.User;
import chart.mapper.MusicMapper;
import chart.mapper.UserMapper;
import chart.service.Service;

@Controller
public class ChartController {
	
	@Autowired
	UserMapper userMapper;
	@Autowired
	MusicMapper musicMapper;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String home(Model model) {
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(User user,Model model)
	{
		userMapper.insert(user);
		return "redirect:login";
	}
	
	@RequestMapping(value="membership", method=RequestMethod.GET)
	public String membership(User user,Model model)
	{
		return "membership";
	}
	
	@RequestMapping(value="signUpAfter", method=RequestMethod.GET)
	public String signUpAfter(User user, Model model) throws IOException
	{
		model.addAttribute("user", userMapper.select(user.getUserId()));
		model.addAttribute("contents",Service.list());
		return "signUpAfter";
	}
	
	@RequestMapping(value="signUpAfter", method=RequestMethod.POST)
	public String submit(Music music,User user,Model model)
	{
		model.addAttribute("user", userMapper.select(user.getUserId()));
		musicMapper.insert(music);
		return "redirect:signUpAfter";
	}
	
}
