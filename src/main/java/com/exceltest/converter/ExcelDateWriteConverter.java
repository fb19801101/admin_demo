package com.exceltest.converter;

import com.dateutil.DateConverter;
import com.dateutil.RegexUtil;
import com.excelkit.convert.WriteConverter;
import com.excelkit.exception.ExcelKitWriteConverterException;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;

import java.util.Date;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:43
 *
 * 实现com.wuwenze.poi.convert.WriteConverter以及com.wuwenze.poi.convert.ReadConverter单元格读写转换器。
 */
public class ExcelDateWriteConverter implements WriteConverter {

    /**
     * 写文件时，将值进行转换（此处示例为将数值拼接为指定格式的字符串）
     */
    @Override
    public String convert(Object o) throws ExcelKitWriteConverterException {
        if(RegexUtil.isNumber(o.toString())) {
            Double value = Double.parseDouble(o.toString());
            Date date = HSSFDateUtil.getJavaDate(Double.valueOf(value));
//            DateTime base = DateConverter.strToDateTime("1970-01-01");
//            DateTime dateTime = DateConverter.dateTimePlusDays(base,value-25569.0);
//            return DateConverter.dateTimeToStr(dateTime);
            return DateConverter.dateToStr(date);
        }

        return o.toString();
    }

    public String strDate(Double value) {
        Date date = HSSFDateUtil.getJavaDate(value);
        return DateConverter.dateToStr(date);
    }

    public String strDate(Double value, String format) {
        Date date = HSSFDateUtil.getJavaDate(value);
        return DateConverter.dateToStr(date, format);
    }

    public Double dblDate(String value) {
        Date date = DateConverter.strToDate(value);
        return HSSFDateUtil.getExcelDate(date);
    }
}
