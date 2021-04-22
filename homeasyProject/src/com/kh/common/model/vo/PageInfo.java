package com.kh.common.model.vo;

public class PageInfo {
	
	private int listCount;		// 현재 멤버 총 갯수
	private int currentPage;	// 현재 페이지 (요청한 페이지)
	private int pageLimit;		// 한페이지 하단에 보여질 페이징바 최대갯수(10개단위)
	private int memberLimit;	// 한페이지내 보여질 멤버리스트 최대갯수(10개단위)
	private int maxPage;		// 전체페이지들 중에서의 가장 마지막페이지 (listCount, memberLimit를 가지고 구할것)
	private int startPage;		// 현재페이지에 하단에 보여질 페이징바의 시작수 (currentPage, pageLimit를 가지고 구할것)
	private int endPage;
	
	public PageInfo() {}

	public PageInfo(int listCount, int currentPage, int pageLimit, int memberLimit, int maxPage, int startPage,
			int endPage) {
		super();
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.memberLimit = memberLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getMemberLimit() {
		return memberLimit;
	}

	public void setMemberLimit(int memberLimit) {
		this.memberLimit = memberLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	@Override
	public String toString() {
		return "PageInfo [listCount=" + listCount + ", currentPage=" + currentPage + ", pageLimit=" + pageLimit
				+ ", memberLimit=" + memberLimit + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + "]";
	}

	
	

}
