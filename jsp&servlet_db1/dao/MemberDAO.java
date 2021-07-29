package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.saeyan.dto.MemberVo;

public class MemberDAO { //DAO는 데이터베이스의 데이터에 접근하기 위한 객체이다.

	private MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {  //DBCP로 커넥션 객체를 얻어오는 메소드
		Context initContext = new InitialContext();
		DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/OracleDB"); //jdbc/OracleDB 라는 이름을 찾으면 DataSource 형으로 return 하므로 이를 받아서 DataSource 객체에 저장한다.
		Connection conn = ds.getConnection();//lookup 메소드로 얻어낸 DataSource 객체로 getConnection() 메소드를 호출하여 Connection객체를 얻는다.
		return conn;
		
	}
	
	//사용자 인증 시 사용하는 메소드
	public int userCheck(String userid,String pwd) {
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select pwd from member where userid=?";
		
		int result = -1;
		
		try {			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1) != null && rs.getString(1).equals(pwd)) {
					return 1;
				}else {
					return 0;
				}
			}else {
				return -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}

	//아이디로 회원 정보 가져오는 메소드
	public MemberVo getMember(String userid) {
		MemberVo mVo = null;
		String sql = "select * from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mVo = new MemberVo();
				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return mVo;
	}
	
	public int confirmID(String userid) { //member.js에서 id중복체크 //idcheck.do 서블릿에서 confirmID 함수 호출
		
		int result = -1;
		
		String sql = "select userid from member where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return result;
	}
	
	
	public int insertMember(MemberVo mVo) {
		int result = -1;
		String sql = "insert into member values(?,?,?,?,?,?)";
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getName());
			pstmt.setString(1, mVo.getUserid());
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(1, mVo.getEmail());
			pstmt.setString(1, mVo.getPhone());
			pstmt.setInt(6, mVo.getAdmin());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return result;
	}
	
	public int updateMember(MemberVo mVo) {
		int result = -1;
		
		String sql = "update member set pwd=?, email=?, phone=?,admin=? where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPwd().trim());
			pstmt.setString(2, mVo.getEmail().trim());
			pstmt.setString(3, mVo.getPhone().trim());
			pstmt.setInt(4,mVo.getAdmin());
			pstmt.setString(5, mVo.getUserid().trim());
			result = pstmt.executeUpdate();			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) {
					pstmt.close();
				}if(conn!=null) {
					conn.close();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return result;
	}
	
}




























