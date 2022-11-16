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

	@Select("SELECT * FROM goods WHERE category = #{category} ")
	List<GoodsDto> selectGoodsByCategory(String category);

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

}
