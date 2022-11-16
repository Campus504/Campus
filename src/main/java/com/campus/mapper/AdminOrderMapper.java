package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.OrderListDto;

@Mapper
public interface AdminOrderMapper {

	@Select("SELECT * FROM orderList")
	List<OrderListDto> selectAllOrderList();

}
