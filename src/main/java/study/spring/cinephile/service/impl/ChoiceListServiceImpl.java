package study.spring.cinephile.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import study.spring.cinephile.model.ChoiceList;
import study.spring.cinephile.service.ChoiceListService;

@Service
@Slf4j
public class ChoiceListServiceImpl implements ChoiceListService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public ChoiceList getChoiceListItem(ChoiceList input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ChoiceList> getChoiceListList(ChoiceList input) throws Exception {
		List<ChoiceList> result=null;
		
		try {
			result=sqlSession.selectList("ChoiceListMapper.selectList",input);
			
			if(result==null) {
				throw new NullPointerException("result=null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;

	}

	@Override
	public int getChoiceListCount(ChoiceList input) throws Exception {
		int result=0;
		try {
			result=sqlSession.selectOne("ChoiceListMapper.selectCountAll",input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int addChoiceList(ChoiceList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int editChoiceList(ChoiceList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteChoiceList(ChoiceList input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
