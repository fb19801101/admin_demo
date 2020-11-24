package com.exceltest.options;

import com.excelkit.config.Options;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:41
 *
 * 通过实现com.wuwenze.poi.config.Options自定义导入模板的下拉框数据源
 */
public class GroupOptions implements Options {

    @Override
    public String[] get() {
        return new String[]{"管理组", "普通会员组", "游客"};
    }
}
