package com.campus.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.campus.dto.CartDto;
import com.campus.dto.MemberDto;
import com.campus.mapper.CartMapper;

import lombok.Setter;

@Repository
public class CartServiceImpl implements CartService {

	@Setter
	private CartMapper cartMapper;
	
	
	//장바구니 추가
	@Override
	public void insertCart(CartDto cart) {
		cartMapper.insertCart(cart);
	}
	
	//장바구니 목록
	@Override
	public List<CartDto> listCart(String memberId){
		return cartMapper.listCart(memberId);
	}
	
	//장바구니 수량 수정
	@Override
	public void updateCart(CartDto cart) {
		cartMapper.updateCart(cart);
	}
	
	// 장바구니 개별삭제
	@Override
	public void deleteCart(CartDto cart) {
		cartMapper.deleteCart(cart);
		
	}
	//장바구니 전체삭제
	@Override
	public void deleteAllCart(String memberId) {
		cartMapper.deleteAllCart(memberId);
	}

	@Override
	public int sumMoney(String memberId) {
		int a = cartMapper.sumMoney(memberId); 
		return a;
	}

	/* 장바구니 중복검사 
	 * @Override public int countCart(int goodsCode, String memberId) { Map<String,
	 * Object> map = new HashMap<String, Object>(); map.put("goodsCode", goodsCode);
	 * map.put("memberId", memberId); return cartMapper.; }
	 */

	
}
