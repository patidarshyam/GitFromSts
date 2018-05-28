package com.yash.video.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yash.video.service.VideoService;

@Controller
public class VideoController {
	@Autowired
	VideoService videoService;
	
	@RequestMapping(value={"/","/index"},method={RequestMethod.GET,RequestMethod.POST})
	public String indexPage(HttpServletRequest request){
		request.setAttribute("videos", videoService.listFileNames());
		if(request.getAttribute("fileName")==null){
			request.setAttribute("fileName", videoService.listFileNames().get(0));
		}
		
		return "index";	
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public void uploadVideo(HttpServletRequest request, @RequestParam MultipartFile file ,HttpServletResponse response){
		if (file != null) {
			videoService.save(file);
		}
		try {
			request.getRequestDispatcher("index").forward(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		
	}
	
	/*@RequestMapping(value="/getVideo",method=RequestMethod.GET)
	public void getVideo(HttpServletRequest request,HttpServletResponse response){
		String fileName=request.getParameter("id");
	System.out.println("name= "+fileName);
	request.setAttribute("fileName", fileName);
	try {
		request.getRequestDispatcher("index").forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();
	}
	}*/
	
}
