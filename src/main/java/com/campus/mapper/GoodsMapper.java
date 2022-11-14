package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;

@Mapper
public interface GoodsMapper {

	@Select("SELECT * FROM goods WHERE category = #{category} ")
	List<GoodsDto> selectGoodsByCategory(String category);

	@Select("SELECT * FROM goods WHERE goodsCode = #{goodsCode} ")
	GoodsDto selectGoodsByGoodsCode(int goodsCode);

	@Select("SELECT ROUND(avg(rentPrice),0) rentPrice, sum(goodsIn) goodsIn, goodsCode FROM goodsRegister Group By goodsCode Having goodsCode = #{goodsCode} ")
	GoodsRegisterDto selectGoodsInByGoodsCode(int goodsCode);

}
