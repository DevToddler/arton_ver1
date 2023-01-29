package com.arton.app.domain;

public class PerfDetailDto {
    private Integer id;
    private Integer perfId;
    private Integer detailIndex;
    private String detailPath;
    private String detailPathDb;


    public PerfDetailDto() {}

    public PerfDetailDto(Integer id, Integer perfId, Integer detailIndex, String detailPath, String detailPathDb) {
        this.id = id;
        this.perfId = perfId;
        this.detailIndex = detailIndex;
        this.detailPath = detailPath;
        this.detailPathDb = detailPathDb;
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

    public Integer getDetailIndex() {
        return detailIndex;
    }

    public void setDetailIndex(Integer detailIndex) {
        this.detailIndex = detailIndex;
    }

    public String getDetailPath() {
        return detailPath;
    }

    public void setDetailPath(String detailPath) {
        this.detailPath = detailPath;
    }

    public String getDetailPathDb() {
        return detailPathDb;
    }

    public void setDetailPathDb(String detailPathDb) {
        this.detailPathDb = detailPathDb;
    }

    @Override
    public String toString() {
        return "PerfDetailDto{" + "id=" + id + ", perfId=" + perfId + ", detailIndex=" + detailIndex + ", detailPath='" + detailPath + '\'' + ", detailPathDb='" + detailPathDb + '\'' + '}';
    }
}
