package com.model;

import java.io.Serializable;
import java.util.Objects;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-05-03 14:59
 */
public class LayUiPage implements Serializable {
    /**
     * 当前页
     */
    private Integer page = 1;
    /**
     * 页大小
     */
    private Integer rows = 10;
    /**
     * 总记录数
     */
    private Integer totalRecord;
    /**
     * 总页数
     */
    private Integer totalPage;
    /**
     * 关键字类型
     */
    private String keyType;
    /**
     * 查询关键字
     */
    private String keyWord;
    /**
     * 开始记录位置
     */
    private Integer start;
    /**
     * 用户id
     */
    private String userId;
    /**
     * 其他用户id
     */
    private String otherId;

    /**
     * 默认构造方法
     */
    public LayUiPage() {

    }

    /**
     * 完整构造方法
     */
    public LayUiPage(Integer page, Integer rows, Integer totalRecord, Integer totalPage, String keyType, String keyWord, Integer start, String userId, String otherId) {
        this.page = page;
        this.rows = rows;
        this.totalRecord = totalRecord;
        this.totalPage = totalPage;
        this.keyType = keyType;
        this.keyWord = keyWord;
        this.start = start;
        this.userId = userId;
        this.otherId = otherId;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(Integer totalRecord) {
        this.totalRecord = totalRecord;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public String getKeyType() {
        return keyType;
    }

    public void setKeyType(String keyType) {
        this.keyType = keyType;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOtherId() {
        return otherId;
    }

    public void setOtherId(String otherId) {
        this.otherId = otherId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LayUiPage layUiPage = (LayUiPage) o;
        return page.equals(layUiPage.page) &&
                rows.equals(layUiPage.rows) &&
                totalRecord.equals(layUiPage.totalRecord) &&
                totalPage.equals(layUiPage.totalPage) &&
                keyType.equals(layUiPage.keyType) &&
                keyWord.equals(layUiPage.keyWord) &&
                start.equals(layUiPage.start) &&
                userId.equals(layUiPage.userId) &&
                otherId.equals(layUiPage.otherId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(page, rows, totalRecord, totalPage, keyType, keyWord, start, userId, otherId);
    }

    @Override
    public String toString() {
        return "LayUiPage{" +
                "page=" + page +
                ", rows=" + rows +
                ", totalRecord=" + totalRecord +
                ", totalPage=" + totalPage +
                ", keyType='" + keyType + '\'' +
                ", keyWord='" + keyWord + '\'' +
                ", start=" + start +
                ", userId='" + userId + '\'' +
                ", otherId='" + otherId + '\'' +
                '}';
    }
}
