package com.arton.app.domain;

public class ViewSeatInvtDto {
	private Integer seatInvtId;
	private Integer perfRoundId;
	private Integer perfId;
	private Integer seatId;
	private Integer seatInit;
	private Integer seatStock;
	private String perfName;
	private String location;
	private String showDate;
	private String showTime;
	private String seatClass;
	private Integer seatPrice;
	private Integer discountRate;
	private Integer showDateIdx;
	private Integer showTimeIdx;


	public ViewSeatInvtDto() {}

	public ViewSeatInvtDto(Integer seatInvtId, Integer perfRoundId, Integer perfId, Integer seatId, Integer seatInit, Integer seatStock, String perfName, String location, String showDate, String showTime, String seatClass, Integer seatPrice, Integer discountRate, Integer showDateIdx, Integer showTimeIdx) {
		this.seatInvtId = seatInvtId;
		this.perfRoundId = perfRoundId;
		this.perfId = perfId;
		this.seatId = seatId;
		this.seatInit = seatInit;
		this.seatStock = seatStock;
		this.perfName = perfName;
		this.location = location;
		this.showDate = showDate;
		this.showTime = showTime;
		this.seatClass = seatClass;
		this.seatPrice = seatPrice;
		this.discountRate = discountRate;
		this.showDateIdx = showDateIdx;
		this.showTimeIdx = showTimeIdx;
	}

	public Integer getSeatInvtId() {
		return seatInvtId;
	}

	public void setSeatInvtId(Integer seatInvtId) {
		this.seatInvtId = seatInvtId;
	}

	public Integer getPerfRoundId() {
		return perfRoundId;
	}

	public void setPerfRoundId(Integer perfRoundId) {
		this.perfRoundId = perfRoundId;
	}

	public Integer getPerfId() {
		return perfId;
	}

	public void setPerfId(Integer perfId) {
		this.perfId = perfId;
	}

	public Integer getSeatId() {
		return seatId;
	}

	public void setSeatId(Integer seatId) {
		this.seatId = seatId;
	}

	public Integer getSeatInit() {
		return seatInit;
	}

	public void setSeatInit(Integer seatInit) {
		this.seatInit = seatInit;
	}

	public Integer getSeatStock() {
		return seatStock;
	}

	public void setSeatStock(Integer seatStock) {
		this.seatStock = seatStock;
	}

	public String getPerfName() {
		return perfName;
	}

	public void setPerfName(String perfName) {
		this.perfName = perfName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getShowDate() {
		return showDate;
	}

	public void setShowDate(String showDate) {
		this.showDate = showDate;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public String getSeatClass() {
		return seatClass;
	}

	public void setSeatClass(String seatClass) {
		this.seatClass = seatClass;
	}

	public Integer getSeatPrice() {
		return seatPrice;
	}

	public void setSeatPrice(Integer seatPrice) {
		this.seatPrice = seatPrice;
	}

	public Integer getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(Integer discountRate) {
		this.discountRate = discountRate;
	}

	public Integer getShowDateIdx() {
		return showDateIdx;
	}

	public void setShowDateIdx(Integer showDateIdx) {
		this.showDateIdx = showDateIdx;
	}

	public Integer getShowTimeIdx() {
		return showTimeIdx;
	}

	public void setShowTimeIdx(Integer showTimeIdx) {
		this.showTimeIdx = showTimeIdx;
	}

	@Override
	public String toString() {
		return "ViewSeatInvtDto{" + "seatInvtId=" + seatInvtId + ", perfRoundId=" + perfRoundId + ", perfId=" + perfId + ", seatId=" + seatId + ", seatInit=" + seatInit + ", seatStock=" + seatStock + ", perfName='" + perfName + '\'' + ", location='" + location + '\'' + ", showDate='" + showDate + '\'' + ", showTime='" + showTime + '\'' + ", seatClass='" + seatClass + '\'' + ", seatPrice=" + seatPrice + ", discountRate=" + discountRate + ", showDateIdx=" + showDateIdx + ", showTimeIdx=" + showTimeIdx + '}';
	}
}
