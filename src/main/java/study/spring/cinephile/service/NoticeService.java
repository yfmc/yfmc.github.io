package study.spring.cinephile.service;

import java.util.List;

import study.spring.cinephile.model.Notice;

/** Notice 데이터 관리 기능을 제공하기 위한 Service 계층. */
public interface NoticeService {
	
    /**
     * Notice 데이터 상세 조회
     * @param   input   조회할 Notice의 일련번호를 담고 있는 Beans
     * @return  조회된 데이터가 저장된 Beans
     * @throws  Exception
     */
    public Notice getNoticeItem(Notice input) throws Exception;

    /**
     * Notice 데이터 목록 조회
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  조회 결과에 대한 컬렉션
     * @throws  Exception
     */
    public List<Notice> getNoticeList(Notice input) throws Exception;

    /**
     * Notice 데이터가 저장되어 있는 갯수 조회
     * @param   input   검색 조건을 담고 있는 Beans
     * @return  저장되어 있는 데이터 수
     * @throws  Exception
     */
    public int getNoticeCount(Notice input) throws Exception;

    /**
     * Notice 데이터 등록하기
     * @param   input   저장할 데이터들을 담고 있는 Beans
     * @return  저장된 데이터 수
     * @throws  Exception
     */
    public int addNotice(Notice input) throws Exception;

    /**
     * Notice 데이터 수정하기
     * @param   input   수정할 데이터들을 담고 있는 Beans
     * @return  수정된 데이터 수
     * @throws  Exception
     */
    public int editNotice(Notice input) throws Exception;

    /**
     * Notice 데이터 삭제하기
     * @param   input   삭제할 데이터의 조건값을 담고 있는 Beans
     * @return  삭제된 데이터 수
     * @throws  Exception
     */
    public int deleteNotice(Notice input) throws Exception;
}
