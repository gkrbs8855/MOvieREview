package com.kpc.review;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kpc.board.ReviewVO;
import com.kpc.common.PagingUtil;


@WebServlet("/review")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    //페이징 처리 리스트
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * @param url 			: 페이징 적용 대상 주소  (예) /board/BoardServlet
		 * @param currentPage 	: 현재 페이지
		 * @param totRecord 	: 젠체 게시물수
		 * @param blockCount 	: 한 블럭의 게시물 수
		 * @param blockPage  	: 한화면에 보여질 블럭 수
		 **/
		
		
//		String url = "/pharm?";
//		int currentPage = 1;
//		String pageStr = request.getParameter("currentPage");
//		if(pageStr != null) {
//			currentPage = Integer.parseInt(pageStr);
//		}
//		int totRecord = impl.selectCount();
//		int blockCount = 10;
//		int blockPage = 20;
//		
//		PagingUtil util 
//          = new PagingUtil(url,currentPage,totRecord,blockCount,blockPage);
//	
//		ArrayList<ReviewVO> list = impl.select(util.getStartSeq(),util.getEndSeq());
//		System.out.println(list.size()+"rows paring done...");
//
//		RequestDispatcher rd = request.getRequestDispatcher("/pharm_list.jsp");
//		request.setAttribute("MYLISTKKKKK", list);
//		request.setAttribute("MYTOTALKKKK", list.size());
//		request.setAttribute("MYPAGINGKKKK", util.getPagingHtml());
//		rd.forward(request, response);
//	}
//
//	//AJAX 테스트용 리스트
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Gson gson = new Gson();
//		int startSeq = 1;
//		int endSeq = 100;
//		
////		쿼리스트링 : startSeq=1&endSeq=50
//		String sprm = request.getParameter("startSeq");
//		String eprm = request.getParameter("endSeq");
//		if(sprm != null) {
//			startSeq = Integer.parseInt(sprm);
//		}
//		if(eprm != null) {
//			endSeq = Integer.parseInt(eprm);
//		}
//		
//		String lat = request.getParameter("clat");
//		String lng = request.getParameter("clng");
//		String cityCode = request.getParameter("cityCode");
//		String countyName = request.getParameter("countyName");

//		json객체 : {"startSeq":"1" , "endSeq":"50"}
//		String jsonParam
//= request.getReader().lines().collect(Collectors.joining());
//		HashMap<String, String> map = gson.fromJson(jsonParam, HashMap.class);
//		if(map.get("startSeq") != null) {
//			startSeq = Integer.parseInt(map.get("startSeq"));
//		}
//		if(map.get("endSeq") != null) {
//			endSeq = Integer.parseInt(map.get("endSeq"));
//		}
		
		
////		쿼리스트링 : KKK={"startSeq":"1" , "endSeq":"50"}
//		String prm = request.getParameter("KKK");
//		HashMap<String, String> map = gson.fromJson(prm, HashMap.class);
//		if(map.get("startSeq") != null) {
//			startSeq = Integer.parseInt(map.get("startSeq"));
//		}
//		if(map.get("endSeq") != null) {
//			endSeq = Integer.parseInt(map.get("endSeq"));
//		}
//		PharmVO vo = new PharmVO();
//		vo.setCityCode(cityCode);
//		vo.setCountyName(countyName);
//		vo.setLng(lng);
//		vo.setLat(lat);
//		vo.setStartSeq(startSeq);
//		vo.setEndSeq(endSeq);
		
//		PharmImpl impl = new PharmImpl();
//		
//		ArrayList<PharmVO> list = new ArrayList<PharmVO>();
//		if(!vo.getCityCode().equals("") && !vo.getCountyName().equals("")) {
//			list = impl.selectByCount(vo);
//		} else if(!vo.getLat().equals("") && !vo.getLng().equals("")) {
//			list = impl.selectByLatLng(vo);
//		}
		
		//객체(list)를  <--> 글자(String)로 변환
//		String jsonStr = gson.toJson(list);
		
		response.setContentType("application/x-www-form-urlencoded; charset=UTF-8");
		PrintWriter out = response.getWriter();
//		out.println(jsonStr); 
	}

}
