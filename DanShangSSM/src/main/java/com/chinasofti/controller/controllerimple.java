package com.chinasofti.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.chinasofti.mapper.OrdeingMapper;
import com.chinasofti.pojo.Goods;
import com.chinasofti.pojo.Ordeing;
import com.chinasofti.pojo.OrdeingExample;
import com.chinasofti.pojo.OrdeingExample.Criteria;
import com.chinasofti.pojo.User;
import com.chinasofti.server.GoodsDaoServer;
import com.chinasofti.server.UserDaoServer;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import net.sf.json.JSONArray;
import net.sf.json.JSONNull;
import net.sf.json.JSONObject;
import unit.Base64Util;
import unit.FileUtil;
import unit.GsonUtils;
import unit.HttpUtil;

@Controller
@Component

/*@RequestMapping("/user")*/
public class controllerimple {
	@Autowired
	UserDaoServer usedao;
	 GoodsDaoServer goodsdao;
	@RequestMapping("/register")
	@ResponseBody
	public String register(User user,HttpServletResponse re) throws IOException{
		usedao.register(user);
		re.sendRedirect("login.jsp");
		return "Text Success";
	}
//	閿熸枻鎷峰綍
	@RequestMapping("/login")
	@ResponseBody
	public String login(String name,String password,HttpSession seeion){
		String login = usedao.login(name, password);
		if(login.equals("1")){
			User sfindOne = usedao.sfindOne(name);
			seeion.setAttribute("yonghu", sfindOne);
			seeion.setAttribute("yonghu_id", sfindOne.getUserid());
		}
		return login;
	}
//	閿熸枻鎷峰綍閿熸枻鎷烽敓锟�
	@RequestMapping("/logincheck")
	@ResponseBody
	public String loginUser(String name){
		String login = usedao.loginUser(name);
		return login;
	}
	
//	閿熸枻鎷烽敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹
	@RequestMapping("/updatePass")
	@ResponseBody
	public int updatePass(User user,String oldpassword,HttpSession session){
		String password = user.getPassword();
		int password1 = Integer.parseInt(password);
		System.out.println(oldpassword);
		user.setUserid((Integer) session.getAttribute("yonghu_id"));
		int updatePassword = usedao.updatePassword(user,oldpassword);
		if(updatePassword==1){
			session.invalidate();
			return updatePassword;
		}else{
			return 0;
		}
		
	}
//	閿熶粙鐪嬮敓鏂ゆ嫹閿熸枻鎷烽敓鏂ゆ嫹鍝�
	@Autowired
	GoodsDaoServer dao;
	@RequestMapping("/findallgoods")
	@ResponseBody
	public void findall(HttpSession session,HttpServletResponse response ) throws IOException{
		List<Goods> findall = dao.findall();
		session.setAttribute("allgoods", findall);
		response.sendRedirect("../views/pro.jsp");
	}
	
	//閺�顖欑帛閸旂喕鍏�
	@Autowired
	OrdeingMapper mapper1;
	@RequestMapping("/orderpp")
	public  ModelAndView  orderPay(Ordeing ord){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ord",ord);
		System.out.println("用户ID为:"+ord.getUser());
//		閸掓稑缂撶拋銏犲礋
		/*閺屻儴顕楃拋銏犲礋閺勵垰鎯佺�涙ê婀�*/
		OrdeingExample ordeingExample = new OrdeingExample();
		Criteria createCriteria = ordeingExample.createCriteria();
		createCriteria.andOrdeidEqualTo(ord.getOrdeid());
		List<Ordeing> list = mapper1.selectByExample(ordeingExample);
		if(list.size()<1){
			mapper1.inserord(ord);
		}
		modelAndView.setViewName("/wappay/pay.jsp");
		return modelAndView;
	}
	
	
	//no pay
	@Autowired
	OrdeingMapper mapper;
	@RequestMapping("/showall")
	@ResponseBody
	public  ModelAndView  showAll(HttpSession session){
			 ModelAndView modelAndView = new ModelAndView();
			 session.getAttribute("yonghu_id");
			 List<Ordeing> showordeing1 = mapper.showordeing1((int) session.getAttribute("yonghu_id"));
			 List<Ordeing> showordeing2 = mapper.showordeing2((int) session.getAttribute("yonghu_id"));
			 List<Ordeing> showordeing3 = mapper.showordeing3((int) session.getAttribute("yonghu_id"));
			 List<Ordeing> showordeing4 = mapper.showordeing4((int) session.getAttribute("yonghu_id"));
			 modelAndView.addObject("showordeing1", showordeing1);
			 modelAndView.addObject("showordeing2", showordeing2);
			 modelAndView.addObject("showordeing3", showordeing3);
			 modelAndView.addObject("showordeing4", showordeing4);
		     modelAndView.setViewName("/index.jsp");
			return modelAndView;
	}
	
	
	//paySuccess
	@RequestMapping("/paySuccess")
	public  String  showAll(HttpServletRequest re){
		     String ordeid = (String) re.getAttribute("ordeid");
		     mapper.updatState(ordeid);
			return "index.jsp";
	}	
	
