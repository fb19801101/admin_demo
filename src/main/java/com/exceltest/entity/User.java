package com.exceltest.entity;

import com.dateutil.DateConverter;
import com.dateutil.RegexUtil;
import com.excelkit.annotation.Excel;
import com.excelkit.annotation.ExcelField;
import com.exceltest.converter.FieldReadConverter;
import com.exceltest.converter.FieldWriteConverter;
import com.exceltest.converter.GroupReadConverter;
import com.exceltest.converter.GroupWriteConverter;
import com.exceltest.options.SexOptions;
import com.exceltest.options.GroupOptions;
import com.exceltest.validator.UserEmailValidator;
import com.exceltest.validator.UserNameValidator;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;
import java.util.Objects;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:38
 */
@Excel("用户信息")
public class User  implements Serializable {
    @ExcelField(value = "编号", width = 30)
    private Integer id;

    @ExcelField(
            value = "用户名",
            required = true,
            validator = UserNameValidator.class,
            comment = "请填写用户名，最大长度为20，且不能重复"
    )
    private String username;

    @ExcelField(
            value = "密码",
            required = true,
            maxLength = 20,
            comment = "请填写用户密码，最大长度为20，由数字、特殊字符和英文字符组成"
    )
    private String password;

    @ExcelField(value = "邮箱",validator = UserEmailValidator.class)
    private String email;

    @ExcelField(
            value = "性别",
            readConverterExp = "未知=0,男=1,女=2",
            writeConverterExp = "0=未知,1=男,2=女",
            options = SexOptions.class
    )
    private Integer sex;

    @ExcelField(
            value = "用户组",
            writeConverter = GroupWriteConverter.class,  // 写文件时，将数字转字符串
            readConverter = GroupReadConverter.class,     // 读文件时，将字符串转数字
            options = GroupOptions.class
    )
    private Group group;

    @ExcelField(value = "创建时间", dateFormat = "yyyy/MM/dd HH:mm:ss")
    private Date create;

    @ExcelField(
            value = "自定义字段",
            maxLength = 80,
            writeConverter = FieldWriteConverter.class,  // 写文件时，将数字转字符串
            readConverter = FieldReadConverter.class,     // 读文件时，将字符串转数字
            comment = "可以乱填，但是长度不能超过80，导入时最终会转换为数字"
    )
    private Integer field;

    private static final long serialVersionUID = 1L;

    public User() {
    }

    public User(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public User(Integer id, String username, String password, String email, Integer sex, Group group, Date create, Integer field) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.sex = sex;
        this.group = group;
        this.create = create;
        this.field = field;
    }

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

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
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
            if(RegexUtil.isNumber(value)) {
                sex = Integer.parseInt(value);
            }
        }
        if (map.containsKey("group")) {
            String value = map.get("group").toString();
            if(RegexUtil.isNumber(value)) {
                group = new Group(Integer.parseInt(value));
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

    public com.model.User toUser() {
        Byte _sex = sex != null && sex <= 127 ? Byte.parseByte(sex.toString()) : 0;
        Byte _group = group != null && group.getId() <= 127 ? Byte.parseByte(group.getId().toString()) : 0;
        return new com.model.User(id,username,password,email,_sex,_group,create,field);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        User user = (User) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(username, user.username) &&
                Objects.equals(password, user.password) &&
                Objects.equals(email, user.email) &&
                Objects.equals(sex, user.sex) &&
                Objects.equals(group, user.group) &&
                Objects.equals(create, user.create) &&
                Objects.equals(field, user.field);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, username, password, email, sex, group, create, field);
    }


    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("{");
        sb.append("id:").append(id);
        sb.append(", username:'").append(username).append('\'');
        sb.append(", password:'").append(password).append('\'');
        sb.append(", email:'").append(email).append('\'');
        sb.append(", sex:").append(sex);
        sb.append(", group:").append(group);
        sb.append(", create:").append(create);
        sb.append(", field:").append(field);
        sb.append('}');
        return sb.toString();
    }
}
