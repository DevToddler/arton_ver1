package com.arton.app.domain;

import java.util.Date;

public class ReviewDto {
    private Integer id;
    private Integer userIdx;
    private Integer perfId;
    private String rvContent;
    private Integer rating;
    private Date rvModiTime;

    public ReviewDto() {}

    public ReviewDto(Integer userIdx, Integer perfId, String rvContent, Integer rating) {
        this.userIdx = userIdx;
        this.perfId = perfId;
        this.rvContent = rvContent;
        this.rating = rating;
    }

    public ReviewDto(Integer id, Integer userIdx, Integer perfId, String rvContent, Integer rating, Date rvModiTime) {
        this.id = id;
        this.userIdx = userIdx;
        this.perfId = perfId;
        this.rvContent = rvContent;
        this.rating = rating;
        this.rvModiTime = rvModiTime;
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

    public String getRvContent() {
        return rvContent;
    }

    public void setRvContent(String rvContent) {
        this.rvContent = rvContent;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Date getRvModiTime() {
        return rvModiTime;
    }

    public void setRvModiTime(Date rvModiTime) {
        this.rvModiTime = rvModiTime;
    }

    @Override
    public String toString() {
        return "ReviewDto{" + "id=" + id + ", userIdx=" + userIdx + ", perfId=" + perfId + ", rvContent='" + rvContent + '\'' + ", rating=" + rating + ", rvModiTime=" + rvModiTime + '}';
    }
}
