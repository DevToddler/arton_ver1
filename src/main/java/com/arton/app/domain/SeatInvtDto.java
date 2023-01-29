package com.arton.app.domain;

public class SeatInvtDto {
    private Integer id;
    private Integer perfRoundId;
    private Integer perfId;
    private Integer seatId;
    private Integer seatInit;
    private Integer seatStock;


    public SeatInvtDto(Integer id, Integer perfRoundId, Integer perfId, Integer seatId, Integer seatInit, Integer seatStock) {
        this.id = id;
        this.perfRoundId = perfRoundId;
        this.perfId = perfId;
        this.seatId = seatId;
        this.seatInit = seatInit;
        this.seatStock = seatStock;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    @Override
    public String toString() {
        return "SeatInvt{" + "id=" + id + ", perfRoundId=" + perfRoundId + ", perfId=" + perfId + ", seatId=" + seatId + ", seatInit=" + seatInit + ", seatStock=" + seatStock + '}';
    }
}
