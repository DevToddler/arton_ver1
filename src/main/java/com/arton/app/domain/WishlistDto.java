package com.arton.app.domain;

public class WishlistDto {
    private Integer id;
    private Integer userIdx;
    private Integer perfId;
    private Integer liked;

    public WishlistDto() {}

    public WishlistDto(Integer id, Integer userIdx, Integer perfId, Integer liked) {
        this.id = id;
        this.userIdx = userIdx;
        this.perfId = perfId;
        this.liked = liked;
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

    public Integer getLiked() {
        return liked;
    }

    public void setLiked(Integer liked) {
        this.liked = liked;
    }

    @Override
    public String toString() {
        return "WishlistDto{" + "id=" + id + ", userIdx=" + userIdx + ", perfId=" + perfId + ", liked=" + liked + '}';
    }
}
