package com.yash.video.dao;

import java.util.List;

public interface VideoDAO {
	public void insert(String fileName);
	
	public List<String> list();
}
