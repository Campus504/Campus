package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.OrderListDto;

@Mapper
public interface AdminOrderMapper {

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList")
	List<OrderListDto> selectAllOrderList();

}
