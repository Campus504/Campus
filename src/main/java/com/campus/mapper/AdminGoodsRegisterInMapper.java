package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;

@Mapper
public interface AdminGoodsRegisterInMapper {

	// 입고 등록
	@Insert("INSERT INTO goodsRegister (inCode, detail, rentPrice, goodsIn, goodsInDate, goodsCode) " +
			"VALUES (#{ inCode }, #{ detail }, #{ rentPrice }, #{ goodsIn }, #{ goodsInDate }, #{ goodsCode })" ) 
	void adminGoodsRegisterIn(GoodsRegisterDto goodsregister);
	

}
