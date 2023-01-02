package com.hyundai.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int firstPage; // ù ������ ������
	private int lastPage; // ������ ������ ������
	
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) { //(����������, ǥ���� ����/ ��ü����)
		
		
		
		this.total = total;
		this.cri = cri;
		this.endPage = (int) (Math.ceil( cri.getPageNum() /10.0)) * 10;		
		this.startPage = this.endPage - 9;		
		int realEnd = (int)  Math.ceil( (total * 1.0) / cri.getAmount() ) ;
		this.firstPage = 1; 
		this.lastPage = realEnd;
		
		System.out.println("realEnd : "+ realEnd);		
		if ( realEnd < this.endPage) {
			this.endPage = realEnd;
		} 
		this.prev = (this.startPage > 1);		
		this.next = (this.endPage < realEnd);	
		
		
		/* �����ڵ�
		 * this.cri = cri; this.total = total; this.endPage = (int)
		 * (Math.ceil(cri.getPageNum() / 9.0)) * 9; //9�� �����ֱ�
		 * 
		 * this.startPage = this.endPage - 8;
		 * 
		 * int realEnd = (int) (Math.ceil((total * 1.0)/ cri.getAmount()));
		 * 
		 * if(realEnd < this.endPage) { this.endPage = realEnd; }
		 * 
		 * this.prev = this.startPage > 1; this.next = this.endPage < realEnd;
		 */
	}
}