package com.exceltest.options;

import com.excelkit.config.Options;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:50
 */
public class SexOptions implements Options {

    @Override
    public String[] get() {
        return new String[]{"未知", "男", "女"};
    }
}
