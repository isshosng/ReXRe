package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productVO;

public interface ProductMapper {

	public List<productVO> getList();

	public List<productVO> getListWithPaging(Criteria cri); // �Ķ���� �޾Ƽ� ����¡ ������ -> xml �θ� ��

	public int getTotalCount(Criteria cri); // �Խù��� �� ����(getTotalCount) get (�������ڵ�)
}
