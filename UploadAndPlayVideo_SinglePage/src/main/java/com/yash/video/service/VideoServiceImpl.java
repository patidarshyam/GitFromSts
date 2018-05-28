package com.yash.video.service;

import java.io.File;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yash.video.dao.VideoDAO;

@Service
public class VideoServiceImpl implements VideoService {
	
	@Autowired
	private VideoDAO videoDAO;
	
	private String basePath=System.getProperty("catalina.base");

	public void save(MultipartFile file) {
	
		String uploadPath= basePath+"\\webapps\\video\\"+file.getOriginalFilename();
		System.out.println("------"+uploadPath);
		
		videoDAO.insert(file.getOriginalFilename()); //TODO not need to use database
		
		try {
			file.transferTo(new File(uploadPath));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<String> listFileNames() {
		//TODO using file handling will get the file name
		return videoDAO.list();
	}

	
	
	
}
