package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.ChoiceList;

public interface ChoiceListService {
		public ChoiceList getChoiceListItem(ChoiceList input) throws Exception;
	
	public List<ChoiceList> getChoiceListList(ChoiceList input) throws Exception;
	
	public int getChoiceListCount(ChoiceList input) throws Exception;
	
	public int addChoiceList(ChoiceList input) throws Exception;
	
	public int editChoiceList(ChoiceList input) throws Exception;
	
	public int deleteChoiceList(ChoiceList input) throws Exception;
}
