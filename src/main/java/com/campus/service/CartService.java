package com.campus.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.campus.dto.CartDto;
import com.campus.dto.MemberDto;

public interface CartService {

	void insertCart(CartDto cart);

	List<CartDto> listCart(String memberId);

	void updateCart(CartDto cart);

	void deleteCart(CartDto cart);

	int sumMoney(String memberId);

	void deleteAllCart(String memberId);


	
}
