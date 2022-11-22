package com.campus.service;

import java.util.List;

import com.campus.dto.CartDto;
import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;
import com.campus.mapper.GoodsMapper;

import lombok.Setter;

public class GoodsServiceImpl implements GoodsService {

	@Setter
	private GoodsMapper goodsMapper;

	@Override
	public List<GoodsDto> findGoodsByCategoryTent() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryTent();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryTable() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryTable();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryMat() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryMat();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryDish() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryDish();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryStove() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryStove();
		return goods;
	}
	@Override
	public List<GoodsDto> findGoodsByCategoryEtc() {
		List<GoodsDto> goods = goodsMapper.selectGoodsByCategoryEtc();
		return goods;
	}

	@Override
	public GoodsDto findGoodsByGoodsCode(int goodsCode) {
		GoodsDto goods = goodsMapper.selectGoodsByGoodsCode(goodsCode);
		return goods;
	}

	@Override
	public GoodsRegisterDto findGoodsInByGoodsCode(int goodsCode) {
		GoodsRegisterDto goodsIn = goodsMapper.selectGoodsInByGoodsCode(goodsCode);
		return goodsIn;
	}

	@Override
	public MemberDto findMemberByMemberId(String memberId) {
		MemberDto member = goodsMapper.selectMemberByMemberId(memberId);
		return member;
	}

	
	/*
	 * @Override public void insertOrder(int[] goodsCode, int[] amount,int[] price,
	 * OrderListDto order) {
	 * 
	 * //오더 리스트로 상품 정보(멤버아이디, 수령일, 반납일, 결제방식 ) 저장> [오더넘버] 받아와서 오더디테일에 상품별로 금액, 수량,
	 * 굿즈코드, 아이디 저장 System.out.println(goodsCode.length);
	 * goodsMapper.insertOrder(order); order.setOrderNo(order.getOrderNo()); int
	 * orderNumber = order.getOrderNo(); int code; int goodsAmount; int goodsPrice;
	 * 
	 * for(int i=0;i<goodsCode.length;i++) { code = goodsCode[i]; goodsAmount =
	 * amount[i]; goodsPrice = price[i];
	 * 
	 * goodsMapper.insertOrderDetail(orderNumber, code, goodsAmount, goodsPrice); }
	 * goodsMapper.deleteCart(order.getMemberId());
	 * 
	 * }
	 * 
	 * 
	 * 
	 * @Override public void insertOrderDetail( OrderDetailDto orderDetail) {
	 * 
	 * goodsMapper.insertOrderDetail(orderDetail);
	 * 
	 * }
	 */
	@Override
	public void insertOrder(OrderListDto orderList, OrderDetailDto orderDetail) {
		goodsMapper.insertOrder(orderList);
		orderDetail.setOrderNo(orderList.getOrderNo());
		goodsMapper.insertOrderDetail(orderDetail);
		
	}
	
	@Override
	public void insertOrderDetail( OrderDetailDto orderDetail) {
		
		goodsMapper.insertOrderDetail(orderDetail);
		
	}
	
	@Override
	public List<GoodsDto> findBestGoods() {
		List<GoodsDto> goods = goodsMapper.selectBestGoods();
		return goods;
	}
	

	  @Override public List<OrderListDto> orderListByMemberId(String memberId) {
	  List<OrderListDto> orderList =
	  goodsMapper.selectOrderListByMemberId(memberId); return orderList; }
	  
	/*
	 * @Override public List<CartDto> findCartByMemberId(String memberId) {
	 * List<CartDto> cart = goodsMapper.selectCartByMemberId(memberId); return cart;
	 * }
	 * 
	 */
	
	//장바구니 -> 오더
	@Override
	public List<CartDto> findCartById(String memberId) {
		List<CartDto> carts = goodsMapper.selectCartById(memberId);
		return carts;
	}
	@Override
	public OrderListDto findRecentOrder(String memberId) {
		OrderListDto orderList = goodsMapper.selectRecentOrder(memberId);
		return orderList;
	}

	
}
