package com.campus.service;

import com.campus.dto.CartDto;
import com.campus.mapper.CartMapper;

import lombok.Setter;

public class CartServiceImpl implements CartService {

	@Setter
	private CartMapper cartMapper;
	
	
	//장바구니 추가
	@Override
	public void insertCart(CartDto cart) {
		cartMapper.insertCart(cart);
	}
	
}
