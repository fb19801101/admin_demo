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

package com.excelkit.convert;

import com.excelkit.exception.ExcelKitReadConverterException;

/**
 * @author wuwenze
 */
public interface ReadConverter {

  /**
   * 将value转换成指定的值, 读取时映射到实体中
   *
   * @param value 当前单元格的值
   * @return 转换后的值
   */
  Object convert(Object value) throws ExcelKitReadConverterException;
}
