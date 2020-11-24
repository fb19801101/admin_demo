package com.excelkit;

import com.excelkit.handler.ExcelReadHandler;
import com.excelkit.pojo.ExcelErrorField;
import com.google.common.collect.Lists;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:45
 */
public class TestExcelKit {
    public void downTemplate(HttpServletResponse response) {
        List<User> userList = new ArrayList<>(); //)DbUtil.getUserList(3);
        ExcelKit.$Export(User.class, response).downXlsx(userList, true);
    }

    public ResponseEntity<?> importUser(@RequestParam MultipartFile file) throws IOException {
        long beginMillis = System.currentTimeMillis();

        List<User> successList = Lists.newArrayList();
        List<Map<String, Object>> errorList = Lists.newArrayList();

        ExcelKit.$Import(User.class)
            .readXlsx(file.getInputStream(), new ExcelReadHandler<User>() {

                @Override
                public void onSuccess(int sheetIndex, int rowIndex, User entity) {
                    successList.add(entity); // 单行读取成功，加入入库队列。
                }

                @Override
                public void onError(int sheetIndex, int rowIndex, List<ExcelErrorField> errorFields) {
                    // 读取数据失败，记录了当前行所有失败的数据
                    Map map = new HashMap<>();
                    map.put("sheetIndex", sheetIndex);
                    map.put("rowIndex", rowIndex);
                    map.put("errorFields", errorFields);
                    errorList.add(map);
                }
            });

        Map map = new HashMap<>();
        map.put("data", successList);
        map.put("haveError", errorList.size() > 0);
        map.put("error", errorList);
        map.put("timeConsuming", (System.currentTimeMillis() - beginMillis) / 1000L);

        return ResponseEntity.ok(map);
    }

    public void downXlsx(HttpServletResponse response) {
        long beginMillis = System.currentTimeMillis();
        List<User> userList = new ArrayList<>();//DbUtil.getUserList(100000);// 生成10w条测试数据
        ExcelKit.$Export(User.class, response).downXlsx(userList, false);
    }
}