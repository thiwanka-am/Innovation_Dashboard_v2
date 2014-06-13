package com.innodb.java.util;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Scraper {
	public void search() {
		Document doc;
		String[] arr=new String[] {"Mayuri+Wijesinghe","Herath+C","K+Hewagamage"};
		try {
			//for(int x=0;x<arr.length;x++){
				doc = Jsoup.connect("http://scholar.google.com/citations?hl=en&view_op=search_authors&mauthors="+arr[0]).get();
				Elements elements = doc.select(".cit-dark-large-link");
				//System.out.println(element.attr("href"));
				Document insideDoc=doc = Jsoup.connect("http://scholar.google.com"+elements.attr("href")+"&pagesize=100").get();
				Elements pubs=(insideDoc.select("html body div#gs_top div.g-doc-1024 div.g-section div.g-unit form#citationsForm div.g-section div table.cit-table tbody tr.cit-table td#col-title"));
				for (int y=1; y<pubs.size() ;y++) {
					Element element=pubs.get(y);
					Document pubDoc=doc = Jsoup.connect("http://scholar.google.com"+element.getElementsByTag("a").attr("href")).get();
					Elements name=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div.cit-dd"));
					Elements authors=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div.g-section div.cit-dd"));
					Elements pubDate=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div#pubdate_sec.g-section div.cit-dd"));
					Elements journal=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div#venue_sec.g-section div.cit-dd"));
					Elements volume=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div#volume_sec.g-section div.cit-dd"));
					Elements issue=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div#issue_sec.g-section div.cit-dd"));
					Elements description=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div#description_sec.g-section div.cit-dd"));
					Elements URL=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div#main_sec.g-section div.cit-dl div.cit-dd div#title a"));
					Elements citations=(pubDoc.select("html body div#gs_top div.g-doc-1024 div.g-section table.cit-bodytable tbody tr td.cit-contentcell div.cit-body form#citationsForm div div.g-section div div.g-section div.cit-dl div#scholar_sec.g-section div.cit-dd"));
					
					
					System.out.println(y);
					System.out.print(" Name: ->");
					System.out.println("\t"+name.text());
					System.out.print(" Authors: ->");
					System.out.println("\t"+authors.text().split("Abstract")[0]);
					System.out.print(" Date: ->");
					System.out.println("\t"+pubDate.text());
					System.out.print(" Journal: ->");
					System.out.println("\t"+journal.text());
					System.out.print(" Volume: ->");
					System.out.println("\t"+volume.text());
					System.out.print(" Issue: ->");
					System.out.println("\t"+issue.text());
					System.out.print(" Descr: ->");
					System.out.println("\t"+description.text());
					System.out.print(" URL: ->");
					System.out.println("\t"+URL.attr("href"));
					System.out.print(" Citations: ->");
					System.out.println("\t"+(!citations.text().equals("")?(citations.text().split("Cited by ")[1]):""));
				}
				
			//}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
