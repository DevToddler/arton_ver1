package com.arton.app.domain;

import java.util.Date;

public class BookingDto {
    private Integer id;
    private Integer userIdx;
    private Integer perfId;
    private Integer seatInvtId;
    private Integer seatId;
    private Integer perfRoundId;
    private Date bookingTime;
    private Integer ticketCnt;
    private Integer priceOTotal;
    private Integer priceCut;
    private Integer totalPayment;
    private String payMethod;
    private Integer bookingStatus;
    private Date cancelTime;

    //join할 DTO - inner class
    private PerfDto perfDto;
    private PerfRoundDto perfRoundDto;
    private SeatDto seatDto;

    public BookingDto() {}

    public BookingDto(Integer id, Integer userIdx, Integer perfId, Integer seatInvtId, Integer seatId, Integer perfRoundId, Date bookingTime, Integer ticketCnt, Integer priceOTotal, Integer priceCut, Integer totalPayment, String payMethod, Integer bookingStatus, Date cancelTime, PerfDto perfDto, PerfRoundDto perfRoundDto, SeatDto seatDto) {
        this.id = id;
        this.userIdx = userIdx;
        this.perfId = perfId;
        this.seatInvtId = seatInvtId;
        this.seatId = seatId;
        this.perfRoundId = perfRoundId;
        this.bookingTime = bookingTime;
        this.ticketCnt = ticketCnt;
        this.priceOTotal = priceOTotal;
        this.priceCut = priceCut;
        this.totalPayment = totalPayment;
        this.payMethod = payMethod;
        this.bookingStatus = bookingStatus;
        this.cancelTime = cancelTime;
        this.perfDto = perfDto;
        this.perfRoundDto = perfRoundDto;
        this.seatDto = seatDto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserIdx() {
        return userIdx;
    }

    public void setUserIdx(Integer userIdx) {
        this.userIdx = userIdx;
    }

    public Integer getPerfId() {
        return perfId;
    }

    public void setPerfId(Integer perfId) {
        this.perfId = perfId;
    }

    public Integer getSeatInvtId() {
        return seatInvtId;
    }

    public void setSeatInvtId(Integer seatInvtId) {
        this.seatInvtId = seatInvtId;
    }

    public Integer getSeatId() {
        return seatId;
    }

    public void setSeatId(Integer seatId) {
        this.seatId = seatId;
    }

    public Integer getPerfRoundId() {
        return perfRoundId;
    }

    public void setPerfRoundId(Integer perfRoundId) {
        this.perfRoundId = perfRoundId;
    }

    public Date getBookingTime() {
        return bookingTime;
    }

    public void setBookingTime(Date bookingTime) {
        this.bookingTime = bookingTime;
    }

    public Integer getTicketCnt() {
        return ticketCnt;
    }

    public void setTicketCnt(Integer ticketCnt) {
        this.ticketCnt = ticketCnt;
    }

    public Integer getPriceOTotal() {
        return priceOTotal;
    }

    public void setPriceOTotal(Integer priceOTotal) {
        this.priceOTotal = priceOTotal;
    }

    public Integer getPriceCut() {
        return priceCut;
    }

    public void setPriceCut(Integer priceCut) {
        this.priceCut = priceCut;
    }

    public Integer getTotalPayment() {
        return totalPayment;
    }

    public void setTotalPayment(Integer totalPayment) {
        this.totalPayment = totalPayment;
    }

    public String getPayMethod() {
        return payMethod;
    }

    public void setPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    public Integer getBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(Integer bookingStatus) {
        this.bookingStatus = bookingStatus;
    }

    public Date getCancelTime() {
        return cancelTime;
    }

    public void setCancelTime(Date cancelTime) {
        this.cancelTime = cancelTime;
    }

    public PerfDto getPerfDto() {
        return perfDto;
    }

    public void setPerfDto(PerfDto perfDto) {
        this.perfDto = perfDto;
    }

    public PerfRoundDto getPerfRoundDto() {
        return perfRoundDto;
    }

    public void setPerfRoundDto(PerfRoundDto perfRoundDto) {
        this.perfRoundDto = perfRoundDto;
    }

    public SeatDto getSeatDto() {
        return seatDto;
    }

    public void setSeatDto(SeatDto seatDto) {
        this.seatDto = seatDto;
    }

    @Override
    public String toString() {
        return "BookingDto{" + "id=" + id + ", userIdx=" + userIdx + ", perfId=" + perfId + ", seatInvtId=" + seatInvtId + ", seatId=" + seatId + ", perfRoundId=" + perfRoundId + ", bookingTime=" + bookingTime + ", ticketCnt=" + ticketCnt + ", priceOTotal=" + priceOTotal + ", priceCut=" + priceCut + ", totalPayment=" + totalPayment + ", payMethod='" + payMethod + '\'' + ", bookingStatus=" + bookingStatus + ", cancelTime=" + cancelTime + ", perfDto=" + perfDto + ", perfRoundDto=" + perfRoundDto + ", seatDto=" + seatDto + '}';
    }
}
