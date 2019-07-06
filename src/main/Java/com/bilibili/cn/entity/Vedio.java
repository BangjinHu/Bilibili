package com.bilibili.cn.entity;

public class Vedio {

    private Integer vedioId;
    private String vedioName;
    private String vedioImage;
    private String vedioAddr;
    private Integer lookTime;//视频时长
    private String vedioCollection;//收藏
    private String vedioLeaving;//视频留言
    private Integer vedioState;//视频状态
    private Integer vedioAtegory;//视频分类

    public Integer getVedioId() {
        return vedioId;
    }

    public void setVedioId(Integer vedioId) {
        this.vedioId = vedioId;
    }

    public String getVedioName() {
        return vedioName;
    }

    public void setVedioName(String vedioName) {
        this.vedioName = vedioName;
    }

    public String getVedioImage() {
        return vedioImage;
    }

    public void setVedioImage(String vedioImage) {
        this.vedioImage = vedioImage;
    }

    public String getVedioAddr() {
        return vedioAddr;
    }

    public void setVedioAddr(String vedioAddr) {
        this.vedioAddr = vedioAddr;
    }

    public Integer getLookTime() {
        return lookTime;
    }

    public void setLookTime(Integer lookTime) {
        this.lookTime = lookTime;
    }

    public String getVedioCollection() {
        return vedioCollection;
    }

    public void setVedioCollection(String vedioCollection) {
        this.vedioCollection = vedioCollection;
    }

    public String getVedioLeaving() {
        return vedioLeaving;
    }

    public void setVedioLeaving(String vedioLeaving) {
        this.vedioLeaving = vedioLeaving;
    }

    public Integer getVedioState() {
        return vedioState;
    }

    public void setVedioState(Integer vedioState) {
        this.vedioState = vedioState;
    }

    public Integer getVedioAtegory() {
        return vedioAtegory;
    }

    public void setVedioAtegory(Integer vedioAtegory) {
        this.vedioAtegory = vedioAtegory;
    }

    @Override
    public String toString() {
        return "Vedio{" + "vedioId=" + vedioId + ", vedioName='" + vedioName + '\'' + ", vedioImage='" + vedioImage + '\'' + ", vedioAddr='" + vedioAddr + '\'' + ", lookTime=" + lookTime + ", vedioCollection='" + vedioCollection + '\'' + ", vedioLeaving='" + vedioLeaving + '\'' + ", vedioState=" + vedioState + ", vedioAtegory=" + vedioAtegory + '}';
    }
}
