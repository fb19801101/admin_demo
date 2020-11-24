package com.exceltest.validator;

import com.excelkit.validator.Validator;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:49
 */
public class UserEmailValidator implements Validator {
    @Override
    public String valid(Object o) {
        String email = (String) o;
        if(email.indexOf("@") == -1){
            return "输入错误，没有@";
        }
        if(email.indexOf("@") != email.lastIndexOf("@")){
            return "输入错误。多个@";
        }
        if(email.indexOf(".") == -1){
            return "输入错误没有” .";
        }
        if(email.indexOf("@") > email.indexOf(".")){
            return "输入的字符串中@，没有在.之前";
        }
        if(email.startsWith("@")){
            return "输入的字符串@在第一位";
        }
        if(email.endsWith(".")){
            return "输入点不能在最后一位";
        }
        if(email.indexOf("@.") != -1){
            return "输入邮箱错误";
        }

        return null;
    }
}
