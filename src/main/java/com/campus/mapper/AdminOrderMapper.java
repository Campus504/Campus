package com.campus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.campus.dto.GoodsDto;
import com.campus.dto.OrderDetailDto;
import com.campus.dto.OrderListDto;

@Mapper
public interface AdminOrderMapper {

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList Order By orderNo DESC")
	List<OrderListDto> selectAllOrderList();

	@Select("SELECT d.amount, d.price, g.goodsName, g.category  FROM orderDetail d inner join goods g on d.goodsCode = g.goodsCode WHERE d.orderNo = #{orderNo} ")
	@Results(id = "adminOrderResultMap", value = {
			@Result(column = "amount", property = "amount"),
			@Result(column = "price", property = "price"),
			@Result(column = "category", property = "goods.category"),
			@Result(column = "goodsName", property = "goods.goodsName")
		})
	List<OrderDetailDto> selectOrderDetailsByOrderNo(int orderNo);

	@Select("SELECT orderNo, orderDate, to_char(returnDate,'yyyy-mm-dd') returnDate, to_char(rentDate,'yyyy-mm-dd') rentDate, pay, memberId FROM orderList WHERE memberId like '%${search}%' Order By orderNo DESC ")
	List<OrderListDto> selectOrderByMemberId(String search);

	@Select("select to_char(l.orderDate,'yyyy-mm-dd') orderDate, sum(d.amount*d.price) as orderNo  from orderList l Inner Join orderDetail d on l.orderNo = d.orderNo group by to_char(l.orderDate,'yyyy-mm-dd')  order By orderDate")
	List<OrderListDto> selectSalesdata();

	@Select("select g.category ,sum(amount) as goodsCode  from orderList l Inner Join orderDetail d on l.orderNo = d.orderNo inner Join goods g on g.goodsCode = d.goodsCode group by g.category")
	List<GoodsDto> selectCategoryData();

	@Select("select g.goodsCode, g.goodsName, g.brand, g.category from goods g inner join orderDetail d on g.goodsCode = d.goodsCode group by g.goodsCode order by sum(d.amount) desc limit 5")
	List<GoodsDto> selectBestGoods();

	@Select("select g.goodsCode, g.goodsName, g.brand, g.category from goods g inner join goodsRegister r on g.goodsCode = r.goodsCode  order by goodsInDate DESC limit 5")
	List<GoodsDto> selectLatestGoods();

}
