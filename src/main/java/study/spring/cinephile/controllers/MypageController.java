package study.spring.cinephile.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.helper.PageData;
import study.spring.cinephile.helper.RegexHelper;
import study.spring.cinephile.helper.WebHelper;
import study.spring.cinephile.model.ChoiceMovie;
import study.spring.cinephile.model.FavTheater;
import study.spring.cinephile.model.Members;
import study.spring.cinephile.model.MyPageBookingList;
import study.spring.cinephile.model.MyPageQna;
import study.spring.cinephile.model.PasswordOk;
import study.spring.cinephile.model.Theater2;
import study.spring.cinephile.service.ChoiceMovieService;
import study.spring.cinephile.service.FavTheaterService;
import study.spring.cinephile.service.MembersService;
import study.spring.cinephile.service.MyPageBookingListService;
import study.spring.cinephile.service.MyPageMembersService;
import study.spring.cinephile.service.MyPageQnaService;
import study.spring.cinephile.service.PasswordOkService;
import study.spring.cinephile.service.Theater2Service;

/**
 * 마이페이지의 페이지들을 제어하는 컨트롤러입니다.
 *
 */

@Slf4j //로그 기록시 필요
@Controller //컨트롤러 명시
public class MypageController {
	@Autowired WebHelper webHelper;
	@Autowired RegexHelper regexHelper;
	@Autowired FavTheaterService favTheaterService;
	@Autowired PasswordOkService passwordOkService;
	@Autowired Theater2Service theater2Service;
	@Autowired MembersService membersService;
	@Autowired MyPageMembersService myPageMembersService;
	@Autowired ChoiceMovieService choiceMovieService;
	@Autowired MyPageQnaService myPageQnaService;
	@Autowired MyPageBookingListService myPageBookingListService;
	
	//필요한 객체들 주입
	
	@Value("#{servletContext.contextPath}")
	String contextPath;
	//프로젝트경로를 변수로

	@RequestMapping(value="/mypage/mypagemain.do",method=RequestMethod.GET) //마이페이지 > 메인페이지
	public ModelAndView mypagemain(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn"); //로그인세션을 가져옴
		
		model.addAttribute("my_session",mySession);
		
		FavTheater input=new FavTheater();
		input.setMembers_id(mySession.getMembers_id()); //세션의 멤버id(로그인한 아이디의 일련번호)를 빈즈에 넣음
		List<FavTheater> output=null;
		
		try {
			output=favTheaterService.getFavTheaterList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//자주가는 영화관 목록을 불러오는 과정
		
		
		MyPageBookingList bookinginput=new MyPageBookingList();
		bookinginput.setMembers_id(mySession.getMembers_id());
		List<MyPageBookingList> bookingoutput=null;
		
		ChoiceMovie choiceinput=new ChoiceMovie();
		choiceinput.setMembers_id(mySession.getMembers_id());
		List<ChoiceMovie> choiceoutput=null;
		
		try {
			choiceoutput=choiceMovieService.getChoiceMovieList(choiceinput);
			bookingoutput=myPageBookingListService.getMyPageBookingList(bookinginput);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		model.addAttribute("output",output);
		model.addAttribute("choiceoutput",choiceoutput);
		model.addAttribute("bookingoutput",bookingoutput);
		
		return new ModelAndView("mypage/mypagemain");
	}
	
	@RequestMapping(value="/mypage/bookinglist.do",method=RequestMethod.GET) //마이페이지 > 예매내역페이지
	public ModelAndView bookinglist(Model model,HttpServletRequest request,
			@RequestParam(value="page",defaultValue="1") int nowPage) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		int totalCount=0;
		int listCount=5;
		int pageCount=5;
		
		
		MyPageBookingList input=new MyPageBookingList();
		input.setMembers_id(mySession.getMembers_id());
		
		List<MyPageBookingList> output=null;
		PageData pageData=null;
		
		try {
			totalCount=myPageBookingListService.getMyPageBookingListCount(input);
			pageData=new PageData(nowPage,totalCount,listCount,pageCount);
			
			MyPageBookingList.setOffset(pageData.getOffset());
			MyPageBookingList.setListCount(pageData.getListCount());
			
			output=myPageBookingListService.getMyPageBookingList(input);
		} catch (Exception e) {
			return webHelper.redirect(null,e.getLocalizedMessage());
		}
		
		model.addAttribute("my_session",mySession);
		model.addAttribute("output",output);
		model.addAttribute("pageData",pageData);
		return new ModelAndView("mypage/bookinglist");
	}
	
	@RequestMapping(value="/mypage/mybooking_delete.do",method=RequestMethod.GET)
	public ModelAndView mybooking_delete(Model model,HttpServletRequest request,
			@RequestParam(value="timetable_id",defaultValue="0") int timetable_id) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		if(timetable_id==0) {
			return webHelper.redirect(null, "잘못된 접근입니다.");
		}
		
		MyPageBookingList input=new MyPageBookingList();
		input.setMembers_id(mySession.getMembers_id());
		input.setTimetable_id(timetable_id);
		
		try {
			myPageBookingListService.deleteMyPageBookingList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		return webHelper.redirect(contextPath+"/mypage/bookinglist.do", "예매가 취소되었습니다.");
	}
	
	@RequestMapping(value="/mypage/changeinfo-(1).do",method=RequestMethod.GET) //마이페이지 > 회원정보수정페이지1
	public String changeinfo1(Model model,HttpServletRequest request) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		return "mypage/changeinfo-(1)";
	}
	
