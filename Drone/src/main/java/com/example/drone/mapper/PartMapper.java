package com.example.drone.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.example.drone.vo.FrameVO;

@Mapper
public interface PartMapper {
	ArrayList<FrameVO> selectallFrame();
}
