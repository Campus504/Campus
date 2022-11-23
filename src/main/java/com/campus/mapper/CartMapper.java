package com.campus.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
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
	@Select("SELECT c.*, g.goodsName,g.brand FROM cart c " + 
			"INNER JOIN goods g " + 
			"ON c.goodsCode = g.goodscode " + 
			"WHERE memberid = #{ memberId }")
	
	@Results(id = "cartResultMap", value = {
			@Result(column = "memberId", property = "memberId", id = true),
			@Result(column = "goodsCode", property = "goodsCode", id = true),
			@Result(column = "amount", property = "amount"),
			@Result(column = "price", property = "price"),
			@Result(column = "brand", property = "goods.brand"),
			@Result(column = "goodsName", property = "goods.goodsName"),		
		})
	List<CartDto> listCart(String memberId);
	
	//장바구니 수량 수정
	@Update("UPDATE cart SET amount = #{ amount } WHERE cartNo = #{cartNo} ")
	void updateCart(@Param("cartNo") int cartNo, @Param("amount") int amount);
	
	//장바구니 개별삭제
	@Delete("DELETE FROM cart WHERE cartNo = #{ cartNo } AND goodsCode = #{goodsCode} ")
	void deleteCart(@Param("cartNo") int cartNo, @Param("goodsCode") int goodsCode);

	//장바구니 전체삭제
	@Delete("DELETE FROM cart WHERE memberid = #{ memberId } ")
	void deleteAllCart(String memberId);
	
	//장바구니 중복확인
	  
	@Select("SELECT COUNT(*) FROM cart WHERE memberid = #{ memberId } AND goodsCode = #{goodsCode} ")
	int selectCart(@Param("memberId") String memberId, @Param("goodsCode") int goodsCode);
		 
		 

	

	
}
