package com.kpc.wordcloud;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;

import java.util.List;

public class KomoranTest3 {

	public static void main(String[] args) {
		 Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
		    String strToAnalyze = "지금까지 Gradle이나 Maven과 같은 프로젝트 관리도구 없이 의존성을 추가하고, KOMORAN을 이용하여 형태소 분석을 하는 간단한 예제를 살펴보았습니다. "
		    		+ "GitHub 저장소에서 Java 버전 의 전체 코드를 확인하실 수 있습니다.";

		    KomoranResult analyzeResultList = komoran.analyze(strToAnalyze);
		    // Java/SL  클래스/NNP 하나/NR  분석/NNG  
		    List<String> list =  analyzeResultList.getMorphesByTags("SL", "NP", "NNP", "NNG"); //SL NNP NR NNG
		    
		    for(String s : list) {
		    	if(s.length() > 1)
		    		System.out.println(s);
		    }
		    
//		    System.out.println(analyzeResultList.getPlainText());
//
		    List<Token> tokenList = analyzeResultList.getTokenList(); //NNP
		    for (Token token : tokenList) {
		        System.out.format("(%2d, %2d) %s/%s\n", token.getBeginIndex(), token.getEndIndex(), token.getMorph(), token.getPos());
		    }
		    
	} 

}
