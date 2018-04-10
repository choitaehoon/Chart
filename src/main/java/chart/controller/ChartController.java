package chart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import chart.dto.User;
import chart.mapper.UserMapper;

@Controller
public class ChartController {
	
	@Autowired
	UserMapper userMapper;
	
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
	
	@RequestMapping("signUpAfter")
	public String signUpAfter(User user, Model model) throws IOException
	{
		List<String> list = new ArrayList<>();
		String listUrl = "";
		Document document = Jsoup.connect(listUrl).get();
		Elements tagList = document.select("p.title");
		for (Element tag : tagList)
		{
			list.add(tag.text());
			System.out.println(tag.text());
		}
		model.addAttribute("user", userMapper.select(user.getUserId()));
		model.addAttribute("contents",list);
		return "signUpAfter";
	}
	
}
