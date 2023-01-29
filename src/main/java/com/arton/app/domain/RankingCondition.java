package com.arton.app.domain;

public class RankingCondition {
    private String rankingCate = "";
    private String bookingDateFrom;
    private String bookingDateTo;


    public RankingCondition() {}

    public RankingCondition(String rankingCate) {
        this.rankingCate = rankingCate;
    }

    public RankingCondition(String rankingCate, String bookingDateFrom, String bookingDateTo) {
        this.rankingCate = rankingCate;
        this.bookingDateFrom = bookingDateFrom;
        this.bookingDateTo = bookingDateTo;
    }

    public String getRankingCate() {
        return rankingCate;
    }

    public void setRankingCate(String rankingCate) {
        this.rankingCate = rankingCate;
    }

    public String getBookingDateFrom() {
        return bookingDateFrom;
    }

    public void setBookingDateFrom(String bookingDateFrom) {
        this.bookingDateFrom = bookingDateFrom;
    }

    public String getBookingDateTo() {
        return bookingDateTo;
    }

    public void setBookingDateTo(String bookingDateTo) {
        this.bookingDateTo = bookingDateTo;
    }
}
