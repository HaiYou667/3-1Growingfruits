package edu.etime.electronicmall.pdttype.services.interfaces;


import java.util.List;

import edu.etime.electronicmall.entities.PdtType;


public interface PdttypeService {
	/**
	 * 商品类型增加页面
	 */
	public int insert(PdtType pdtType);

	/**
	 * 查询商品类型
	 */
	public List<PdtType> selectpdtype(PdtType pdtType);
	/**
	 * 根据id查询商品类别信息
	 */
	public PdtType selectByPrimaryKey(String id);
	
	/**
	 * 修改商品类别信息
	 */
	public int updateByPrimaryKeySelective(PdtType pdtType);
}
