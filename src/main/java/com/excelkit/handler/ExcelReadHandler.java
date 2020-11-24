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

package com.excelkit.handler;

import com.excelkit.pojo.ExcelErrorField;
import java.util.List;

/**
 * @author wuwenze
 */
public interface ExcelReadHandler<T> {

  void onSuccess(int sheetIndex, int rowIndex, T entity);

  void onError(int sheetIndex, int rowIndex, List<ExcelErrorField> errorFields);
}
