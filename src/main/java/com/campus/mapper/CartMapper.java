package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.CartDto;

@Mapper
public interface CartMapper {
	//장바구니 추가
	@Insert("INSERT INTO cart (memberid, rentdate, returndate, amount, price, goodscode) " +
			"VALUES (#{ memberId }, #{ rentDate }, #{ returnDate }, #{ amount }, #{ price }, #{ goodsCode })")
	void insertCart(CartDto cart);
	
	//장바구니 목록
	@Select("SELECT * FROM cart WHERE memberid = #{ memberId } ")
	List<CartDto> listCart(String memberId);
	
	//장바구니 수량 수정
	@Update("UPDATE cart SET amount = #{ amount } WHERE memberid = #{memberId} ")
	void updateCart(CartDto cart);
	
	//장바구니 삭제
	@Delete("DELETE FROM cart WHERE memberid = #{ memberId } ")
	void deleteCart(String memberId);

}
