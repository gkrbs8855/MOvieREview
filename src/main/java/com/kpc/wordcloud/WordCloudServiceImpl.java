package com.kpc.wordcloud;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.kpc.mapper.WordCloudMapper;

@Service  
public class WordCloudServiceImpl implements WordCloudService {
	@Autowired
	WordCloudMapper wordCloudMapper;  //interface BoardMapper

	
	@Override
	public int svcInsert(WordCloudVO vo) {
		//1. 게시판 입력
		int res = wordCloudMapper.binsert(vo);
		return res;
	}

	@Override
	public ArrayList<ReviewVO> svcSelect() {
		ArrayList<ReviewVO> list = wordCloudMapper.allList();
		return list;
	}

	@Override
	public ArrayList<WordCloudVO> svcWcloudList(String movieCode) {
		ArrayList<WordCloudVO> list = wordCloudMapper.wcloudList(movieCode);
		return list;
	}
	

}
