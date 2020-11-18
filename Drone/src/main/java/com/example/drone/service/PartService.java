package com.example.drone.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.drone.mapper.PartMapper;
import com.example.drone.vo.FrameVO;

@Service
public class PartService {
	@Autowired
	private PartMapper partmapper;
	
	public ArrayList<FrameVO> selectallPart() {
		ArrayList<FrameVO> allpart = partmapper.selectallPart();
		return allpart;
	}
}
