package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;

@Mapper
public interface AdminGoodsRegisterMapper {
	
	// 상품 등록 1
	@Insert("INSERT INTO goods (goodsCode, category, brand, goodsName) " +
			"VALUES (#{ goodsCode }, #{ category }, #{ brand }, #{ goodsName })")
	void adminGoodsRegister(GoodsDto goods);
	
	// 상품 등록 2
	@Insert("INSERT INTO goodsoption (optionNo, optionName, optionDesc, goodsCode, optionDataType, optionValue) " +
			"VALUES (#{ optionNo }, #{ optionName }, #{ optionDesc }, #{ goodsCode }, #{ optionDataType }, #{ optionValue })")
	void adminGoodsOption(GoodsOptionDto goodsoption);	
	
	// 상품 등록 3
	@Insert("INSERT INTO goodsoptionselection (goodsOptionSelectionNo, optionSelectionValue, optionNo) " +
			"VALUES (#{ goodsOptionSelectionNo }, #{ optionSelectionValue }, #{ optionNo }")
	void adminGoodsOptionSelection(GoodsOptionSeletionDto goodsoptionselection);
	

	// 등록된 상품 불러 오기
	@Select("SELECT * " +
			"FROM goods" )
	GoodsDto selectGoodsList(int goodsCode);

	// 입고 등록
	@Insert("INSERT INTO goodsRegister (inCode, detail, rentPrice, goodsIn, goodsInDate, goodsCode) " +
			"VALUES (#{ inCode }, #{ detail }, #{ rentPrice }, #{ goodsIn }, #{ goodsInDate }, #{ goodsCode })" ) 
	void adminGoodsRegisterIn(GoodsRegisterDto goodsregister);

	
}
