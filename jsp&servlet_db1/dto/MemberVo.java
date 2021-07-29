package com.saeyan.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class MemberVo { //회원 테이블의 정보를 저장할 VO클래스
	private String name;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private int admin;
}
