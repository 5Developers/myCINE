package mycine.recommend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RecommendDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public RecommendDAO(){
		
	}
	/**
	 * ��û �Խ��� ��õ ��ư ���� �� ��õ�� ���̵� �ֱ�
	 * @param idx
	 * @return
	 */
	public int recommendUpdate(int idx, String id){
		try {
			conn = mycine.db.DBInfo.getConn();
			String sql = "insert into mycine_recommend values(?, 0, ?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			ps.setString(2, id);
			int count = ps.executeUpdate();
			
			return count;
		} catch(Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * ��û �Խ��� check �� �������� �޼���
	 * @param idx
	 * @return
	 */
	public String getRecommendID(int idx){
		try {
			conn = mycine.db.DBInfo.getConn();
			String sql ="select id from mycine_recommend where idx=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			rs = ps.executeQuery();
			String id = null;
			while (rs.next()) {
				id  = rs.getString("id");
			}
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs!=null) rs.close();
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * ����Խ��� ��õ ��ư ���� �� ��õ�� ���̵� �ֱ�
	 * @param idx
	 * @return
	 */
	public int recommendUpdate2(int idx, String id){
		try {
			conn = mycine.db.DBInfo.getConn();
			String sql = "insert into mycine_recommend2 values(?, 0, ?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			ps.setString(2, id);
			int count = ps.executeUpdate();
			
			return count;
		} catch(Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public String getRecommendID2(int idx){
		try {
			conn = mycine.db.DBInfo.getConn();
			String sql ="select id from mycine_recommend2 where idx=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idx);
			rs = ps.executeQuery();
			String id = null;
			while (rs.next()) {
				id  = rs.getString("id");
			}
			return id;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				if(rs!=null) rs.close();
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}