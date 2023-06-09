package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.Review2VO;
import com.hyundai.mapper.ReviewMapper2;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : Review Service Implements
 * @author : Seeun Lee
 * @Date : Jan 8. 2023.
 *********************************/
@Service
@Log4j
public class ReviewServiceImpl2 implements ReviewService2{
	@Setter(onMethod_= @Autowired)
	private ReviewMapper2 mapper;

	@Override
	public List<Review2VO> getReviewWithPaging(Long productId) throws Exception {
		return mapper.getReview2WithPaging(productId);
	}

	@Override
	public int getReview2TotalCount(Long productId) {
		return mapper.getReview2TotalCount(productId);
	}

	
}
