package study.spring.cinephile.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Theater2 {
    private int theater_id;
    private int prov_no;
    private String brand;
    private String branch;
    private int rooms;
    private int seats;
    private String old_addr;
    private String new_addr;
    private double lat;
    private double lng;
    
    private String full_name;
    
    private static int offset;
    private static int listCount;
    public static int getOffset() {
    	return offset;
    }
    public static void setOffset(int offset) {
    	Theater2.offset=offset;
    }
    public static int getListCount() {
    	return listCount;
    }
    public static void setListCount(int listCount) {
    	Theater2.listCount=listCount;
    }
    
}