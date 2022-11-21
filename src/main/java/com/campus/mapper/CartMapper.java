package com.campus.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.CartDto;

@Mapper
public interface CartMapper {
	//장바구니 추가
	@Insert("INSERT INTO cart (memberid, amount, price, goodscode) " +
			"VALUES (#{ memberId }, #{ amount }, #{ price }, #{ goodsCode })")
	void insertCart(CartDto cart);
	
	//장바구니 목록
	@Select("SELECT c.*, g.goodsName FROM cart c " + 
			"INNER JOIN goods g " + 
			"ON c.goodsCode = g.goodscode " + 
			"WHERE memberid = #{ memberId } ")
	
	@Results(id = "cartResultMap", value = {
			@Result(column = "memberId", property = "memberId", id = true),
			@Result(column = "goodsCode", property = "goodsCode", id = true),
			@Result(column = "amount", property = "amount"),
			@Result(column = "price", property = "price"),
			@Result(column = "goodsName", property = "goods.goodsName"),		
		})
	List<CartDto> listCart(String memberId);
	
	//장바구니 수량 수정
	@Update("UPDATE cart SET amount = #{ amount } WHERE memberid = #{memberId} ")
	void updateCart(CartDto cart);
	
	//장바구니 삭제
	@Delete("DELETE FROM cart WHERE memberid = #{ memberId } AND goodscode = #{ goodsCode } ")
	void deleteCart(CartDto cart);

	//장바구니 전체삭제
	@Delete("DELETE FROM cart WHERE memberid = #{ memberId } ")
	void deleteAllCart(String memberId);
	
	//장바구니 총금액 nvl(값1,값).. 값1이 null일 경우 값2를 반환
	@Select("select nvl(sum(amount*price),0) from cart where memberid = #{memberId} ")
	int sumMoney(String memberId);
	
	
	  //장바구니 중복확인
	  
		/*
		 * @Select("SELECT COUNT(*) FROM cart WHERE memberid=#{ memberId } AND goodsCode = #{goodsCode} "
		 * ) void selectCart(int goodsCode);
		 * 
		 */

	

	
}
