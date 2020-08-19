package com.kpc.wordcloud;

import java.util.ArrayList;


public interface WordCloudService {
		//글쓰기	
		public	int	svcInsert(WordCloudVO vo);  
		//글목록	
		public	ArrayList<ReviewVO> svcSelect();
		
		public ArrayList<WordCloudVO> svcWcloudList(String movieCode);
		
}
