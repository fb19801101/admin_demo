package com.model;

import com.alibaba.fastjson.JSONObject;
import com.dateutil.RegexUtil;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @author
 * 登录信息表
 */
public class Login implements Serializable {
    /**
     * 用户ID
     */
    private Integer id;
    /**
     * 用户简称
     */
    private String name;
    /**
     * 用户名称
     */
    private String username;
    /**
     * 用户密码
     */
    private String password;

    private static final long serialVersionUID = 1L;

    /**
     * 默认构造方法
     */
    public Login() {
    }

    /**
     * 部分构造方法
     */
    public Login(String username, String password) {
        this.username = username;
        this.password = password;
    }

    /**
     * 完整构造方法
     */
    public Login(Integer id, String name, String username, String password) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
    }
//    @JsonCreator
//    public Login(@JsonProperty("id") Integer id, @JsonProperty("name") String name,
//                 @JsonProperty("username") String username, @JsonProperty("password") String password) {
//        this.id = id;
//        this.name = name;
//        this.username = username;
//        this.password = password;
//    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public void setField(String field, Object value) {
        String _value = value.toString();
        if (field.equals("id")) {
            id = Integer.parseInt(_value);
        }
        if (field.equals("name")) {
            name = _value;
        }
        if (field.equals("username")) {
            username = _value;
        }
        if (field.equals("password")) {
            password = _value;
        }
    }

    public void setMap(Map map) {
        if (map.containsKey("id")) {
            String value = map.get("id").toString();
            if(RegexUtil.isNumber(value)) {
                id = Integer.parseInt(value);
            }
        }
        if (map.containsKey("name")) {
            name = map.get("name").toString();
        }
        if (map.containsKey("username")) {
            username = map.get("username").toString();
        }
        if (map.containsKey("password")) {
            password = map.get("password").toString();
        }
    }

    public void setJson(JSONObject json) {
        if (json.containsKey("id")) {
            if(RegexUtil.isNumber(json.getString("id"))) {
                id = json.getInteger("id");
            }
        }
        if (json.containsKey("name")) {
            name = json.getString("name");
        }
        if (json.containsKey("username")) {
            username = json.getString("username");
        }
        if (json.containsKey("password")) {
            password = json.getString("password");
        }
    }

    public Map toMap() {
        Map map = new HashMap<>();
        if(id == null) {
            id = -1;
        }
        map.put("id", id);
        map.put("name", name);
        map.put("username", username);
        map.put("password", password);

        return map;
    }

    public JSONObject toJson() {
        JSONObject json = new JSONObject();
        if(id == null) {
            id = -1;
        }
        json.put("id", id);
        json.put("name", name);
        json.put("username", username);
        json.put("password", password);

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
        Login other = (Login) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
            && (this.getUsername() == null ? other.getUsername() == null : this.getUsername().equals(other.getUsername()))
            && (this.getPassword() == null ? other.getPassword() == null : this.getPassword().equals(other.getPassword()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
        result = prime * result + ((getUsername() == null) ? 0 : getUsername().hashCode());
        result = prime * result + ((getPassword() == null) ? 0 : getPassword().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", username=").append(username);
        sb.append(", password=").append(password);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}