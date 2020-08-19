package com.kpc.wordcloud;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletResponse;
import org.openkoreantext.processor.OpenKoreanTextProcessorJava;
import org.openkoreantext.processor.phrase_extractor.KoreanPhraseExtractor;
import org.openkoreantext.processor.phrase_extractor.KoreanPhraseExtractor.KoreanPhrase;
import org.openkoreantext.processor.tokenizer.KoreanTokenizer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.google.gson.Gson;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;
import scala.collection.Seq;

@RestController
public class WordCloudController {

	@Autowired
	WordCloudServiceImpl impl;

	@RequestMapping(value = "/word.do", method = RequestMethod.GET)
	public ArrayList<WordCloudVO> wordCloud(@RequestParam("movieCode") String movieCode) {
		System.out.println("wordCloud Controller "+movieCode);
		ArrayList<WordCloudVO> wordList = impl.svcWcloudList(movieCode);
		return wordList;
	}
	
	@RequestMapping(value = "/pasring", method = RequestMethod.GET)
	public void replyParsing() {

		ArrayList<ReviewVO> list = impl.svcSelect();
		//검증용 ----------------------------------------
//		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
//		ReviewVO tvo = new ReviewVO();
//		tvo.setSite("watcha");
//		tvo.setMovieCode(20193450);
//		tvo.setReview("신파를 조금 걷어내면 보이는 반짝이는 의식. 많은 사람들이 '저게 맞지'를 외치는 동안 줄줄 새며 버려지는 인간성을 조명한다.");
//		list.add(tvo);

		
		Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		int cnt = 0;
		int bseq = 1;
		
		  
		
		String filename = "C:\\AIP\\sts\\workspace_spring\\spring_test\\src\\main\\java\\com\\kpc\\wordcloud\\result.csv";
		BufferedWriter br = null;
		try {
				
				br = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filename), "euc-kr"));
				
				//------------------------------------- 리뷰 1건당 -------------------------------
				for(ReviewVO reviewVO : list) { 
					KomoranResult analyzeResultList = komoran.analyze(reviewVO.getReview());
					// Java/SL  클래스/NNP 하나/NR  분석/NNG  
					List<String> analyzeList =  analyzeResultList.getMorphesByTags("SL", "NP", "NNP", "NNG"); //SL NNP NR NNG
		
					// 단어별로 counting
					Set<String> wordSet = new HashSet<String>();
					Map<String,Integer>wordCntMap = new HashMap<String,Integer>();
					//System.out.println(analyzeList.size() + "---");
					if(analyzeList.size() > 0) {
									//------------------------- 리뷰 1건의 > SL,NNP,NR,NNG 단어별로 counting ------------------
									for(String token : analyzeList) {
										if(token.length() > 1) {
											//System.out.println(token);
											if(wordSet.contains(token)){
												wordCntMap.put(token ,1+wordCntMap.get(token));
											}else if(wordSet.isEmpty()){
												wordCntMap.put(token,1);
											}else{
												wordCntMap.put(token,1);
											}
											wordSet.add(token);           
										}
									}
						
									//System.out.println(wordCntMap);  	
									
									//-------------------------  단어별로 counting한 wordCntMap정보를  CSV 파일에  write ------------------
									
									
									
									for (String key : wordCntMap.keySet()) {
											StringBuilder builder  = new StringBuilder();
											builder.append(bseq);
											builder.append(",");
											builder.append(reviewVO.getMovieCode());
											builder.append(",");
											builder.append(reviewVO.getSite());
											builder.append(",");
											builder.append(key);
											builder.append(",");
											builder.append(wordCntMap.get(key));
										
											
											br.write(builder.toString()+"\n");
											//System.out.println(builder.toString()+"\n");
											bseq++;
//											----------------- 상세 형태소 분석 결과 -----------------------
//										    List<Token> tokenList = analyzeResultList.getTokenList(); //NNP
//										    for (Token token : tokenList) {
//										        System.out.format("(%2d, %2d) %s/%s\n", token.getBeginIndex(), token.getEndIndex(), token.getMorph(), token.getPos());
//										    }
										    
				//							DB INSERT  ::: 느려도 너무 느리다..............................................
				//							WordCloudVO wordVO = new WordCloudVO();
				//							wordVO.setMovieCode(reviewVO.getMovieCode());
				//							wordVO.setSite(reviewVO.getSite());
				//							wordVO.setRword(key);
				//							wordVO.setRcnt(wordCntMap.get(key));
				//							impl.svcInsert(wordVO);
				//							try {
				//								Thread.sleep(200);
				//							} catch (InterruptedException e) {
				//								// TODO Auto-generated catch block
				//								e.printStackTrace();
				//							}
									
									} //e.o.for
						
						
									cnt++;
									
//									try {
//										Thread.sleep(10);
//									} catch (InterruptedException e) {
//										// TODO Auto-generated catch block
//										e.printStackTrace();
//									}
									
				//					if(cnt == 2) 
				//						break;
									
									System.out.println(cnt + "리뷰 " + bseq+" 건 파싱");
				
					} //e.o.if
				} //e.o.for
				br.flush();
				br.close();
				System.out.println(cnt + "건 done~!!!");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
