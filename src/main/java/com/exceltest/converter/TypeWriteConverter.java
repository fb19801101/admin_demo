package com.exceltest.converter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.dateutil.RegexUtil;
import com.excelkit.convert.WriteConverter;
import com.excelkit.exception.ExcelKitWriteConverterException;
import com.exceltest.entity.Group;
import com.exceltest.options.TypeOptions;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:43
 *
 * 实现com.wuwenze.poi.convert.WriteConverter以及com.wuwenze.poi.convert.ReadConverter单元格读写转换器。
 */
public class TypeWriteConverter implements WriteConverter {

    /**
     * 写文件时，将值进行转换（此处示例为将数值拼接为指定格式的字符串）
     */
    @Override
    public String convert(Object o) throws ExcelKitWriteConverterException {
        String[] value = new TypeOptions().get();
        String id = o.toString();
        if(RegexUtil.isNumber(id)) {
            return value[Integer.parseInt(id)];
        }

        return value[0];
    }
}
