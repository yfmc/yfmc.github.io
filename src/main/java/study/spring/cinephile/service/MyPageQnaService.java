package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.MyPageQna;
import study.spring.cinephile.model.Qna;

public interface MyPageQnaService {
	//1대1문의 상세조회
    public MyPageQna getMyPageQnaItem(MyPageQna input) throws Exception;

    //1대1문의 목록조회
    public List<MyPageQna> getMyPageQnaList(MyPageQna input) throws Exception;
    
    //페이지구현위한 count
    public int getMyPageQnaCount(MyPageQna input) throws Exception;
    
}
