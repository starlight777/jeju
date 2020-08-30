package com.bit.course.model;

public class PagingDto {
	private int page = 1; // ���� ������ (get)
	private int totalCount; // �� ���ù� ��
	private int beginPage; // ���� ������ ��ȣ
	private int endPage; // �� ������ ��ȣ
	private int displayRow = 10; // �� ������ ���ù� ��
	private int displayPage = 10; // �� �������� �������� �� 1~10 11~20
	private int startNum;
	private int endNum;
	
	boolean prev; // prev ���ϰ��� ������
	boolean next; // next ���ϰ��� ������

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
		// setTotalCount�� ȣ�� �Ǿ� paging�� �Ǳ⶧����
		// paging �Լ��� setTotalCount�� ȣ������ �� ȣ��ǰ� �ؾ���.
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
		// prev, next, beginPage, endPage�� ����ؼ� �����.
		// 2+9 = 11, 11/10 = 1, 1*10 = 10
		// 10+9 = 19, 19/10 = 1, 1*10 = 10
		// 11+9 = 20, 20/10 = 2, 2*10 = 20
		// 20+9 = 29, 29/10 = 2, 2*10 = 20
		// 111+9 = 120 120/10 = 12, 12*10 = 120

		// (2+9)/10 * 10 (1�� ���)
		// endPage = ((page+(displayPage-1))/displayPage)*displayPage;

		// 1/10 0.1(�ø�) 1 (2�� ���)
		endPage = ((int) Math.ceil(page / (double) displayPage)) * displayPage;
		System.out.println("endPage:" + endPage);

		beginPage = endPage - (displayPage - 1);
		System.out.println("beginPage:" + beginPage);

		// �� 32��
		// 32/10 = 3.2 (�ø�) 4������
		int totalPage = (int) Math.ceil(totalCount / (double) displayRow);

		// �� �������� ���Ƿ� �� ������ ���� ũ�� ���� �Ұ�� ������ ġȯ�ع���
		if (totalPage < endPage) {
			endPage = totalPage;
			next = false;
		} else {
			next = true;
		}

		// A�� true�� false
		// A�� false�� true;
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
