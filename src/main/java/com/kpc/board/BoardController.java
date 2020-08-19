package com.kpc.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.kpc.board.BoardVO;
import com.kpc.common.PagingUtil;

@Controller
public class BoardController {
	
	 PagingUtil util;

     int totRecord = 6104;
     int blockCount = 5;
     int blockPage = 20;
     
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	BoardServiceImpl svc;

	
	  @RequestMapping(value = "/movieReview2222.do", method = RequestMethod.GET)
	   public void reviewSelectList2222(Model model, HttpServletResponse response,
			   @RequestParam(value = "movieCode", required = false) String code, 
	         @RequestParam(value = "currentPage", required = false) String nowpage) {
	      Gson gson = new Gson();
	      String url = "/movieReview/movieSingle.do?";
	      System.out.println("Controller  reviewSelectList   nowpage : "+nowpage);
	      int currentPage = 1;
	      String pageStr = nowpage;
	      if(pageStr != null) {
	         currentPage = Integer.parseInt(pageStr);
	      }
	      System.out.println("Controller  code "+code);
	      System.out.printf("%s %d %d %d %d",url,currentPage,totRecord,blockCount,blockPage);
	      PagingUtil util = new PagingUtil(url,currentPage,totRecord,blockCount,blockPage);
	      
	      System.out.println("컨트롤");
	      ArrayList<ReviewVO> list = svc.reviewSelectList(Integer.parseInt(code), util.getStartSeq(), util.getEndSeq());
	      System.out.println("Controller  //  movieSingle   /   " +   list.get(0).getReview());
	      
	      
	      
	      String Jstr = gson.toJson(list);
	      System.out.println(Jstr);
	      System.out.println(util.getPagingHtml());

	      response.setContentType("application/json; charset=UTF-8");
	      PrintWriter out;
	      try {
	          out = response.getWriter();
	          out.println(Jstr); 
	       } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	   }
	   @RequestMapping(value = "/movieReview.do", method = RequestMethod.GET)
	   public void reviewSelectList(Model model, HttpServletResponse response,
			   @RequestParam(value = "movieCode", required = false) String code, 
	         @RequestParam(value = "currentPage", required = false) String nowpage) {
	      Gson gson = new Gson();
	      String url = "/movieReview/movieSingle.do?";
	      System.out.println("Controller  reviewSelectList   nowpage : "+nowpage);
	      int currentPage = 1;
	      String pageStr = nowpage;
	      if(pageStr != null) {
	         currentPage = Integer.parseInt(pageStr);
	      }
	      
	      System.out.printf("%s %d %d %d %d",url,currentPage,totRecord,blockCount,blockPage);
	      PagingUtil util = new PagingUtil(url,currentPage,totRecord,blockCount,blockPage);
	      
	      System.out.println("컨트롤");
	      ArrayList<ReviewVO> list = svc.reviewSelectList(Integer.parseInt(code), util.getStartSeq(), util.getEndSeq());
	      System.out.println("Controller  //  movieSingle   /   " +   list.get(0).getReview());
	      
	      
	      
	      String Jstr = gson.toJson(list);
	      System.out.println(Jstr);
	      System.out.println(util.getPagingHtml());

	      response.setContentType("application/x-www-form-urlencoded; charset=UTF-8");
	      PrintWriter out;
	      try {
	          out = response.getWriter();
	          out.println(util.getPagingHtml()); 
	       } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	   }
	
	
//	public void setDDD(BoardImpl ox10) { 
//		this.impl =  ox10;
//	}
//	@Qualifier @Resource @Inject
	
	@RequestMapping(value = "/movieReview/movieSingle.do", method = RequestMethod.GET)
	public String movieSingle(Model model, @RequestParam(value = "movieCode", required = false) String movieCode) {
		System.out.println("IN GET movieSingle  ");
		MovieVO vo = svc.movieselect(Integer.parseInt(movieCode));
		model.addAttribute("MOVIEVIEW", vo);
		String actor=vo.getActor();
		String[] actorlist=actor.split(",");
		String genres=vo.getGenres();
		String[] genreslist=genres.split(",");
		ArrayList<ScoreVO> scoreCount=svc.reviewlist(Integer.parseInt(movieCode));
		System.out.println(scoreCount.get(0).getScore()+"//"+scoreCount.get(0).getCountperson());
		
		 util = new PagingUtil("/movieReview/movieSingle.do?",1,totRecord,blockCount,blockPage);
		
		 int currentPage = 1;
	      String pageStr = "1";
	      if(pageStr != null) {
	         currentPage = Integer.parseInt(pageStr);
	      }
	      ArrayList<ReviewVO> reviewList = svc.reviewSelectList(Integer.parseInt(movieCode), util.getStartSeq(), util.getEndSeq());
	      model.addAttribute("REVIEWLIST", reviewList);
	      model.addAttribute("TOT", reviewList.size());
	      model.addAttribute("PAGING", util.getPagingHtml());
	      model.addAttribute("SCORECOUNT", scoreCount);	
	      model.addAttribute("ACTORLIST", actorlist);
	      model.addAttribute("GENRESLIST",genreslist);
	      

			ArrayList<ScoreVO> emotiondata_low=svc.emotionlist_low(Integer.parseInt(movieCode));
	      model.addAttribute("EMOTIONDATA_LOW",emotiondata_low);
			ArrayList<ScoreVO> emotiondata_high=svc.emotionlist_high(Integer.parseInt(movieCode));
		      model.addAttribute("EMOTIONDATA_HIGH",emotiondata_high);

		System.out.println("Controller  //  movieSingle   /   " +   vo.getGenres());
		return "movieReview/movieSingle";
	}

	
	

