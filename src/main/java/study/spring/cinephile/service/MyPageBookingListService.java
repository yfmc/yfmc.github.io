package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.MyPageBookingList;

public interface MyPageBookingListService {
	public List<MyPageBookingList> getMyPageBookingList(MyPageBookingList input) throws Exception;
	
	public int getMyPageBookingListCount(MyPageBookingList input) throws Exception;
	
	public int deleteMyPageBookingList(MyPageBookingList input) throws Exception;
}
