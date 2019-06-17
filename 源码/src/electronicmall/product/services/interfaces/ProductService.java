package edu.etime.electronicmall.product.services.interfaces;

import java.util.List;
import edu.etime.electronicmall.common.PagerControl;
import edu.etime.electronicmall.dto.ProductType;
import edu.etime.electronicmall.entities.Comments;
import edu.etime.electronicmall.entities.Productss;

public interface ProductService {
	/**
	 * 增加商品
	 */
	public int insert(Productss pd);
	/**
	 * 查询商品
	 */
	public List<ProductType> selectproduct(Productss pd);
	/**
	 * 通过id查询商品
	 */
	public Productss selectByid(String pdtid);
	/**
	 * 修改商品
	 */
	public int updateByPrimaryKey(Productss pd);
	/**
	 * 商品列表的分页查询
	 * @param pc
	 * @return
	 */
	public PagerControl<Productss> getProductlist(PagerControl<Productss> pc);
	
	//////////////
	/**
	 * 查询10个推荐商品
	 */
	public List<Productss> selectByState3();
	
	/**
	 * 查询5个普通商品
	 */
	public List<Productss> selectByState1();
	
	
	/**
	 * 根据商品id修改商品数量
	 * @param id
	 * @return
	 */
	public int updatePdtnumberBypdtid(Productss pd);
	
	 /////////
	/**
	 * 查询5条新品数据
	 */
	List<Productss> selectByState2();
	/**
	 * 增加商品评论
	 * @param pd
	 * @return
	 */
	int addcomment(Comments pd);
//	/**
//	 * 增加商品评论
//	 * @param pd
//	 * @return
//	 */
//	int addcomment(Productss pd);
	
	/**
	 * 根据与该商品类型相同的商品信息
	 * @param pdtid
	 * @return
	 */
	List<Productss> selectSameTypePdt(String pdtid);

}
