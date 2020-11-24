package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.DateConverter;
import com.dateutil.RegexUtil;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 
 * 
 */
public class SystemLog implements Serializable {
    /**
     * 日志ID
     */
    private Integer id;

    /**
     * 日志编码
     */
    private String code;

    /**
     * 日志描述
     */
    private String description;

    /**
     * 日志方法
     */
    private String method;

    /**
     * 日志类型
     */
    private Long type;

    /**
     * 日志请求
     */
    private String request;

    /**
     * 日志异常
     */
    private String exception;

    /**
     * 日志参数
     */
    private String params;

    /**
     * 日志作者
     */
    private String author;

    /**
     * 日志日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date date;

    /**
     * 日志备注
     */
    private String info;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public SystemLog() {
    }

    /**
     * 完整构造方法
     */
    public SystemLog(Integer id, String code, String description, String method, Long type, String request,
                     String exception, String params, String author, Date date, String info) {
        this.id = id;
        this.code = code;
        this.description = description;
        this.method = method;
        this.type = type;
        this.request = request;
        this.exception = exception;
        this.params = params;
        this.author = author;
        this.date = date;
        this.info = info;
    }

//    @JsonCreator
//    public SystemLog(@JsonProperty("id") Integer id, @JsonProperty("code") String code, @JsonProperty("description") String description, @JsonProperty("method") String method, @JsonProperty("type") Long type, @JsonProperty("request") String request,
//                     @JsonProperty("exception") String exception, @JsonProperty("params") String params, @JsonProperty("author") String author, @JsonProperty("date") Date date, @JsonProperty("info") String info) {
//        this.id = id;
//        this.code = code;
//        this.description = description;
//        this.method = method;
//        this.type = type;
//        this.request = request;
//        this.exception = exception;
//        this.params = params;
//        this.author = author;
//        this.date = date;
//        this.info = info;
//    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Long getType() {
        return type;
    }

    public void setType(Long type) {
        this.type = type;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getException() {
        return exception;
    }

    public void setException(String exception) {
        this.exception = exception;
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("id")) {
            id = Integer.parseInt(_value);
        }
        if (field.equals("description")) {
            description = _value;
        }
        if (field.equals("method")) {
            method = _value;
        }
        if (field.equals("type")) {
            type = Long.parseLong(_value);
        }
        if (field.equals("request")) {
            request = _value;
        }
        if (field.equals("code")) {
            code = _value;
        }
        if (field.equals("exception")) {
            exception = _value;
        }
        if (field.equals("params")) {
            params = _value;
        }
        if (field.equals("author")) {
            author = _value;
        }
        if (field.equals("date")) {
            date = DateConverter.strToDate(_value);
        }
        if (field.equals("info")) {
            info = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("id")) {
            String value = map.get("id").toString();
            if(RegexUtil.isNumber(value)) {
                id = Integer.parseInt(value);
            }
        }
        if (map.containsKey("description")) {
            description = map.get("description").toString();
        }
        if (map.containsKey("method")) {
            method = map.get("method").toString();
        }
        if (map.containsKey("type")) {
            String value = map.get("type").toString();
            if(RegexUtil.isNumber(value)) {
                type = Long.parseLong(value);
            }
        }
        if (map.containsKey("request")) {
            request = map.get("request").toString();
        }
        if (map.containsKey("code")) {
            code = map.get("code").toString();
        }
        if (map.containsKey("exception")) {
            exception = map.get("exception").toString();
        }
        if (map.containsKey("params")) {
            params = map.get("params").toString();
        }
        if (map.containsKey("author")) {
            author = map.get("author").toString();
        }
        if (map.containsKey("date")) {
            date = DateConverter.strToDate(map.get("date").toString());
        }
        if (map.containsKey("info")) {
            info = map.get("info").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("id")) {
            if(RegexUtil.isNumber(json.getString("id"))) {
                id = json.getInteger("id");
            }
        }
        if (json.containsKey("description")) {
            description = json.getString("description");
        }
        if (json.containsKey("method")) {
            method = json.getString("method");
        }
        if (json.containsKey("type")) {
            if(RegexUtil.isNumber(json.getString("type"))) {
                type = json.getLong("type");
            }
        }
        if (json.containsKey("request")) {
            request = json.getString("request");
        }
        if (json.containsKey("code")) {
            code = json.getString("code");
        }
        if (json.containsKey("exception")) {
            exception = json.getString("exception");
        }
        if (json.containsKey("params")) {
            params = json.getString("params");
        }
        if (json.containsKey("author")) {
            author = json.getString("author");
        }
        if (json.containsKey("date")) {
            date = DateConverter.strToDate(json.getString("date"));
        }
        if (json.containsKey("info")) {
            info = json.getString("info");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        if(id == null) {
            id = -1;
        }
        map.put("id", id);
        map.put("description", description);
        map.put("method", method);
        if(type == null) {
            type = -1L;
        }
        map.put("type", type);
        map.put("request", request);
        map.put("code", code);
        map.put("exception", exception);
        map.put("params", params);
        map.put("author", author);
        map.put("date", DateConverter.dateToStr(date));
        map.put("info", info);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        if(id == null) {
            id = -1;
        }
        json.put("id", id);
        json.put("description", description);
        json.put("method", method);
        if(type == null) {
            type = -1L;
        }
        json.put("type", type);
        json.put("request", request);
        json.put("code", code);
        json.put("exception", exception);
        json.put("params", params);
        json.put("author", author);
        json.put("date", DateConverter.dateToStr(date));
        json.put("info", info);

        return json;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        SystemLog other = (SystemLog) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getDescription() == null ? other.getDescription() == null : this.getDescription().equals(other.getDescription()))
            && (this.getMethod() == null ? other.getMethod() == null : this.getMethod().equals(other.getMethod()))
            && (this.getType() == null ? other.getType() == null : this.getType().equals(other.getType()))
            && (this.getRequest() == null ? other.getRequest() == null : this.getRequest().equals(other.getRequest()))
            && (this.getCode() == null ? other.getCode() == null : this.getCode().equals(other.getCode()))
            && (this.getException() == null ? other.getException() == null : this.getException().equals(other.getException()))
            && (this.getParams() == null ? other.getParams() == null : this.getParams().equals(other.getParams()))
            && (this.getAuthor() == null ? other.getAuthor() == null : this.getAuthor().equals(other.getAuthor()))
            && (this.getDate() == null ? other.getDate() == null : this.getDate().equals(other.getDate()))
            && (this.getInfo() == null ? other.getInfo() == null : this.getInfo().equals(other.getInfo()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getDescription() == null) ? 0 : getDescription().hashCode());
        result = prime * result + ((getMethod() == null) ? 0 : getMethod().hashCode());
        result = prime * result + ((getType() == null) ? 0 : getType().hashCode());
        result = prime * result + ((getRequest() == null) ? 0 : getRequest().hashCode());
        result = prime * result + ((getCode() == null) ? 0 : getCode().hashCode());
        result = prime * result + ((getException() == null) ? 0 : getException().hashCode());
        result = prime * result + ((getParams() == null) ? 0 : getParams().hashCode());
        result = prime * result + ((getAuthor() == null) ? 0 : getAuthor().hashCode());
        result = prime * result + ((getDate() == null) ? 0 : getDate().hashCode());
        result = prime * result + ((getInfo() == null) ? 0 : getInfo().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", description=").append(description);
        sb.append(", method=").append(method);
        sb.append(", type=").append(type);
        sb.append(", request=").append(request);
        sb.append(", code=").append(code);
        sb.append(", exception=").append(exception);
        sb.append(", params=").append(params);
        sb.append(", author=").append(author);
        sb.append(", date=").append(date);
        sb.append(", info=").append(info);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}