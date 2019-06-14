package edu.etime.electronicmall.admin.services.interfaces;

import java.util.List;

import edu.etime.electronicmall.entities.Admin;

/**
 * 绠＄悊鍛樻湇鍔″眰
 * @author yxs
 *
 */
public interface AdminService {
	/**
	 * 澧炲姞绠＄悊鍛�
	 * @param admin
	 * @return
	 */
       public int insert(Admin admin);
       
       /**
        * 登录查询
        */
       public Admin adminlogin(Admin admin);
}