	@RequestMapping(value="/mypage/changeinfo-(2).do",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView changeinfo2(Model model,
			HttpServletRequest request,
			@RequestParam(value="user_pw",required=false) String user_pw) {
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn"); //로그인 세션 가져옴
		
		PasswordOk input=new PasswordOk();
		
		input.setMembers_id(mySession.getMembers_id());
		input.setUser_pw(user_pw);
		int totalCount=0;
		try {
			totalCount=passwordOkService.getPasswordOkCount(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "정상적이지 않은 접근입니다.");
		}
		
		if(totalCount==0) {
			if(user_pw==null) {
				return webHelper.redirect(null, "정상적이지 않은 접근입니다.");
			}
			else if(user_pw.equals("")) {
				return webHelper.redirect(null, "비밀번호를 입력하세요.");
			}
			else {
				return webHelper.redirect(null,"비밀번호가 틀립니다.");
			}
		}
		
		//현재 로그인한 계정의 멤버id(일련번호)와 비밀번호를 이용해 db의 값과 비교해 일치하는 데이터개수를 totalCount변수에 가져온다.
		//totalCount가 0이면 비밀번호가 틀린것->페이지 이동 불허
		//user_pw를 가져오지 못했으면 정상적이지않은 경로로 처리
		//user_pw가 ""이면 비밀번호를 입력하라고 출력
		

		else {
			model.addAttribute("my_session",mySession);
			model.addAttribute("totalCount",totalCount);
			return new ModelAndView("mypage/changeinfo-(2)");
		}
		//totalCount가 0이 아니면(1) 비밀번호가 일치한것->페이지 이동허가
	}
	
	
	
	
	@RequestMapping(value="/mypage/changeinfo-(3).do",method= {RequestMethod.GET,RequestMethod.POST}) //마이페이지 > 회원정보수정페이지3
	public ModelAndView changeinfo3(Model model,HttpServletRequest request,
			@RequestParam(value="user_password",required=false) String user_pw,
			@RequestParam(value="mail",required=false) String user_email,
			@RequestParam(value="phone",required=false) String phone,
			@RequestParam(value="postcode",required=false) String postcode,
			@RequestParam(value="address",required=false) String addr,
			@RequestParam(value="details",required=false) String addr_detail
			) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn"); //로그인 세션 가져옴
		
		Members input=new Members();
		input.setUser_pw(user_pw);
		input.setUser_email(user_email);
		input.setPhone(phone);
		input.setPostcode(postcode);
		input.setAddr(addr);
		input.setAddr_detail(addr_detail);
		input.setMembers_id(mySession.getMembers_id());
		
		if(user_pw==null) {return webHelper.redirect(null, "정상적이지 않은 접근입니다.");}
		if(user_email==null) {return webHelper.redirect(null, "이메일을 입력하세요.");}
		if(phone==null) {return webHelper.redirect(null, "연락처를 입력하세요.");}
		if(postcode==null) {return webHelper.redirect(null, "우편번호를 입력하세요.");}
		if(addr==null) {return webHelper.redirect(null, "주소를 입력하세요.");}
		if(addr_detail==null) {return webHelper.redirect(null, "상세주소를 입력하세요.");}
		if(!regexHelper.isEmail(user_email)) {return webHelper.redirect(null, "올바른 메일을 입력하세요.");}
		if(!regexHelper.isTel(phone)) {return webHelper.redirect(null, "올바른 연락처를 입력하세요.");}
		
		int totalCount=0;
		try {
			totalCount=myPageMembersService.getMyPageMembersCount(input);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		if(totalCount==1) {
			return webHelper.redirect(null, "이미 사용중인 이메일입니다. 다른 이메일을 입력해주세요!");
		}
		
		try {
			myPageMembersService.editMyPageMembers(input);
		    session.removeAttribute("loggedIn");//회원정보 수정 시 로그아웃
			return new ModelAndView("mypage/changeinfo-(3)");
		} catch (Exception e) {
			return webHelper.redirect("mypage/changeinfo-(2).do","수정에 실패했습니다. 관리자에게 문의하세요.");
		}

	}
	
	@RequestMapping(value="/mypage/choicelist.do",method=RequestMethod.GET) //마이페이지 > 좋아한영화내역페이지
	public ModelAndView choicelist(Model model,HttpServletRequest request,
			@RequestParam(value="page",defaultValue="1") int nowPage) {
		
		int totalCount=0;
		int listCount=5;
		int pageCount=5;
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		ChoiceMovie input=new ChoiceMovie();
		input.setMembers_id(mySession.getMembers_id());
		
		List<ChoiceMovie> output=null;
		PageData pageData=null;
		
		try {
			totalCount=choiceMovieService.getChoiceMovieCount(input);
			pageData=new PageData(nowPage,totalCount,listCount,pageCount);
			
			ChoiceMovie.setOffset(pageData.getOffset());
			ChoiceMovie.setListCount(pageData.getListCount());
			
			output=choiceMovieService.getChoiceMovieList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		
		model.addAttribute("my_session",mySession);
		model.addAttribute("output",output);
		model.addAttribute("pageData",pageData);
		
		return new ModelAndView("mypage/choicelist");
	}
	
	@RequestMapping(value="/mypage/choice_delete.do",method=RequestMethod.GET)
	public ModelAndView choice_delete(Model model,HttpServletRequest request,
			@RequestParam(value="fav_movie_id",defaultValue="0") int fav_movie_id) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		if(fav_movie_id==0) {
			return webHelper.redirect(null, "잘못된 접근입니다.");
		}
		
		ChoiceMovie input=new ChoiceMovie();
		input.setMembers_id(mySession.getMembers_id());
		input.setFav_movie_id(fav_movie_id);
		
		try {
			choiceMovieService.deleteChoiceMovie(input);
		} catch (Exception e) {
			return webHelper.redirect(null, "삭제에 실패했습니다. 관리자에게 문의하세요.");
		}
		
		return webHelper.redirect(contextPath+"/mypage/choicelist.do", "좋아한 영화 목록에서 삭제되었습니다.");
	}
	
	@RequestMapping(value="/mypage/inquirylist.do",method=RequestMethod.GET) //마이페이지 > 나의문의내역페이지
	public ModelAndView inquirylist(Model model,HttpServletRequest request,
			@RequestParam(value="page",defaultValue="1") int nowPage) {
		
		int totalCount=0;
		int listCount=8;
		int pageCount=5;
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		MyPageQna input=new MyPageQna();
		input.setMembers_id(mySession.getMembers_id());
		
		List<MyPageQna> output=null;
		PageData pageData=null;
		
		try {
			totalCount=myPageQnaService.getMyPageQnaCount(input);
			pageData=new PageData(nowPage,totalCount,listCount,pageCount);
			
			MyPageQna.setOffset(pageData.getOffset());
			MyPageQna.setListCount(pageData.getListCount());
			
			output=myPageQnaService.getMyPageQnaList(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("my_session",mySession);
		model.addAttribute("output",output);
		model.addAttribute("pageData",pageData);
		model.addAttribute("totalCount",totalCount);
		
		return new ModelAndView("mypage/inquirylist");
	}
	
	@RequestMapping(value="/mypage/inquirypost.do",method=RequestMethod.GET) //마이페이지 > 문의내역상세
	public ModelAndView inquirypost(Model model,HttpServletRequest request,
			@RequestParam(value="qna_id",defaultValue="0") int qna_id) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		if(qna_id==0) {
			return webHelper.redirect(null, "존재하지 않는 문의입니다.");
		}
		
		MyPageQna input=new MyPageQna();
		input.setMembers_id(mySession.getMembers_id());
		input.setQna_id(qna_id);
		
		MyPageQna input2=new MyPageQna();
		input2.setMembers_id(mySession.getMembers_id());
		
		MyPageQna output=null;
		List<MyPageQna> output2=null;
		
		try {
			output=myPageQnaService.getMyPageQnaItem(input);
			output2=myPageQnaService.getMyPageQnaList(input2);

		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		
		
		model.addAttribute("output",output);
		model.addAttribute("output2",output2);
		return new ModelAndView("mypage/inquirypost");
	}
	
	@RequestMapping(value="/mypage/oftentheater.do",method=RequestMethod.GET) //마이페이지 > 자주가는영화관 추가,삭제 페이지
	public ModelAndView oftentheater(Model model,HttpServletRequest request,
			@RequestParam(value="keyword",required=false) String keyword,
			@RequestParam(value="page",defaultValue="1") int nowPage,
			@RequestParam(value="region",defaultValue="10") int region,
			@RequestParam(value="brand",required=false) String brand) {
		
		int totalCount=0;
		int listCount=8;
		int pageCount=5;
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		model.addAttribute("my_session",mySession);
		
		Theater2 input=new Theater2();
		log.error(region+"asdasd");
		input.setBranch(keyword);
		input.setProv_no(region);
		input.setBrand(brand);
		
		List<Theater2> output=null;
		PageData pageData=null;
		
		
		try {
			totalCount=theater2Service.getTheater2Count(input);
			pageData=new PageData(nowPage,totalCount,listCount,pageCount);
			
			Theater2.setOffset(pageData.getOffset());
			Theater2.setListCount(pageData.getListCount());
			
			output=theater2Service.getTheater2List(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		FavTheater input2=new FavTheater();
		input2.setMembers_id(mySession.getMembers_id());
		List<FavTheater> output2=null;
		
		try {
			output2=favTheaterService.getFavTheaterList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//현재의 자주가는영화관 목록을 가져오는 작업임
		
		model.addAttribute("keyword",keyword);
		model.addAttribute("input",input);
		model.addAttribute("output",output);
		model.addAttribute("output2",output2);
		model.addAttribute("pageData",pageData);
		return new ModelAndView("mypage/oftentheater");
	}
	
	@RequestMapping(value="/mypage/fav_theater_add.do",method=RequestMethod.GET)
	public ModelAndView fav_theater_add(Model model,HttpServletRequest request,
			@RequestParam(value="theater_id") int theater_id) {
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		if(theater_id==0) {
			return webHelper.redirect(null, "데이터가 없습니다.");
		}
		
		
		FavTheater input=new FavTheater();
		input.setMembers_id(mySession.getMembers_id());
		input.setTheater_id(theater_id);
		
		FavTheater input2=new FavTheater();
		input2.setMembers_id(mySession.getMembers_id());
		input2.setTheater_id(theater_id);
		int totalCount=0;
		
		try {
			totalCount=favTheaterService.getFavTheaterCount(input2);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		if(totalCount==1) {
			return webHelper.redirect(null,"이미 추가하신 영화관입니다.");
		}
		
		try {
			favTheaterService.addFavTheater(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "추가에 실패했습니다. 관리자에게 문의하세요.");
		}
		
		return webHelper.redirect(contextPath+"/mypage/oftentheater.do", "추가되었습니다.");
	}
	
	@RequestMapping(value="/mypage/fav_theater_delete.do",method=RequestMethod.GET)
	public ModelAndView fav_theater_delete(Model model,HttpServletRequest request,
			@RequestParam(value="theater_id",defaultValue="0") int theater_id) {
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn");
		
		
		if(theater_id==0) {
			return webHelper.redirect(null, "데이터가 없습니다.");
		}
		
		FavTheater input=new FavTheater();
		input.setMembers_id(mySession.getMembers_id());
		input.setTheater_id(theater_id);
		
		try {
			favTheaterService.deleteFavTheater(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null,"삭제에 실패했습니다. 관리자에게 문의하세요.");
		}
		
		
		return webHelper.redirect(contextPath+"/mypage/oftentheater.do", "삭제되었습니다.");
	}
	
	@RequestMapping(value="/mypage/withdrawal-(1).do",method=RequestMethod.GET) //마이페이지 > 회원탈퇴페이지1
	public String withdrawal1(Model model) {
		
		return "mypage/withdrawal-(1)";
	}
	
	@RequestMapping(value="/mypage/withdrawal_ok.do",method= {RequestMethod.GET,RequestMethod.POST}) //마이페이지 > 회원탈퇴페이지2
	public ModelAndView withdrawalok(Model model,HttpServletRequest request,
			@RequestParam(value="user_pw",required=false) String user_pw) {
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn"); //로그인 객체 가져옴
		
		PasswordOk input=new PasswordOk();
		
		input.setMembers_id(mySession.getMembers_id());
		input.setUser_pw(user_pw);
		int totalCount=0;
		try {
			totalCount=passwordOkService.getPasswordOkCount(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.redirect(null, "정상적이지 않은 접근입니다.");
		}
		
		if(totalCount==0) {
			if(user_pw==null) {
				return webHelper.redirect(null, "정상적이지 않은 접근입니다.");
			}
			else if(user_pw.equals("")) {
				return webHelper.redirect(null,"비밀번호를 입력하세요.");
			}
			else {
				return webHelper.redirect(null,"비밀번호가 틀립니다.");
			}
		}

		//현재 로그인한 계정의 멤버id(일련번호)와 비밀번호를 이용해 db의 값과 비교해 일치하는 데이터개수를 totalCount변수에 가져온다.
		//totalCount가 0이면 비밀번호가 틀린것->페이지 이동 불허
		//user_pw를 가져오지 못했으면 정상적이지않은 경로로 처리
		//user_pw가 ""이면 비밀번호를 입력하라고 출력
		
		else {
			model.addAttribute("my_session",mySession);
			model.addAttribute("totalCount",totalCount);
			return new ModelAndView("mypage/withdrawal_ok");
		}
		//totalCount가 0이 아니면(1) 비밀번호가 일치한것->페이지 이동허가
		
	}
	
	@RequestMapping(value="/mypage/withdrawal-(2).do",method= RequestMethod.POST) //마이페이지 > 회원탈퇴페이지3
	public ModelAndView withdrawal2(Model model,HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		Members mySession=(Members)session.getAttribute("loggedIn"); //로그인 객체 가져옴
		
		Members input=new Members();
		input.setMembers_id(mySession.getMembers_id());
		
		
		try {
			myPageMembersService.deleteMyPageMembers(input);
			session.removeAttribute("loggedIn");//회원정보 수정 시 로그아웃
			return new ModelAndView("mypage/withdrawal-(2)");
		} catch (Exception e) {
			return webHelper.redirect(contextPath+"/mypage/mypagemain.do","탈퇴에 실패했습니다. 관리자에게 문의하세요.");
		}
		

	}


	
}
