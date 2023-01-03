package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {

	public List<productVO> getList();

	public List<productVO> getListWithPaging(Criteria cri); // �Ķ���� �޾Ƽ� ����¡ ������ -> xml �θ� ��

	public int getTotalCount(Criteria cri); // �Խù��� �� ����(getTotalCount) get (�������ڵ�)
	
	//productDetail
	public List<productDetailVO> getProductDetail(Long product_id); //product_id�θ� ����?
	
	//productDetail Count
	public int getProductDetailCount(Long product_id);
}
