package edu.etime.electronicmall.product.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.etime.electronicmall.common.PagerControl;
import edu.etime.electronicmall.common.Tools;
import edu.etime.electronicmall.dao.ProductssMapper;
import edu.etime.electronicmall.dto.ProductType;
import edu.etime.electronicmall.entities.Comments;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.product.services.interfaces.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductssMapper pddao;
	/**
	 * 增加商品
	 */
	@Override
	public int insert(Productss pd) {
		return pddao.insert(pd);
	}
	
	
//	/**
//	 * 增加商品评论
//	 */
//	@Override
//	public int addcomment(Productss pd) {
//		return pddao.addcomment(pd);
//	}
	
	@Override
	public int addcomment(Comments pd) {
		return pddao.addcomment(pd);
	}
	
	/**
	 * 查询商品
	 */
	@Override
	public List<ProductType> selectproduct(Productss pd) {
		return pddao.selectproduct(pd);
	}
	/**
	 * 通过id查询商品
	 */
	@Override
	public Productss selectByid(String pdtid) {
		return pddao.selectByid(pdtid);
	}
	/**
	 * 修改商品
	 */
	@Override
	public int updateByPrimaryKey(Productss pd) {
		return pddao.updateByPrimaryKey(pd);
	}
	/**
	 * 商品列表的分页查询
	 */
	@Override
	public PagerControl<Productss> getProductlist(PagerControl<Productss> pc) {
		//得到总记录数
		PagerControl<Productss> pagec = pddao.selectProductCount(pc.getT());
		//获取当前页的记录结果
		List<Productss> list = pddao.selectProductPage(pc);
		pc.setList(list);
		pc.setRscount(pagec.getRscount());
		//计算有多少页，当前显示多少页
		pc=Tools.dealpage(pc);
		return pc;
	}
	
	
	///////////////////
	/**
	 * 查询10个推荐商品
	 */
	@Override
	public List<Productss> selectByState3() {		
		return pddao.selectByState3();
	}
	
	/**
	 * 查询5个普通商品
	 */
	@Override
	public List<Productss> selectByState1() {
	
		return pddao.selectByState1();
	}

	
	
	/**
	 * 根据商品id修改商品数量
	 * @param id
	 * @return
	 */
	@Override
	public int updatePdtnumberBypdtid(Productss pd) {
		
		return pddao.updateByPrimaryKeySelective(pd);
	}

	///////
	/**
	 * 主页面的5条新品数据
	 */
	@Override
	public List<Productss> selectByState2() {
		return pddao.selectByState2();
	}


	/**
	 * 根据与该商品类型相同的商品信息
	 */
	@Override
	public List<Productss> selectSameTypePdt(String pdtid){
		
		return pddao.selectSameTypePdt(pdtid);
	}
	

	


}
