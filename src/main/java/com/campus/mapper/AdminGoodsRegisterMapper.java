package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsOptionDto;
import com.campus.dto.GoodsOptionJoinDto;
import com.campus.dto.GoodsRegisterDto;

@Mapper
public interface AdminGoodsRegisterMapper {
	
	// 상품 기본 정보 등록 - goods Table
	@Insert("INSERT INTO goods (category, brand, goodsName) " +
			"VALUES (#{ category }, #{ brand }, #{ goodsName })")
	@Options(useGeneratedKeys = true, keyColumn = "goodscode", keyProperty = "goodsCode")
	void insertGoods(GoodsDto goods);          
	
	// 상품 기본 정보 수정 - goods Table
	@Update("UPDATE goods SET goodsName = #{ goodsName }, category = #{ category }, brand = #{ brand } WHERE goodsCode = #{ goodsCode }")
	void updateGoodsList(List<GoodsDto> goods);
	
	// 상품 옵션 정보 등록
	@Insert("INSERT INTO goodsOption (optionName, optionDataType, optionValue, optionDesc, goodscode) " +
			"VALUES (#{ optionName }, #{ optionDataType }, #{ optionValue }, #{ optionDesc }, #{ goodsCode })")
	void insertOption(GoodsOptionDto option);
	
	
	// 상품 옵션 추가
//	@Insert("INSERT INTO (optionName, optionDataType, optionValue, optionDesc, goodscode)" +
//			"VALUES (#{ optionName }, #{ optionDataType }, #{ optionValue }, #{ optionDesc }, #{ goodsCode })")
//	void insertGoodsOption(GoodsOptionDto option);
	
	@Select("SELECT * FROM goods")
	List<GoodsDto> selectAllGoods();
	
	@Select("SELECT * FROM goodsOption where goodscode = ${ goodsCode }")
	List<GoodsOptionDto> selectGoodsOptionsByGoodsCode(int goodsCode);
	
	@Select("select * from goods a left join goodsOption b on a.goodsCode = b.goodsCode order by a.goodsName ")
	List<GoodsOptionJoinDto> selectJoinedList();

	
	// 상품 상태 수정 : active -> deleted : st
	@Update("UPDATE goods SET status = 'deleted' WHERE goodsCode = #{ goodsCode } ")
	void deleteGoods(int goodsCode);	

	// 상품 상태 수정 : active -> deleted : st
	@Update("UPDATE goods SET status = 'active' WHERE goodsCode = #{ goodsCode } ")
	void activeGoods(int goodsCode);
	
	// 상품 옵션 삭제
	@Delete("DELETE FROM goodsOption WHERE optionNo = #{optionNo}")
	void delectGoodsOption(int optionNo);
	
	
	// 상품 옵션 수정 : goodsOption 컬럼 수정
	@Update("UPDATE goodsOption SET optionName = #{optionName}, optionDataType = #{optionDataType}, optionValue = #{optionValue}, optionDesc = #{optionDesc} WHERE optionNo = #{optionNo}")
	void updateGoodsOption(GoodsOptionDto option);

	
	@Select("SELECT * FROM goods a left join goodsOption b on a.goodsCode = b.goodsCode having ( a.goodsName like '%${search}%' OR a.brand like '%${search}%' OR a.category like '%${search}%' ) order by a.goodsName ")
	List<GoodsOptionJoinDto> adminGoodsListSearch(String search);

	@Select("SELECT * from goods a left join goodsOption b on a.goodsCode = b.goodsCode HAVING a.goodsCode = ${goodsCode} ")
	List<GoodsOptionJoinDto> selectAdminGoodsByGoodsCode(int goodsCode);
	
	
	
	// 상품 정보 수정
	@Update("UPDATE goods SET category = #{category}, brand = #{brand}, goodsName = #{goodsName}' WHERE goodsCode = #{goodsCode}")
	void updategoodslist(GoodsDto goods);	
	
	@Update("UPDATE goodsOption SET optionName = #{optionName}, optionDesc = #{optionDesc} WHERE optionNo = #{optionNo}")
	void updategoodsoptionlist(GoodsOptionDto goodsoptions);
	
	
		
	
	// 입고 기본 정보 입력 - goodsregister Table
	@Insert("INSERT INTO goodsRegister (inCode, detail, rentPrice, goodsIn, goodsInDate, goodsCode) " +
			"VALUES (#{ inCode }, #{ detail }, #{ rentPrice }, #{ goodsIn }, #{ goodsInDate }, #{ goodsCode }) ")
	@Options(useGeneratedKeys = true, keyColumn = "goodscode", keyProperty = "goodsCode")
	void insertGoodsIn(GoodsRegisterDto goodsregister);
	
	
	// 입고 리스트 불러오기
	@Select("SELECT * FROM goodsRegister")
	List<GoodsRegisterDto> selectAdminGoodsRegisterInList();
	
	@Select("SELECT * FROM goodsRegister")
	public GoodsRegisterDto findGoodsInList(List<GoodsRegisterDto> goodsregisters);

	@Select("SELECT * FROM goodsRegister")
	List<GoodsRegisterDto> adminGoodsRegisterInList();

	
	

}
