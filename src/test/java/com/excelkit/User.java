package com.excelkit;

import com.excelkit.annotation.ExcelField;

import java.util.Date;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:38
 */
public class User {
    @ExcelField(value = "编号", width = 30)
    private Integer userId;

    @ExcelField(
            value = "用户名",
            required = true,
            validator = UsernameValidator.class,
            comment = "请填写用户名，最大长度为12，且不能重复"
    )
    private String username;

    @ExcelField(value = "密码", required = true, maxLength = 32)
    private String password;

    @ExcelField(value = "邮箱", validator = UserEmailValidator.class)
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
            name = "userGroup.name",
            options = UserGroupNameOptions.class
    )
    private UserGroup userGroup;

    @ExcelField(value = "创建时间", dateFormat = "yyyy/MM/dd HH:mm:ss")
    private Date createAt;

    @ExcelField(
            value = "自定义字段",
            maxLength = 80,
            comment = "可以乱填，但是长度不能超过80，导入时最终会转换为数字",
            writeConverter = CustomizeFieldWriteConverter.class,// 写文件时，将数字转字符串
            readConverter = CustomizeFieldReadConverter.class// 读文件时，将字符串转数字
    )
    private Integer customizeField;
}
