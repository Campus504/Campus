package com.campus.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.campus.dto.CartDto;
import com.campus.dto.MemberDto;

public interface CartService {

	void insertCart(CartDto cart);

	List<CartDto> listCart(String memberId);

	void updateCart(int cartNo, int amount);

	void deleteCart(int cartNo, int goodsCode);

	void deleteAllCart(String memberId);

	int selectCart(String memberId, int goodsCode);
	
}
