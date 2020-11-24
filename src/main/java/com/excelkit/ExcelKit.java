/*
 * Copyright (c) 2018, 吴汶泽 (wenzewoo@gmail.com).
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.excelkit;

import com.excelkit.exception.ExcelKitRuntimeException;
import com.excelkit.factory.ExcelMappingFactory;
import com.excelkit.handler.ExcelReadHandler;
import com.excelkit.pojo.ExcelMapping;
import com.excelkit.util.Const;
import com.excelkit.util.POIUtil;
import com.excelkit.xlsx.ExcelXlsxReader;
import com.excelkit.xlsx.ExcelXlsxWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

/**
 * @author wuwenze
 */
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class ExcelKit {

  private Class<?> mClass = null;
  private HttpServletResponse mResponse = null;
  private OutputStream mOutputStream = null;
  private Integer mMaxSheetRecords = 50000;
  private String mCurrentOptionMode = ExcelKit.MODE_EXPORT;
  private final static String MODE_EXPORT = "$MODE_EXPORT$";
  private final static String MODE_BUILD = "$MODE_BUILD$";
  private final static String MODE_IMPORT = "$MODE_IMPORT$";

  /**
   * 使用此构造器来执行浏览器导出
   *
   * @param clazz 导出实体对象
   * @param response 原生 response 对象, 用于响应浏览器下载
   * @return ExcelKit obj.
   * @see ExcelKit#downXlsx(List, boolean)
   */
  public static ExcelKit $Export(Class<?> clazz, HttpServletResponse response) {
    return new ExcelKit(clazz, response);
  }

  public void downXlsx(List<?> data, boolean isTemplate) {
    if (!mCurrentOptionMode.equals(ExcelKit.MODE_EXPORT)) {
      throw new ExcelKitRuntimeException(
          "请使用com.wuwenze.poi.ExcelKit.$Export(Class<?> clazz, HttpServletResponse response)构造器初始化参数.");
    }
    try {
      ExcelMapping excelMapping = ExcelMappingFactory.get(mClass);
      ExcelXlsxWriter excelXlsxWriter = new ExcelXlsxWriter(excelMapping,
          mMaxSheetRecords);
      SXSSFWorkbook workbook = excelXlsxWriter.generateXlsxWorkbook(data, isTemplate);
      String fileName = isTemplate ? (excelMapping.getName() + "-导入模板.xlsx")
          : (excelMapping.getName() + "-导出结果.xlsx");
      POIUtil.download(workbook, mResponse, URLEncoder.encode(fileName, Const.ENCODING));
    } catch (Throwable e) {
      throw new ExcelKitRuntimeException("downXlsx error", e);
    }
  }


  /**
   * 使用此构造器来执行构建文件流.
   *
   * @param clazz 导出实体对象
   * @param outputStream 输出流
   * @return ExcelKit obj.
   * @see ExcelKit#writeXlsx(List, boolean)
   */
  public static ExcelKit $Builder(Class<?> clazz, OutputStream outputStream) {
    return new ExcelKit(clazz, outputStream);
  }

  public void writeXlsx(List<?> data, boolean isTemplate) {
    if (!mCurrentOptionMode.equals(ExcelKit.MODE_BUILD)) {
      throw new ExcelKitRuntimeException(
          "请使用com.wuwenze.poi.ExcelKit.$Builder(Class<?> clazz, OutputStream outputStream)构造器初始化参数.");
    }
    ExcelMapping excelMapping = ExcelMappingFactory.get(mClass);
    ExcelXlsxWriter excelXlsxWriter = new ExcelXlsxWriter(excelMapping,
        mMaxSheetRecords);
    SXSSFWorkbook workbook = excelXlsxWriter.generateXlsxWorkbook(data, isTemplate);
    POIUtil.write(workbook, mOutputStream);
  }

  /**
   * 使用此构造器来执行Excel文件导入.
   *
   * @param clazz 导出实体对象
   * @return ExcelKit obj.
   * @see ExcelKit#readXlsx(File, Integer, ExcelReadHandler)
   * @see ExcelKit#readXlsx(InputStream, Integer, ExcelReadHandler)
   * @see ExcelKit#readXlsx(File, ExcelReadHandler)
   * @see ExcelKit#readXlsx(InputStream, ExcelReadHandler)
   */
  public static ExcelKit $Import(Class<?> clazz) {
    return new ExcelKit(clazz);
  }


  public void readXlsx(File excelFile, ExcelReadHandler<?> excelReadHandler) {
    readXlsx(excelFile, -1, excelReadHandler);
  }

  public void readXlsx(File excelFile, Integer sheetIndex,
      ExcelReadHandler<?> excelReadHandler) {
    try {
      InputStream inputStream = new FileInputStream(excelFile);
      readXlsx(inputStream, sheetIndex, excelReadHandler);
    } catch (Throwable e) {
      throw new ExcelKitRuntimeException("readXlsx error", e);
    }
  }

  public void readXlsx(InputStream inputStream, ExcelReadHandler<?> excelReadHandler) {
    readXlsx(inputStream, -1, excelReadHandler);
  }

  public void readXlsx(InputStream inputStream, Integer sheetIndex,
      ExcelReadHandler<?> excelReadHandler) {
    if (!mCurrentOptionMode.equals(ExcelKit.MODE_IMPORT)) {
      throw new ExcelKitRuntimeException(
          "请使用ExcelKit.$Import(Class<?> clazz)构造器初始化参数.");
    }
    ExcelMapping excelMapping = ExcelMappingFactory.get(mClass);
    ExcelXlsxReader excelXlsxReader = new ExcelXlsxReader(mClass, excelMapping,
        excelReadHandler);
    if (sheetIndex >= 0) {
      excelXlsxReader.process(inputStream, sheetIndex);
      return;
    }
    excelXlsxReader.process(inputStream);
  }

  public ExcelKit setMaxSheetRecords(Integer mMaxSheetRecords) {
    this.mMaxSheetRecords = mMaxSheetRecords;
    return this;
  }

  protected ExcelKit(Class<?> clazz) {
    this(clazz, null, null);
    mCurrentOptionMode = ExcelKit.MODE_IMPORT;
  }

  protected ExcelKit(Class<?> clazz, OutputStream outputStream) {
    this(clazz, outputStream, null);
    mCurrentOptionMode = ExcelKit.MODE_BUILD;
  }

  protected ExcelKit(Class<?> clazz, HttpServletResponse response) {
    this(clazz, null, response);
    mCurrentOptionMode = ExcelKit.MODE_EXPORT;
  }

  protected ExcelKit(
      Class<?> clazz, OutputStream outputStream, HttpServletResponse response) {
    mClass = clazz;
    mOutputStream = outputStream;
    mResponse = response;
  }
}
