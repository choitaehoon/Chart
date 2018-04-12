package chart.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Service 
{
	public static List<String> list() throws IOException
	{
		List<String> list = new ArrayList<>();
		String listUrl = "https://music.bugs.co.kr/chart";
		Document document = Jsoup.connect(listUrl).get();
		Elements tagList = document.select("p.title");
		for (Element tag : tagList)
			list.add(tag.text());
		return list;
	}
}
