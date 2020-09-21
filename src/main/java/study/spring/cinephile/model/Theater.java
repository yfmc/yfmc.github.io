package study.spring.cinephile.model;

import lombok.Data;

/** 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Theater {
    private int theaterId;
    private int provNo;
    private String brand;
    private String branch;
    private int rooms;
    private int seats;
    private String oldAddr;
    private String newAddr;
    private double lat;
    private double lng;
}