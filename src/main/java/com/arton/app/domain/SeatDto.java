package com.arton.app.domain;

public class SeatDto {
    private Integer id;
    private Integer perfId;
    private String seatClass;
    private Integer seatPrice;


    public SeatDto() {}

    public SeatDto(Integer id, Integer perfId, String seatClass, Integer seatPrice) {
        this.id = id;
        this.perfId = perfId;
        this.seatClass = seatClass;
        this.seatPrice = seatPrice;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPerfId() {
        return perfId;
    }

    public void setPerfId(Integer perfId) {
        this.perfId = perfId;
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

    @Override
    public String toString() {
        return "Seat{" + "id=" + id + ", perfId=" + perfId + ", seatClass='" + seatClass + '\'' + ", seatPrice=" + seatPrice + '}';
    }
}
