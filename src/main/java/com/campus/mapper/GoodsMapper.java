package com.campus.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.MemberDto;

public interface GoodsMapper {
	
	@Insert("INSERT INTO goods (goodsCode, category, brand, goodsName) " +
			"VALUES (#{ goodsCode }, #{ category }, #{ brand }, #{ goodsName })")
	void insertGoods(GoodsDto goods);
	
	
//	@Select("SELECT goodsCode, category, brand, goodsName" +
//			"FROM goods" +
//			"WHERE ")
//	MemberDto selectGoods(@Param("goodsCode")String goodsCode, 
//						  @Param("category") String category, 
//						  @Param("brand") String brand, 
//						  @Param("goodsName") String goodsName );

}
