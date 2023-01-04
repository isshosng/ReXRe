package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@NoArgsConstructor
public class ProductMapperTests {

   @Setter(onMethod_ = @Autowired)
   private ProductMapper mapper;


   @Test
   public void testGetList() {
      log.info("helloooo");
      List<productVO> list = mapper.getList();
      log.info(list.isEmpty());
      log.info(list.size());
//
//      log.info(list.get(0));
//
//      log.info(list);

      list.forEach(product -> log.info(product));
      // assertEquals(0, 0);
      // mapper.getList().forEach(product -> log.info(product));
   }

   
   @Test
   public void testgetListWithPaging() {
	   log.info("getListwith paging");
	   Criteria criteria = new Criteria();
	   criteria.setPageNum(2);
	   criteria.setAmount(9);
	   List<productVO> list = mapper.getListWithPaging(criteria);
   }
   
   
	//��������
	@Test 
	public void testGetProductDetail() {
		log.info("getProductDetail");
		List<productDetailVO> detail = mapper.getProductDetail(1L);

	}
	
	//�������� ��ȸ��
	@Test
	public void testGetProductDetailCount() throws Exception {
		log.info("getProductDetailCount");
		int count = mapper.getProductDetailCount(1L);
		log.info(count);
	}
	
	//ī�װ�
	@Test
	public void testGetCategoryWithPaging() {
		Criteria cri = new Criteria();
		cri.setPageNum(1);
		cri.setAmount(9);
		log.info("@@@@@@@@@@@@@@@");
		List<productVO> list = mapper.getCategoryWithPaging(cri, "maskPack");
		log.info("@@@@@@@@@@@@@@@");
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
}