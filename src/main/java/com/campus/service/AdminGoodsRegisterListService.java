package com.campus.service;

import java.util.List;

import com.campus.dto.GoodsDto;

public interface AdminGoodsRegisterListService {

	GoodsDto selectGoodsList(GoodsDto goods1);

	void showgoodslist(GoodsDto goods);

	List<GoodsDto> findGoodsList(List<GoodsDto> goods1);

	GoodsDto selectGoodsList(int GoodsCode);

}