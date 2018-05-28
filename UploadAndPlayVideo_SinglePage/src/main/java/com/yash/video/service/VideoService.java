package com.yash.video.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface VideoService {

	public void save(MultipartFile file);
	
	public List<String> listFileNames();

}
