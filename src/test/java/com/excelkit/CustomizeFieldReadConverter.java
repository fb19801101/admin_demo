package com.excelkit;

import com.excelkit.convert.ReadConverter;
import com.excelkit.exception.ExcelKitReadConverterException;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:44
 *
 * 实现com.wuwenze.poi.convert.WriteConverter以及com.wuwenze.poi.convert.ReadConverter单元格读写转换器。
 */
public class CustomizeFieldReadConverter implements ReadConverter {

    /**
     * 读取单元格时，将值进行转换（此处示例为计算单元格字符串char的总和）
     */
    @Override
    public Object convert(Object o) throws ExcelKitReadConverterException {
        String value = (String) o;

        int convertedValue = 0;
        for (char c : value.toCharArray()) {
            convertedValue += Integer.valueOf(c);
        }
        return convertedValue;
    }
}
