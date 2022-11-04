package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.MemberDto;

@Mapper
public interface AdminGoodsRegisterMapper {
	
	// 상품등록
	@Insert("INSERT INTO goods (goodsCode, category, brand, goodsName) " +
			"VALUES (#{ goodsCode }, #{ category }, #{ brand }, #{ goodsName }) ") // #{ goodsCode }, 
	void insertGoods(GoodsDto goods);

	
	@Select("SELECT * " +
			"FROM goods" )
	List<GoodsDto> findGoodsList();
	
}
