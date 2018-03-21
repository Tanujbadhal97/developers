package com.arya.dto;

public class touristDTO {
	static String tourist_place;
	static String food;
	public static String getTourist_place() {
		return tourist_place;
	}
	public static void setTourist_place(String tourist_place) {
		touristDTO.tourist_place = tourist_place;
	}
	public static String getFood() {
		return food;
	}
	public static void setFood(String food) {
		touristDTO.food = food;
	}
}
