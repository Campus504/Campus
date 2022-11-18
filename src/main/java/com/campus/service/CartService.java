package com.campus.service;

import java.util.List;

import com.campus.dto.CartDto;

public interface CartService {

	void insertCart(CartDto cart);

	List<CartDto> listCart(String memberId);

	void updateCart(CartDto cart);

	void deleteCart(String memberId);

	int sumMoney(String memberId);

}
