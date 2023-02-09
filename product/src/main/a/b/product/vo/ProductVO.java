package main.a.b.product.vo;

public class ProductVO {

    //DB property
    private String pnum;
    private String pname;
    private String pimage;
    private int ppay;
    private String pcontent;
    private String pcategory;
    private String pcategory_detail;
    private int pcount;
    private String pinsertdate;
    private String pcountyn;
    private String pdeleteyn;
    private String detail_product;

    //paging
    private String rowCount; //한 페이지당 게시물 개수
    private String groupSize;// 밑에 그룹 개수
    private String nowPage; // 현재 페이지
    private String totalCount;// 전체 페이지 수

    //serching
    private String minPay;
    private String maxPay;

    //lookStyle
    private String lookStyle;
    
    
    
    public ProductVO(){}

    public ProductVO(String pnum, String pname, String pimage, int ppay, String pcontent, String pcategory, String pcategory_detail, String detail_product, int pcount, String pinsertdate, String pcountyn, String pdeleteyn, String rowCount, String groupSize, String nowPage, String totalCount, String minPay, String maxPay, String lookStyle) {
        this.pnum = pnum;
        this.pname = pname;
        this.pimage = pimage;
        this.ppay = ppay;
        this.pcontent = pcontent;
        this.pcategory = pcategory;
        this.pcategory_detail = pcategory_detail;
        this.pcount = pcount;
        this.pinsertdate = pinsertdate;
        this.pcountyn = pcountyn;
        this.pdeleteyn = pdeleteyn;
        this.rowCount = rowCount;
        this.groupSize = groupSize;
        this.nowPage = nowPage;
        this.totalCount = totalCount;
        this.minPay = minPay;
        this.maxPay = maxPay;
        this.lookStyle = lookStyle;
        this.detail_product = detail_product;
    }

    public String getPnum() {
        return pnum;
    }

    public void setPnum(String pnum) {
        this.pnum = pnum;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public int getPpay() {
        return ppay;
    }

    public void setPpay(int ppay) {
        this.ppay = ppay;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public String getPcategory() {
        return pcategory;
    }

    public void setPcategory(String pcategory) {
        this.pcategory = pcategory;
    }

    public String getPcategory_detail() {
        return pcategory_detail;
    }

    public void setPcategory_detail(String pcategory_detail) {
        this.pcategory_detail = pcategory_detail;
    }

    public int getPcount() {
        return pcount;
    }

    public void setPcount(int pcount) {
        this.pcount = pcount;
    }

    public String getPinsertdate() {
        return pinsertdate;
    }

    public void setPinsertdate(String pinsertdate) {
        this.pinsertdate = pinsertdate;
    }

    public String getPcountyn() {
        return pcountyn;
    }

    public void setPcountyn(String pcountyn) {
        this.pcountyn = pcountyn;
    }

    public String getPdeleteyn() {
        return pdeleteyn;
    }

    public void setPdeleteyn(String pdeleteyn) {
        this.pdeleteyn = pdeleteyn;
    }

    public String getRowCount() {
        return rowCount;
    }

    public void setRowCount(String rowCount) {
        this.rowCount = rowCount;
    }

    public String getGroupSize() {
        return groupSize;
    }

    public void setGroupSize(String groupSize) {
        this.groupSize = groupSize;
    }

    public String getNowPage() {
        return nowPage;
    }

    public void setNowPage(String nowPage) {
        this.nowPage = nowPage;
    }

    public String getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(String totalCount) {
        this.totalCount = totalCount;
    }

    public String getMinPay() {
        return minPay;
    }

    public void setMinPay(String minPay) {
        this.minPay = minPay;
    }

    public String getMaxPay() {
        return maxPay;
    }

    public void setMaxPay(String maxPay) {
        this.maxPay = maxPay;
    }

	public String getLookStyle() {
		return lookStyle;
	}

	public void setLookStyle(String lookStyle) {
		this.lookStyle = lookStyle;
	}

	public String getDetail_product() {
		return detail_product;
	}

	public void setDetail_product(String detail_product) {
		this.detail_product = detail_product;
	}
    
	
}
