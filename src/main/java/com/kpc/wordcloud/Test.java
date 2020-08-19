package com.kpc.wordcloud;

import java.util.HashMap;
import java.util.Map;

public class Test {
	public static void main(String[] aa) {
		
		Map<String,Integer>wordCntMap = new HashMap<String,Integer>();
		wordCntMap.put("예술",1);
		wordCntMap.put("유머",1);
		wordCntMap.put("중간",3);
		wordCntMap.put("한국",1);
		for (String key : wordCntMap.keySet()) {
			int value = wordCntMap.get(key);
			System.out.println("[key]:" + key + ", [value]:" + value);
		}

		
	}
}
