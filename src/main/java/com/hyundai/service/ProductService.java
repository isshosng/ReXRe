package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

@Component
public interface ProductService {
	public List<productVO> getList(Criteria cri);
	public int getTotal(Criteria cri) throws Exception; // �� �� ����
	
	
	public List<productVO> getListWithPaging(Criteria cri)throws Exception; // ����¡ ����Ʈ
	
	//�������� + ��ȸ��
	public List<productDetailVO> getProductDetail(Long product_id);
	
	public List<productVO> getCategoryWithPaging(Criteria cri, String product_category) throws Exception;
}
