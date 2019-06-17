package edu.etime.electronicmall.product.controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import edu.etime.electronicmall.common.FileUpLoad;
import edu.etime.electronicmall.common.PagerControl;
import edu.etime.electronicmall.dto.ProductType;
import edu.etime.electronicmall.entities.PdtType;
import edu.etime.electronicmall.entities.Productss;
import edu.etime.electronicmall.pdttype.services.interfaces.PdttypeService;
import edu.etime.electronicmall.product.services.interfaces.ProductService;

@Controller
@RequestMapping("/background/product")
public class ProductController {
	
	@Autowired
	private ProductService pdservice;
	@Autowired
	private PdttypeService ptservice;
	/**
	 * 初始化增加商品页面
	 */
	@RequestMapping(value="/toadd",method=RequestMethod.GET)
	public String toadd(Productss pd,Model model){
		List<PdtType> plist = ptservice.selectpdtype(null);
		model.addAttribute("plist",plist);
		return "/background/product/add";
	}
	/**
	 * 增加商品
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(Productss pd,Model model,MultipartFile file,HttpSession Session) throws IllegalStateException, IOException{
		String str =UUID.randomUUID().toString();		
		if(!file.isEmpty()){
			//获取上传路径
			String path= Session.getServletContext().getRealPath("/images/foreground/other");
			//	自动生成文件名称
			String fn = file.getOriginalFilename();
			String[] f = fn.split("\\.");
			String fextname=f[f.length-1];
			//使用UUID作为文件名称
			String filename = str +"."+fextname;
			//上传
			File fl = new File(path,filename);
			file.transferTo(fl);
			//文件路径放到product中，并保存到数据库中	
			pd.setPdtpicture("/images/foreground/other/"+filename);
		}
		   pd.setPdtid(str);
		   int rtn = pdservice.insert(pd);
			if(rtn>0){  
				return "redirect:select";
			}else{
				String msg = "添加失败";
				model.addAttribute("msg",msg);
				return "/background/error";
			}
	}
	/**
	 * 查询商品
	 */
	/*@RequestMapping(value="/list")
	public String list(Productss pd,Model model){
		List<PdtType> ptList = ptservice.selectpdtype(null);
		List<ProductType> list = pdservice.selectproduct(pd);
		model.addAttribute("list",list);
		model.addAttribute("pd",pd);
		model.addAttribute("ptlist",ptList);
		return "/background/product/list";
	}*/
	/**
	 * 初始化修改页面
	 */
	@RequestMapping(value="/toedit",method=RequestMethod.GET)
	public String toedit(String pdtid,Model model){
		Productss prd = pdservice.selectByid(pdtid);
		List<PdtType> ptlist = ptservice.selectpdtype(null);
		model.addAttribute("prd",prd);
		model.addAttribute("ptlist",ptlist);
		return "/background/product/edit";
	}
	/**
	 * 修改商品信息 
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public String edit(Productss pd,Model model,MultipartFile file,HttpSession Session) throws IllegalStateException, IOException{
		//判断是否上传文件
		if(!file.isEmpty()){
			String filepath = FileUpLoad.fileupload(file, Session);
			pd.setPdtpicture("/images/"+filepath);
		}
		int rtn = pdservice.updateByPrimaryKey(pd);
		if(rtn>0){
			return "redirect:select";
		}else{
			String msg = "修改失败";
			model.addAttribute("msg",msg);
			return "/background/error";
		}
	}

	/**
	 * 商品列表的分页查询
	 * @param pc
	 * @param product
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/select")
	public String select(PagerControl<Productss> pc,ProductType pt,Model model,HttpServletRequest request){
		List<PdtType> ptList = ptservice.selectpdtype(null);
		model.addAttribute("ptlist",ptList);
		pc.setPagesize(4);//每页显示6行
		if(pc.getCurrentindex()==null){//因为它默认为0，所以给他定义成第一页
			pc.setCurrentindex(1);
		}
		if(pt==null){
			pc.setT(new ProductType());
		}else{
			pc.setT(pt);
		}
		pc=pdservice.getProductlist(pc);//获取到最后计算的结果
		model.addAttribute("pc", pc);
		model.addAttribute("url", request.getRequestURI());
		return "/background/product/list";
	}
}
