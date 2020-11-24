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
public class User implements Serializable {
    /**
     * 用户ID
     */
    private Integer id;

    /**
     * 用户姓名
     */
    private String username;

    /**
     * 用户密码
     */
    private String password;

    /**
     * 用户邮箱
     */
    private String email;

    /**
     * 用户性别
     */
    private Byte sex;

    /**
     * 用户分组
     */
    private Byte group;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date create;

    /**
     * 辅助字段
     */
    private Integer field;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public User() {
    }

    /**
     * 完整构造方法
     */
    public User(Integer id, String username, String password, String email, Byte sex, Byte group, Date create, Integer field) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.sex = sex;
        this.group = group;
        this.create = create;
        this.field = field;
    }
//
//    @JsonCreator
//    public User(@JsonProperty("dnId") Integer id, @JsonProperty("dnId") String username, @JsonProperty("dnId") String password, @JsonProperty("dnId") String email,
//                @JsonProperty("dnId") Byte sex, @JsonProperty("dnId") Byte group, @JsonProperty("dnId") Date create, @JsonProperty("dnId") Integer field) {
//        this.id = id;
//        this.username = username;
//        this.password = password;
//        this.email = email;
//        this.sex = sex;
//        this.group = group;
//        this.create = create;
//        this.field = field;
//    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public Byte getGroup() {
        return group;
    }

    public void setGroup(Byte group) {
        this.group = group;
    }

    public Date getCreate() {
        return create;
    }

    public void setCreate(Date create) {
        this.create = create;
    }

    public Integer getField() {
        return field;
    }

    public void setField(Integer field) {
        this.field = field;
    }

    public void setMap(Map map) {
        if (map.containsKey("id")) {
            String value = map.get("id").toString();
            if(RegexUtil.isNumber(value)) {
                id = Integer.parseInt(value);
            }
        }
        if (map.containsKey("username")) {
            username = map.get("username").toString();
        }
        if (map.containsKey("password")) {
            password = map.get("password").toString();
        }
        if (map.containsKey("email")) {
            email = map.get("email").toString();
        }
        if (map.containsKey("sex")) {
            String value = map.get("sex").toString();
            if(RegexUtil.isNumber(value) && value.compareTo("127") <= 0) {
                sex = Byte.parseByte(value);
            }
        }
        if (map.containsKey("group")) {
            String value = map.get("group").toString();
            if(RegexUtil.isNumber(value) && value.compareTo("127") <= 0) {
                group = Byte.parseByte(value);
            }
        }
        if (map.containsKey("create")) {
            create = DateConverter.strToDate(map.get("create").toString());
        }
        if (map.containsKey("field")) {
            String value = map.get("field").toString();
            if(RegexUtil.isNumber(value)) {
                field = Integer.parseInt(value);
            }
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("id")) {
            if(RegexUtil.isNumber(json.getString("id"))) {
                id = json.getInteger("id");
            }
        }
        if (json.containsKey("username")) {
            username = json.getString("username");
        }
        if (json.containsKey("password")) {
            password = json.getString("password");
        }
        if (json.containsKey("email")) {
            email = json.getString("email");
        }
        if (json.containsKey("sex")) {
            String value = json.getString("sex");
            if(RegexUtil.isNumber(value) && value.compareTo("127") <= 0) {
                sex = Byte.parseByte(value);
            }
        }
        if (json.containsKey("group")) {
            String value = json.getString("group");
            if(RegexUtil.isNumber(value) && value.compareTo("127") <= 0) {
                group = Byte.parseByte(value);
            }
        }
        if (json.containsKey("create")) {
            create = DateConverter.strToDate(json.getString("create"));
        }
        if (json.containsKey("field")) {
            if(RegexUtil.isNumber(json.getString("field"))) {
                id = json.getInteger("field");
            }
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        if(id == null) {
            id = -1;
        }
        map.put("id", id);
        map.put("username", username);
        map.put("password", password);
        map.put("email", email);
        if(sex == null) {
            sex = 0;
        }
        map.put("sex", sex);
        if(group == null) {
            group = 0;
        }
        map.put("group", group);
        map.put("create", DateConverter.dateToStr(create));
        if(field == null) {
            field = -1;
        }
        map.put("field", field);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        if(id == null) {
            id = -1;
        }
        json.put("id", id);
        json.put("username", username);
        json.put("password", password);
        json.put("email", email);
        if(sex == null) {
            sex = 0;
        }
        json.put("sex", sex);
        if(group == null) {
            group = 0;
        }
        json.put("group", group);
        json.put("create", DateConverter.dateToStr(create));
        if(field == null) {
            field = -1;
        }
        json.put("field", field);

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
        User other = (User) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getUsername() == null ? other.getUsername() == null : this.getUsername().equals(other.getUsername()))
            && (this.getPassword() == null ? other.getPassword() == null : this.getPassword().equals(other.getPassword()))
            && (this.getEmail() == null ? other.getEmail() == null : this.getEmail().equals(other.getEmail()))
            && (this.getSex() == null ? other.getSex() == null : this.getSex().equals(other.getSex()))
            && (this.getGroup() == null ? other.getGroup() == null : this.getGroup().equals(other.getGroup()))
            && (this.getCreate() == null ? other.getCreate() == null : this.getCreate().equals(other.getCreate()))
            && (this.getField() == null ? other.getField() == null : this.getField().equals(other.getField()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getUsername() == null) ? 0 : getUsername().hashCode());
        result = prime * result + ((getPassword() == null) ? 0 : getPassword().hashCode());
        result = prime * result + ((getEmail() == null) ? 0 : getEmail().hashCode());
        result = prime * result + ((getSex() == null) ? 0 : getSex().hashCode());
        result = prime * result + ((getGroup() == null) ? 0 : getGroup().hashCode());
        result = prime * result + ((getCreate() == null) ? 0 : getCreate().hashCode());
        result = prime * result + ((getField() == null) ? 0 : getField().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", username=").append(username);
        sb.append(", password=").append(password);
        sb.append(", email=").append(email);
        sb.append(", sex=").append(sex);
        sb.append(", group=").append(group);
        sb.append(", create=").append(create);
        sb.append(", field=").append(field);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}