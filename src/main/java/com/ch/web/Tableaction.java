package com.ch.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.time.DateUtils;
import org.omg.PortableInterceptor.ForwardRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ch.sysutils.DataGrid;

@Controller
@RequestMapping("/table")
public class Tableaction {
	
	@Autowired
	DataGrid dataGrid;
	
	@RequestMapping("/bootstrap_table")
	public ModelAndView bootstrap_table(HttpServletRequest req) {
		return new ModelAndView("/bootstrap_table_demo");
	}
	
	@ResponseBody
	@RequestMapping("/bootstrap_table_test")
	public DataGrid bootstrap_table_test(HttpServletRequest req) {
		System.out.println("bootstrap-table");
		int limit=Integer.parseInt(req.getParameter("limit").toString());
		int offset=Integer.parseInt(req.getParameter("offset")); 
		String search=req.getParameter("search");
		
		String departmentname=req.getParameter("departmentname"); 
		String statu=req.getParameter("statu");
		
		List lstRes = new ArrayList();
		for (int i = 0; i < 30; i++){
		    Map map = new HashMap();
		    map.put("ID", i);
		    map.put("Name", "销售部" + i);
		    map.put("Level", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+i);
		    map.put("Desc", "1990-01-01 01:01:01");
		    lstRes.add(map);
		}
		
		dataGrid.setTotal(lstRes.size()+0L);
		dataGrid.setRows(lstRes);
		return dataGrid;
	}

	// 修改
    @RequestMapping(value = "/put/{param}", method = RequestMethod.PUT)
    public @ResponseBody String put(@PathVariable String param) {
    	System.out.println("put:" + param);
        return "put:" + param;
    }
	
	// 删除
    @RequestMapping(value = "/delete/{param}", method = RequestMethod.DELETE)
    public @ResponseBody String delete(@PathVariable String param) {
    	System.out.println("delete:" + param);
        return "delete:" + param;
    }
    
}
