package com.kh.product.model.vo;

public class ProductFile {
	private int productFileNo;			// 상품 첨부파일 고유번호
	private int refProductNo;			// 참조하고있는 상품 고유번호
	private String productFileOname;	// 상품 첨부파일 원본명
	private String productFileRename;	// 상품 첨부파일 경로+수정명
	
	public ProductFile() {}

	public ProductFile(int productFileNo, int refProductNo, String productFileOname, String productFileRename) {
		super();
		this.productFileNo = productFileNo;
		this.refProductNo = refProductNo;
		this.productFileOname = productFileOname;
		this.productFileRename = productFileRename;
	}

	public int getProductFileNo() {
		return productFileNo;
	}

	public void setProductFileNo(int productFileNo) {
		this.productFileNo = productFileNo;
	}

	public int getRefProductNo() {
		return refProductNo;
	}

	public void setRefProductNo(int refProductNo) {
		this.refProductNo = refProductNo;
	}

	public String getProductFileOname() {
		return productFileOname;
	}

	public void setProductFileOname(String productFileOname) {
		this.productFileOname = productFileOname;
	}

	public String getProductFileRename() {
		return productFileRename;
	}

	public void setProductFileRename(String productFileRename) {
		this.productFileRename = productFileRename;
	}

	@Override
	public String toString() {
		return "ProductFile [productFileNo=" + productFileNo + ", refProductNo=" + refProductNo + ", productFileOname="
				+ productFileOname + ", productFileRename=" + productFileRename + "]";
	}
	
	
}
