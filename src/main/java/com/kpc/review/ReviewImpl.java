/*package com.pharm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.kpc.board.BoardVO;
import com.kpc.common.PagingUtil;

public class ReviewImpl {
	
	
	
	public ArrayList<PharmVO> selectByGroup() {
		DBManager db = new DBManager();
		ArrayList<PharmVO> list = new ArrayList<PharmVO>();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			c = db.conn("oracle");  
			//String sql = "select bseq,title,contents, regid, to_char(regdate,'yyyy-mm-dd') as regdate from board order by bseq desc";
			
			String sql = "select city_name, count(1) as cnt from pharm group by city_name";
			pstmt = c.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				PharmVO vo = new PharmVO();
				vo.setCityName(rs.getString("city_name"));
				vo.setTel(rs.getString("cnt"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c,pstmt,rs);					
		}
		return list;
	}
	
	public int selectCount() {
		DBManager db = new DBManager();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			c = db.conn("oracle");  
			String sql = "select count(1) as cnt from pharm ";
			pstmt = c.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c,pstmt,rs);					
		}
		return cnt;
	}
	
	//Ajax 위경도 반경 약국 찾기
	public ArrayList<PharmVO> selectByLatLng(PharmVO vo) {
		DBManager db = new DBManager();
		ArrayList<PharmVO> list = new ArrayList<PharmVO>();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			c = db.conn("oracle");  
			//String sql = "select bseq,title,contents, regid, to_char(regdate,'yyyy-mm-dd') as regdate from board order by bseq desc";
			
			String sql = "";
			sql += "select tt.* ";
			sql += "from ( ";
			sql += "select rownum as rnum, t.* ";
			sql += "from ( select *  ";
			sql += "       from pharm  ";
			sql += "       where (lat between ?-0.01 and ?+0.01) and (lng between ?-0.01 and ?+0.01)";
			sql += "       order  by pharm_name desc ";
			sql += "     ) t ";
			sql += ") tt ";
			sql += "where rnum between ? and ? ";
			
			pstmt = c.prepareStatement(sql);
			pstmt.setString(1, vo.getLat());
			pstmt.setString(2, vo.getLat());
			pstmt.setString(3, vo.getLng());
			pstmt.setString(4, vo.getLng());
			pstmt.setInt(5, vo.getStartSeq());
			pstmt.setInt(6, vo.getEndSeq());
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				vo = new PharmVO();
				vo.setPharmName(rs.getString("pharm_name"));
				vo.setCityCode(rs.getString("city_code"));
				vo.setCityName(rs.getString("city_name"));
				vo.setStreetCode(rs.getString("street_code"));
				vo.setStreetName(rs.getString("street_name"));
				vo.setCountyName(rs.getString("county_name"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddr(rs.getString("addr"));
				vo.setTel(rs.getString("tel"));
				vo.setLat(rs.getString("lat"));
				vo.setLng(rs.getString("lng"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c,pstmt,rs);					
		}
		return list;
	}
	//Ajax 동검색 반경 약국 찾기
	public ArrayList<PharmVO> selectByCount(PharmVO vo) {
		DBManager db = new DBManager();
		ArrayList<PharmVO> list = new ArrayList<PharmVO>();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			c = db.conn("oracle");  
			//String sql = "select bseq,title,contents, regid, to_char(regdate,'yyyy-mm-dd') as regdate from board order by bseq desc";
			
			String sql = "";
			sql += "select tt.* ";
			sql += "from ( ";
			sql += "select rownum as rnum, t.* ";
			sql += "from ( select *  ";
			sql += "       from pharm  ";
			sql += "       where city_code=? and county_name like ?";
			sql += "       order  by pharm_name desc ";
			sql += "     ) t ";
			sql += ") tt ";
			sql += "where rnum between ? and ? ";
	
			pstmt = c.prepareStatement(sql);
			pstmt.setString(1, vo.getCityCode());
			pstmt.setString(2, "%"+vo.getCountyName()+"%");
			pstmt.setInt(3, vo.getStartSeq());
			pstmt.setInt(4, vo.getEndSeq());
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				vo = new PharmVO();
				vo.setPharmName(rs.getString("pharm_name"));
				vo.setCityCode(rs.getString("city_code"));
				vo.setCityName(rs.getString("city_name"));
				vo.setStreetCode(rs.getString("street_code"));
				vo.setStreetName(rs.getString("street_name"));
				vo.setCountyName(rs.getString("county_name"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddr(rs.getString("addr"));
				vo.setTel(rs.getString("tel"));
				vo.setLat(rs.getString("lat"));
				vo.setLng(rs.getString("lng"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c,pstmt,rs);					
		}
		return list;
	}
		
	
	//페이징 용도
	public ArrayList<PharmVO> select(int startSeq, int endSeq) {
		DBManager db = new DBManager();
		ArrayList<PharmVO> list = new ArrayList<PharmVO>();
		Connection c = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			c = db.conn("oracle");  
			//String sql = "select bseq,title,contents, regid, to_char(regdate,'yyyy-mm-dd') as regdate from board order by bseq desc";
			
			String sql = "select tt.* ";
			sql += "from ( ";
					sql += "select rownum as rnum, t.* ";
					sql += "from ( select *  ";
					sql += "       from pharm  ";
					sql += "       order  by pharm_name desc ";
					sql += "     ) t ";
			sql += ") tt ";
			sql += "where rnum between ? and ? ";
			
			pstmt = c.prepareStatement(sql);
			pstmt.setInt(1, startSeq);
			pstmt.setInt(2, endSeq);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				PharmVO vo = new PharmVO();
				vo.setPharmName(rs.getString("pharm_name"));
				vo.setCityCode(rs.getString("city_code"));
				vo.setCityName(rs.getString("city_name"));
				vo.setStreetCode(rs.getString("street_code"));
				vo.setStreetName(rs.getString("street_name"));
				vo.setCountyName(rs.getString("county_name"));
				vo.setZipcode(rs.getString("zipcode"));
				vo.setAddr(rs.getString("addr"));
				vo.setTel(rs.getString("tel"));
				vo.setLat(rs.getString("lat"));
				vo.setLng(rs.getString("lng"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(c,pstmt,rs);					
		}
		return list;
	}
}
*/