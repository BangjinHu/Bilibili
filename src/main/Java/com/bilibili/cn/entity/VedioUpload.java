package com.bilibili.cn.entity;

public class VedioUpload {

    private String fileName;//文件名称
    private Integer fileSize;//文件大小
    private Integer fileLeave;//视频剩余上传大小
    private Integer state;//视频上传状态，是否上传成功
    private Integer ratio;//视频上传百分比

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Integer getFileSize() {
        return fileSize;
    }

    public void setFileSize(Integer fileSize) {
        this.fileSize = fileSize;
    }

    public Integer getFileLeave() {
        return fileLeave;
    }

    public void setFileLeave(Integer fileLeave) {
        this.fileLeave = fileLeave;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getRatio() {
        return ratio;
    }

    public void setRatio(Integer ratio) {
        this.ratio = ratio;
    }

    @Override
    public String toString() {
        return "VedioUpload{" + "fileName='" + fileName + '\'' + ", fileSize=" + fileSize + ", fileLeave=" + fileLeave + ", state=" + state + ", ratio=" + ratio + '}';
    }
}
