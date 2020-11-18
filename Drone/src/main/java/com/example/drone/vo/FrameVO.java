package com.example.drone.vo;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component
public class FrameVO {
	int partNum;
	String partName;
	int price;
	int horizontal;
	int vertical;
	int height;
	int weight;
}
