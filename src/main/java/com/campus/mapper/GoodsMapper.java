package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.GoodsRegisterDto;
import com.campus.dto.MemberDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

@Mapper
public interface GoodsMapper {

	@Select("SELECT * FROM goods WHERE category = '텐트' OR category = '타프' OR category = '텐트/타프(소품)' ")
	List<GoodsDto> selectGoodsByCategoryTent();
	@Select("SELECT * FROM goods WHERE category = '테이블' OR category ='체어' ")
	List<GoodsDto> selectGoodsByCategoryTable();
	@Select("SELECT * FROM goods WHERE category = '침낭' OR category = '매트' OR category = '야전침대' OR category = '베개/해먹' OR category = '소품' ")
	List<GoodsDto> selectGoodsByCategoryMat();
	@Select("SELECT * FROM goods WHERE category = '코펠' OR category = '프라이팬' OR category = '컵/머그컵' OR category = '취사도구/양념통' ")
	List<GoodsDto> selectGoodsByCategoryDish();
	@Select("SELECT * FROM goods WHERE category = '버너/스토브' OR category = '화로대' OR category = '난로' OR category = '화로/버너(소품)' ")
	List<GoodsDto> selectGoodsByCategoryStove();
	@Select("SELECT * FROM goods WHERE category = '가전기기' OR category = '랜턴/손전등' OR category = '아이스박스/쿨러' OR category = '수납박스/케이스' OR category = '기타소품' ")
	List<GoodsDto> selectGoodsByCategoryEtc();

	@Select("SELECT * FROM goods WHERE goodsCode = #{goodsCode} ")
	GoodsDto selectGoodsByGoodsCode(int goodsCode);

	@Select("SELECT ROUND(avg(rentPrice),0) rentPrice, sum(goodsIn) goodsIn, goodsCode FROM goodsRegister Group By goodsCode Having goodsCode = #{goodsCode} ")
	GoodsRegisterDto selectGoodsInByGoodsCode(int goodsCode);

	@Select("SELECT * FROM member WHERE memberId = #{memberId}")
	MemberDto selectMemberByMemberId(String memberId);

	@Insert("INSERT INTO orderList (returnDate, rentDate, pay, memberId ) VALUES ( #{returnDate}, #{rentDate}, #{pay}, #{memberId} ) ")
	@Options(useGeneratedKeys = true, keyColumn = "orderNo", keyProperty = "orderNo")
	void insertOrder(OrderListDto orderList);

	@Insert("INSERT INTO orderDetail (orderNo, goodsCode, amount, price) VALUES ( #{orderNo}, #{goodsCode}, #{amount}, #{price} ) ")
	void insertOrderDetail(OrderDetailDto orderDetail);
	
	@Select("select * from goods where goodsCode in ( SELECT goodsCode from orderDetail group by goodsCode order by sum(amount) DESC ) limit 10")
	List<GoodsDto> selectBestGoods();

}
