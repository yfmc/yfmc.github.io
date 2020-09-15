package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.BookingList;


public interface BookingListService {
	public BookingList getBookingListItem(BookingList input) throws Exception;
	
	public List<BookingList> getBookingListList(BookingList input) throws Exception;
	
	public int getBookingListCount(BookingList input) throws Exception;
	
	public int addBookingList(BookingList input) throws Exception;
	
	public int editBookingList(BookingList input) throws Exception;
	
	public int deleteBookingList(BookingList input) throws Exception;
}