	@RequestMapping(value = "/movieReview/movieSingle.do", method = RequestMethod.POST)
	   public String reviewSelectList(Model model, @RequestParam(value = "movie", required = false) String code, 
	         @RequestParam(value = "currentPage", required = false) String nowpage) {
	      
	      String url = "/movieReview/movieSingle?";
	      
	      int currentPage = 1;
	      String pageStr = nowpage;
	      if(pageStr != null) {
	         currentPage = Integer.parseInt(pageStr);
	      }
	      
	      System.out.printf("%s %d %d %d %d",url,currentPage,totRecord,blockCount,blockPage);
	    
	      
	      System.out.println("컨트롤");
	      ArrayList<ReviewVO> list = svc.reviewSelectList(20197922, util.getStartSeq(), util.getEndSeq());
	      model.addAttribute("REVIEWLIST", list);
	      model.addAttribute("TOT", list.size());
	      model.addAttribute("PAGING", util.getPagingHtml());
	      System.out.println("Controller  //  movieSingle   /   " +   list.get(0).getReview());
	      return "movieReview/movieSingle";
	   }
	
	
	
	@RequestMapping(value = "/movieReview/more.do", method = RequestMethod.GET)
	public String movieList(Model model, @RequestParam(value = "movieList", required = false) String movieCode) {

		System.out.println("IN GET movieSingle  ");
		/*MovieVO vo = svc.movieselect(Integer.parseInt(movieCode));*/
		ArrayList<MovieVO> list = svc.movieselect();
		System.out.println(list.get(0).getGenres());
		model.addAttribute("MOVIELIST", list);
		System.out.println("Controller  //  movieLight   /   " +   list);
		return "movieReview/moreLight";
	}
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String test(Model model) {

		return "movieReview/index";
	}
	
/*	@RequestMapping(value = "/movieReview/moviesingle.do", method = RequestMethod.GET)
	public String movieSingle(Model model) {
//		
		System.out.println("IN GET mainPage  ");
		return "movieReview/moreHomePage";
//		return "redirect:/main.do";

	}*/
	
/*	@RequestMapping(value = "/bdelete.do", method = RequestMethod.GET)
	public String bdelete(Model model, @RequestParam(value = "bseq", required = false) int bseq) {
//		@RequestParam("bseq") int bseq ) {
		// BoardImpl impl = new BoardImpl();
		int res = svc.svcDelete(bseq);
		if (res <= 0) {
			return "error_page"; // /error.jsp
		} else {
			return "redirect:/blist.do";
		}
	}*/

/*	@RequestMapping(value = "/blist.do", method = RequestMethod.GET)
	public String blist(Model model) {
		System.out.println("Controller 실행.....");
		// BoardImpl impl = new BoardImpl();
		ArrayList<BoardVO> list = svc.svcSelect();
		System.out.println(list.size());

		model.addAttribute("MYLISTKKKKK", list);
		// return "admin/ajax/board_list";
		return "board_list";
	}

	@RequestMapping(value = "/blist.do", method = RequestMethod.POST)
	public String blistBySearch(Model model, @RequestParam(value = "searchKey", required = false) String searchKey,
			@RequestParam(value = "searchStr", required = false) String searchStr) {
		// BoardImpl impl = new BoardImpl();
		ArrayList<BoardVO> list = svc.svcSelect(searchKey, searchStr);
		System.out.println(list.size());

		model.addAttribute("MYLISTKKKKK", list);
//		return "admin/ajax/board_list";
		return "board_list";
	}

	@RequestMapping(value = "/bview.do", method = RequestMethod.GET)
	public String bview(Model model, @RequestParam(value = "bseq", required = false) int bseq) {
		// BoardImpl impl = new BoardImpl();
		BoardVO vo = svc.svcSelect(bseq);
		model.addAttribute("VOKKKK", vo);
		return "board_view";
//		return "board_list";
	}

	@RequestMapping(value = "/binsert.do", method = RequestMethod.POST)
	public String binsert(Model model, @ModelAttribute BoardVO vo) {

		// BoardImpl impl = new BoardImpl();
		int res = svc.svcInsert(vo); // <----------------
		String goURL = "error_page";
		if (res <= 0) {
			goURL = "error_page";
		} else {
			goURL = "redirect:/blist.do";
		}
		return goURL;
	}

	@RequestMapping(value = "/bupdate.do", method = RequestMethod.POST)
	public String bupdate(Model model, @ModelAttribute BoardVO vo) {
		// BoardImpl impl = new BoardImpl();
		int res = svc.svcUpdate(vo);

		if (res <= 0) {
			return "error_page";
		} else {
			return "redirect:/blist.do";
		}
	}*/

}
