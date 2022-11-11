package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionSeletionDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;

@Mapper
public interface AdminGoodsRegisterMapper {
	
	// 상품 기본 정보 등록 - goods Table
	@Insert("INSERT INTO goods (category, brand, goodsName) " +
			"VALUES (#{ category }, #{ brand }, #{ goodsName })")
	@Options(useGeneratedKeys = true, keyColumn = "goodscode", keyProperty = "goodsCode")
	void insertGoods(GoodsDto goods);
	
	// 상품 옵션 정보 등록 - goods Table
	@Insert("INSERT INTO goodsOption (optionName, optionDataType, optionValue, optionDesc, goodscode) " +
			"VALUES (#{ optionName }, #{ optionDataType }, #{ optionValue }, #{ optionDesc }, #{ goodsCode })")
	void insertOption(GoodsOptionDto option);

//	이후에 사용 : String optionName, String optionDataType, String optionValue, String optionDesc					
//	int goodsCode, int optionNo

	// 상품 리스트 불러오기
	@Select("SELECT * FROM goods, goodsOption")
	public GoodsDto goodsGetDetail(int goodsCode);

	
	@Select("SELECT * FROM goods, goodsOption")
	List<GoodsDto> findGoodsAll(List<GoodsDto> goods, List<GoodsDto> options);
	
	
}
