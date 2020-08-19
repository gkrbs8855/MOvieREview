package com.kpc.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.kpc.wordcloud.ReviewVO;
import com.kpc.wordcloud.WordCloudVO;

@Repository(value="wordCloudMapper")
@Mapper
public interface WordCloudMapper {

	
	public ArrayList<ReviewVO> allList(); 
	public ArrayList<WordCloudVO> wcloudList(String movieCode);
	public int  binsert(WordCloudVO vo);
}
