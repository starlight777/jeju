package com.bit.courses.model;

public class PagingDto {
	private int page = 1; // 현재 페이지 (get)
	private int totalCount; // 총 개시물 수
	private int beginPage; // 시작 페이지 번호
	private int endPage; // 끝 페이지 번호
	private int displayRow = 10; // 한 페이지 개시물 수
	private int displayPage = 10; // 한 페이지에 페이지의 수 1~10 11~20
	private int startNum;
	private int endNum;
	
	boolean prev; // prev 보일건지 말건지
	boolean next; // next 보일건지 말건지

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		// setTotalCount가 호출 되야 paging이 되기때문에
		// paging 함수를 setTotalCount를 호출했을 때 호출되게 해야함.
		this.totalCount = totalCount;
		paging();
	}

	public int getBeginPage() {
		return beginPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public int getDisplayRow() {
		return displayRow;
	}

	public void setDisplayRow(int displayRow) {
		this.displayRow = displayRow;
	}

	public int getDisplayPage() {
		return displayPage;
	}

	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	private void paging() {
		// prev, next, beginPage, endPage를 계산해서 만든다.
		// 2+9 = 11, 11/10 = 1, 1*10 = 10
		// 10+9 = 19, 19/10 = 1, 1*10 = 10
		// 11+9 = 20, 20/10 = 2, 2*10 = 20
		// 20+9 = 29, 29/10 = 2, 2*10 = 20
		// 111+9 = 120 120/10 = 12, 12*10 = 120

		// (2+9)/10 * 10 (1번 방법)
		// endPage = ((page+(displayPage-1))/displayPage)*displayPage;

		// 1/10 0.1(올림) 1 (2번 방법)
		endPage = ((int) Math.ceil(page / (double) displayPage)) * displayPage;
		System.out.println("endPage:" + endPage);

		beginPage = endPage - (displayPage - 1);
		System.out.println("beginPage:" + beginPage);

		// 글 32개
		// 32/10 = 3.2 (올림) 4페이지
		int totalPage = (int) Math.ceil(totalCount / (double) displayRow);

		// 끝 페이지를 임의로 총 페이지 보다 크게 접근 할경우 강제로 치환해버림
		if (totalPage < endPage) {
			endPage = totalPage;
			next = false;
		} else {
			next = true;
		}

		// A가 true면 false
		// A가 false면 true;
		// prev = (beginPage ==1)?false : true;

		if (beginPage == 1) {
			prev = false;
		} else {
			prev = true;
		}

		System.out.println("endPage : " + endPage);
		System.out.println("totalPage : " + totalPage);

	}

}
