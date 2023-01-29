package com.arton.app.domain;

public class PerfDto {
    private Integer id;
    private String cate;
    private String perfName;
    private String posterPath;
    private String posterPathDb;
    private String contentRating;
    private String runningTime;
    private String cast;
    private String agency;
    private String hotline;
    private String location;
    private String locationAddr;
    private Integer discountRate;
    private Integer perfStatus;

    // 기타 집계 정보
    private String perfStart;
    private String perfEnd;
    private Integer likeCnt;
    private double avgRating;
    private String seatInfo;
    private String bookingCnt;


    public PerfDto() {}

    public PerfDto(Integer id, String cate, String perfName, String posterPath, String posterPathDb, String contentRating, String runningTime, String cast, String agency, String hotline, String location, String locationAddr, Integer discountRate, Integer perfStatus, String perfStart, String perfEnd, Integer likeCnt, double avgRating, String seatInfo, String bookingCnt) {
        this.id = id;
        this.cate = cate;
        this.perfName = perfName;
        this.posterPath = posterPath;
        this.posterPathDb = posterPathDb;
        this.contentRating = contentRating;
        this.runningTime = runningTime;
        this.cast = cast;
        this.agency = agency;
        this.hotline = hotline;
        this.location = location;
        this.locationAddr = locationAddr;
        this.discountRate = discountRate;
        this.perfStatus = perfStatus;
        this.perfStart = perfStart;
        this.perfEnd = perfEnd;
        this.likeCnt = likeCnt;
        this.avgRating = avgRating;
        this.seatInfo = seatInfo;
        this.bookingCnt = bookingCnt;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getPerfName() {
        return perfName;
    }

    public void setPerfName(String perfName) {
        this.perfName = perfName;
    }

    public String getPosterPath() {
        return posterPath;
    }

    public void setPosterPath(String posterPath) {
        this.posterPath = posterPath;
    }

    public String getPosterPathDb() {
        return posterPathDb;
    }

    public void setPosterPathDb(String posterPathDb) {
        this.posterPathDb = posterPathDb;
    }

    public String getContentRating() {
        return contentRating;
    }

    public void setContentRating(String contentRating) {
        this.contentRating = contentRating;
    }

    public String getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(String runningTime) {
        this.runningTime = runningTime;
    }

    public String getCast() {
        return cast;
    }

    public void setCast(String cast) {
        this.cast = cast;
    }

    public String getAgency() {
        return agency;
    }

    public void setAgency(String agency) {
        this.agency = agency;
    }

    public String getHotline() {
        return hotline;
    }

    public void setHotline(String hotline) {
        this.hotline = hotline;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLocationAddr() {
        return locationAddr;
    }

    public void setLocationAddr(String locationAddr) {
        this.locationAddr = locationAddr;
    }

    public Integer getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(Integer discountRate) {
        this.discountRate = discountRate;
    }

    public Integer getPerfStatus() {
        return perfStatus;
    }

    public void setPerfStatus(Integer perfStatus) {
        this.perfStatus = perfStatus;
    }

    public String getPerfStart() {
        return perfStart;
    }

    public void setPerfStart(String perfStart) {
        this.perfStart = perfStart;
    }

    public String getPerfEnd() {
        return perfEnd;
    }

    public void setPerfEnd(String perfEnd) {
        this.perfEnd = perfEnd;
    }

    public Integer getLikeCnt() {
        return likeCnt;
    }

    public void setLikeCnt(Integer likeCnt) {
        this.likeCnt = likeCnt;
    }

    public double getAvgRating() {
        return avgRating;
    }

    public void setAvgRating(double avgRating) {
        this.avgRating = avgRating;
    }

    public String getSeatInfo() {
        return seatInfo;
    }

    public void setSeatInfo(String seatInfo) {
        this.seatInfo = seatInfo;
    }

    public String getBookingCnt() {
        return bookingCnt;
    }

    public void setBookingCnt(String bookingCnt) {
        this.bookingCnt = bookingCnt;
    }

    @Override
    public String toString() {
        return "PerfDto{" + "id=" + id + ", cate='" + cate + '\'' + ", perfName='" + perfName + '\'' + ", posterPath='" + posterPath + '\'' + ", posterPathDb='" + posterPathDb + '\'' + ", contentRating='" + contentRating + '\'' + ", runningTime='" + runningTime + '\'' + ", cast='" + cast + '\'' + ", agency='" + agency + '\'' + ", hotline='" + hotline + '\'' + ", location='" + location + '\'' + ", locationAddr='" + locationAddr + '\'' + ", discountRate=" + discountRate + ", perfStatus=" + perfStatus + ", perfStart='" + perfStart + '\'' + ", perfEnd='" + perfEnd + '\'' + ", likeCnt=" + likeCnt + ", avgRating=" + avgRating + ", seatInfo='" + seatInfo + '\'' + ", bookingCnt='" + bookingCnt + '\'' + '}';
    }
}
