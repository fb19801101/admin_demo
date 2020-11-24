package com.excelkit;

import com.excelkit.validator.Validator;
import com.google.common.collect.Lists;

import java.util.List;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:42
 *
 * 通过实现com.wuwenze.poi.validator.Validator自定义单元格导入时的验证规则。
 */
public class UsernameValidator implements Validator {
    final List<String> ERROR_USERNAME_LIST = Lists.newArrayList(
            "admin", "root", "master", "administrator", "sb"
    );

    @Override
    public String valid(Object o) {
        String username = (String) o;
        if (username.length() > 12) {
            return "用户名不能超过12个字符。";
        }

        if (ERROR_USERNAME_LIST.contains(username)) {
            return "用户名非法，不允许使用。";
        }
        return null;
    }
}
