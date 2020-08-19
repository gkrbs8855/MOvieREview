package com.kpc.board;

import java.util.ArrayList;

import com.kpc.board.BoardVO;

public interface BoardService {
	
		public MovieVO  movieselect(int movieCode);
	
		public ArrayList<ReviewVO>  reviewSelectList(int movieCode, int start, int end);
	//검색	
		public	ArrayList<BoardVO> svcSelect(String searchKey, String searchStr);
		//글쓰기	
		public	int	svcInsert(BoardVO vo);  //(int bseq, String title, String contents, String regid);
		//글목록	
		public	ArrayList<BoardVO> svcSelect();
		
		//글상세보기	
		public	BoardVO	svcSelect(int bseq);
		//수정	
		public	int	svcUpdate(BoardVO vo);  //(int bseq, String title, String contents, String regid);
		//삭제	
		public	int	svcDelete(int bseq);

		public ArrayList<ScoreVO> reviewlist(int movieCode);

		public ArrayList<MovieVO> movieselect();

		ArrayList<ScoreVO> emotionlist_low(int movieCode);

		ArrayList<ScoreVO> emotionlist_high(int movieCode);
}
