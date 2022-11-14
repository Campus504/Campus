package com.campus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.campus.dto.CartDto;

@Mapper
public interface CartMapper {
	
	@Insert("INSERT INTO cart (memberid, rentdate, returndate, amount, price, goodscode) " +
			"VALUES (#{ memberId }, #{ rentDate }, #{ returnDate }, #{ amount }, #{ price }, #{ goodsCode })")
	void insertCart(CartDto cart);
	
}
