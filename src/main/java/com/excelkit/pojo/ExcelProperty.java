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

package com.excelkit.pojo;

import com.excelkit.config.Options;
import com.excelkit.convert.ReadConverter;
import com.excelkit.convert.WriteConverter;
import com.excelkit.validator.Validator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author wuwenze
 */
@Data
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ExcelProperty {

  private String name;
  private String column;
  private Boolean required;
  private Short width;
  private String comment;
  private Integer maxLength;
  private String dateFormat;
  private Options options;
  private String writeConverterExp;
  private WriteConverter writeConverter;
  private String readConverterExp;
  private ReadConverter readConverter;
  private String regularExp;
  private String regularExpMessage;
  private Validator validator;
}
