package com.campus.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.campus.dto.CartDto;

public interface CartService {

	void insertCart(CartDto cart);

	List<CartDto> listCart(String memberId);

	void updateCart(CartDto cart);

	void deleteCart(CartDto cart);

	int sumMoney(String memberId);

	void deleteAllCart(String memberId);
	
}
