package com.hta.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hta.project.domain.Jik_Comm;
import com.hta.project.service.Jik_CommService;


@Controller
@RequestMapping(value="/comment")
public class JikCommController {

		@Autowired
		private Jik_CommService jik_commService;
		
		
		@ResponseBody
		@PostMapping(value = "/list")
		public Map<String,Object> Jik_CommList(int board_num, int page){
			
			List<Jik_Comm> list = jik_commService.getJik_CommList(board_num, page);
			int listcount = jik_commService.getListCount(board_num);
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("list", list);
			map.put("listcount", listcount);
			return map;
		}
		
		@PostMapping(value = "/add")
		public void Jik_CommAdd(Jik_Comm co, HttpServletResponse response)
				throws Exception{
			int ok = jik_commService.Jik_CommsInsert(co);
			response.getWriter().print(ok);
		}
		
		@PostMapping(value = "/delete")
		public void Jik_CommDelete(int num, HttpServletResponse response)
				throws Exception{ // int num => Integer.parseInt(request.getParameter)
			int result = jik_commService.Jik_CommsDelete(num);
			response.getWriter().print(result);
		}
		
		@PostMapping(value = "/update")
		public void Jik_CommUpdate(Jik_Comm co, HttpServletResponse response)
				throws Exception{
			int ok = jik_commService.Jik_CommsUpdate(co);
			response.getWriter().print(ok);
		}
		
}
