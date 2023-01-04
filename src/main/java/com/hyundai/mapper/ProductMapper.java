package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {

	public List<productVO> getList();

	public List<productVO> getListWithPaging(Criteria cri); // �Ķ���� �޾Ƽ� ����¡ ������ -> xml �θ� ��

	public int getTotalCount(Criteria cri); // �Խù��� �� ����(getTotalCount) get (�������ڵ�)
	
	//category
	public List<productVO> getCategoryWithPaging(@Param("cri") Criteria cri, @Param("product_category") String product_category);
	
	//productDetail
	public List<productDetailVO> getProductDetail(Long product_id); //product_id�θ� ����?
	
	//productDetail Count
	public int getProductDetailCount(Long product_id);
}
