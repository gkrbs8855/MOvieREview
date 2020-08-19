package com.kpc.board;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.kpc.board.BoardVO;
import com.kpc.mapper.BoardMapper;

@Service  
public class BoardServiceImpl implements BoardService {
	@Autowired
//	@Qualifier("dao")

//	BoardDaoImpl dao;
	BoardMapper dao;  //interface BoardMapper

	@Override
	   public ArrayList<ReviewVO> reviewSelectList(int code, int start, int end) {
	      System.out.printf("%d %d %d",code, start, end);
	      System.out.println("서비스");
	      ArrayList<ReviewVO> list = dao.reviewSelectList(code, start, end);
	      System.out.println("Service  //  movieselect   /   " +   list.get(0).getReview());
	      
	      return list;
	   }
	
	
	@Override
	public MovieVO movieselect(int movieCode) {
		System.out.println("IN Service movieselect  ");
		MovieVO vo = dao.movieselect(movieCode);	
		System.out.println("Service  //  movieselect   /   " +   vo.getScore());
		
		return vo;
	}

	@Override
	public ArrayList<MovieVO> movieselect() {
		System.out.println("IN Service movieselect  ");
		 ArrayList<MovieVO> list = dao.movielist();	
		System.out.println("Service  //  movieselect   /   " +   list);

		System.out.println(list.get(0).getTitle());
		return list;
	}
	
	
	@Override
	public ArrayList<BoardVO> svcSelect(String searchKey, String searchStr) {
		ArrayList<BoardVO> list = dao.blistBySearch(searchKey, searchStr);
		return list;
	}

	@Override
	public int svcInsert(BoardVO vo) {
		//1. 게시판 입력
		int res = dao.binsert(vo);
		
		//2. 입력된 내용 클라우드 전송
		
		//3. 입력된 내용 로그 기록
		
		return res;
	}

	@Override
	public ArrayList<BoardVO> svcSelect() {
		System.out.println("Service 실행.....");
		ArrayList<BoardVO> list = dao.allList();
		return list;
	}

	@Override
	public BoardVO svcSelect(int bseq) {
		System.out.println("Service ...");
		BoardVO vo = dao.bview(bseq);
		return vo;
	}

	@Override
	public int svcUpdate(BoardVO vo) {
		int res = dao.bupdate(vo);
		return res;
	}

	@Override
	public int svcDelete(int bseq) {
		int res = dao.bdelete(bseq);
		return res;
	}


	@Override
	public ArrayList<ScoreVO> reviewlist(int movieCode) {
		 ArrayList<ScoreVO> rlist = dao.reviewlist(movieCode);	
		return rlist;
	}
	
	@Override
	public ArrayList<ScoreVO> emotionlist_low(int movieCode) {
		 ArrayList<ScoreVO> rlist = dao.emotionlist_low(movieCode);	
		return rlist;
	}
	@Override
	public ArrayList<ScoreVO> emotionlist_high(int movieCode) {
		 ArrayList<ScoreVO> rlist = dao.emotionlist_high(movieCode);	
		return rlist;
	}
}