	@RequestMapping("/faceregister")
	@ResponseBody
    public  String add(String base) {
    	// 娉ㄦ剰杩欓噷浠呬负浜嗙畝鍖栫紪鐮佹瘡涓�娆¤姹傞兘鍘昏幏鍙朼ccess_token锛岀嚎涓婄幆澧僡ccess_token鏈夎繃鏈熸椂闂达紝 瀹㈡埛绔彲鑷缂撳瓨锛岃繃鏈熷悗閲嶆柊鑾峰彇銆�
        String accessToken = "24.234517545b21e9ea9b334b23af77bca5.2592000.1572004474.282335-17061810";
        // 璇锋眰url
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add";
        try {
        	/*byte[] bytes1 = FileUtil.readFileByBytes("D:\\cs\\jianailiang1.jpg");*/
    		String image1 = base;
            Map<String, Object> map = new HashMap<>();
            map.put("image",image1);
            map.put("group_id", "group_repeat");
            map.put("user_id", "17760624765");
            map.put("user_info", "abc");
            map.put("liveness_control", "NORMAL");
            map.put("image_type", "BASE64");
            map.put("quality_control", "LOW");
            String param = GsonUtils.toJson(map);
            String result = HttpUtil.post(url, accessToken, "application/json", param);
            JSONObject fromObject = JSONObject.fromObject(result);
//          获取错误代码
          String facefuss = fromObject.getString("error_code"); 
          System.out.println(facefuss);
          if(facefuss.equals("0")){
          	 return "1";
          }
            System.out.println(result);
            return "1";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    
	@RequestMapping("/facelogin")
	@ResponseBody
    public String facematch(String base,HttpServletResponse response) {
        String url = "https://aip.baidubce.com/rest/2.0/face/v3/match";
        try {
        System.out.println(base);
            byte[] bytes1 = FileUtil.readFileByBytes("D:\\cs\\zhenghongxu.png");
          /*  byte[] bytes = FileUtil.readFileByBytes("D:\\cs\\jianailiang.jpg");*/
            String image1 = Base64Util.encode(bytes1);
            //前台传来的人脸
            String image2 = base;
           /* String image2=Base64Util.encode(bytes);*/
            List<Map<String, Object>> images = new ArrayList<>();
            Map<String, Object> map1 = new HashMap<>();
            map1.put("image", image1);
            map1.put("image_type", "BASE64");
            map1.put("face_type", "LIVE");
            map1.put("quality_control", "LOW");
            map1.put("liveness_control", "NORMAL");

            Map<String, Object> map2 = new HashMap<>();
            map2.put("image", image2);
            map2.put("image_type", "BASE64");
            map2.put("face_type", "LIVE");
            map2.put("quality_control", "LOW");
            map2.put("liveness_control", "NORMAL");
            images.add(map1);
            images.add(map2);
            String param = GsonUtils.toJson(images);
            String accessToken = "24.234517545b21e9ea9b334b23af77bca5.2592000.1572004474.282335-17061810";
            String result = HttpUtil.post(url, accessToken, "application/json", param);
            JSONObject fromObject = JSONObject.fromObject(result);
//            获取错误代码
            String facefuss = fromObject.getString("error_code"); 
            System.out.println(facefuss);
            if(facefuss.equals("223114")){
            	 return "223114";
            }else if(facefuss.equals("0")){
                //获取分数
                JSONObject jsonObject = fromObject.getJSONObject("result");
                String string = jsonObject.getString("score");             
                double score = Double.parseDouble(string);
                if(score>=90){
             	   return "1";   //登陆成功
                }else{
             	   return "2";   //登陆失败
                }
            }
        } catch (Exception e) {
        	return "fail"; 
        }
		return "fail";
    }
	
	
	
}	
    
