package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

@Mapper
public interface AdminOrderMapper {

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList Order By orderDate DESC")
	List<OrderListDto> selectAllOrderList();

	@Select("SELECT * FROM orderDetail WHERE orderNo = #{orderNo} ")
	List<OrderDetailDto> selectOrderDetailsByOrderNo(int orderNo);

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList WHERE memberId LIKE '%${search}%' Order By orderDate DESC ")
	List<OrderListDto> selectOrderByMemberId(String search);

}
