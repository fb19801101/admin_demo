package com.controller;

import com.dateutil.CoordinateCalculate;
import com.dateutil.DateConverter;
import com.excelkit.ExcelKit;
import com.excelkit.handler.ExcelReadHandler;
import com.excelkit.pojo.ExcelErrorField;
import com.google.common.collect.Lists;
import com.model.CurveElement;
import com.model.LayuiData;
import com.service.CurveElementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-10-30 7:56
 */
@Controller
@RequestMapping("software")
public class SoftwareController {
    @Autowired
    private CurveElementService curveElementService;

    @RequestMapping("toolMeasure")
    public ModelAndView toMeasure(HttpServletRequest request, HttpServletResponse response) {
        Map mapMsg = new HashMap<>();
        Map elem = new HashMap<>();
        elem.put("JD","JD001");
        elem.put("DK","DK000");
        elem.put("NX","123456.1234");
        elem.put("EY","123456.1234");
        mapMsg.put("elem", elem);
        return new ModelAndView("software/measure", "message",mapMsg);
    }

    @RequestMapping("insertCurveElementBody")
    public @ResponseBody LayuiData insertCurveElementBody(CurveElement curveElement) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        int code = 0;
        String jd = curveElement.getCeJd();
        if(jd != null && jd.length() > 0) {
            Integer id = curveElementService.getPrimaryKeyByQxAndJd(curveElement.getCeQx(), curveElement.getCeJd());
            if(id == null) {
                Integer ceId = 0;
                CurveElement _curveElement = curveElementService.getCurveElementByMaxId();
                if (_curveElement != null) {
                    ceId = _curveElement.getCeId() + 1;
                } else {
                    ceId = 1;
                }

                curveElement.setCeId(ceId);
                code = curveElementService.insertCurveElement(curveElement);
            }
        }
        return new LayuiData(code, curveElement, 1);
    }

    @RequestMapping("modifyCurveElementBody")
    public @ResponseBody LayuiData modifyCurveElementBody(CurveElement curveElement) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        int id = curveElementService.getPrimaryKeyByQxAndJd(curveElement.getCeQx(), curveElement.getCeJd());
        curveElement.setCeId(id);
        return new LayuiData(curveElementService.setCurveElementById(curveElement), curveElement, 1);
    }

    @RequestMapping("deleteCurveElementBody")
    public @ResponseBody LayuiData deleteCurveElementBody(String ceQx, String ceJd) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        Integer id = curveElementService.getPrimaryKeyByQxAndJd(ceQx, ceJd);
        return new LayuiData(id==null?0:curveElementService.delCurveElementById(id),null,0);
    }

    @RequestMapping("clearCurveElementBody")
    public @ResponseBody LayuiData clearCurveElementBody() {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        curveElementService.delAllCurveElement();
        List list = curveElementService.getAllCurveElement();
        long count = curveElementService.countAllCurveElement();
        return new LayuiData(0, list, count);
    }

    @RequestMapping("selectCurveLineBody")
    public @ResponseBody LayuiData selectCurveLineBody() {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<String> list = curveElementService.getCurveLine();
        return new LayuiData(0, list, list.size());
    }

    @RequestMapping("searchAllCurveElementBody")
    public @ResponseBody LayuiData searchAllCurveElementBody() {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List list = curveElementService.getAllCurveElement();
        long count = curveElementService.countAllCurveElement();
        return new LayuiData(0, list, count);
    }

    @RequestMapping("searchCurveElementBody")
    public @ResponseBody LayuiData searchCurveElementBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List list = curveElementService.queryCurveElementByCondition(field, value, page, limit);
        long count = curveElementService.countCurveElementByQueryCondition(field, value);
        return new LayuiData(0, list, count);
    }

    @RequestMapping("initCurveElementBody")
    public @ResponseBody LayuiData initCurveElementBody(String ceQx, Double dk_begin, Double dk_end) {
        //        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<CurveElement>  list = curveElementService.getCurveElementByQx(ceQx);
        long count = curveElementService.countAllCurveElement();
        CoordinateCalculate.calculate_Point_DK(list, dk_begin, dk_end);
        CoordinateCalculate.calculate_Point_XY(list, dk_begin, dk_end);
        CoordinateCalculate.calculate_fwj_pj(list);
        CoordinateCalculate.calculate_A_E_L(list);
        for(CurveElement x:list) {
            curveElementService.setCurveElementById(x);
        }

        return new LayuiData(0, list, count);
    }

    @RequestMapping("calculateCoordinateBody")
    public @ResponseBody LayuiData calculateCoordinateBody(Integer action, String ceQx, Double dk_begin_break, Double dk_end_break, String dk_label_break,
                                                           Double dk_begin, Double dk_end, Double dk_gap, Double dk_dist,
                                                           Integer xy_Tp, Double xy_L0, Double xy_H0) {
        //        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<CurveElement>  list = curveElementService.getCurveElementByQx(ceQx);
        List<Map> maps = CoordinateCalculate.calculate_Curve_XYS(list, dk_begin, dk_end, dk_gap, dk_dist, dk_begin_break, dk_end_break);
        for(Map x:maps) {
            String prefix = ceQx.substring(0,ceQx.indexOf("K"));
            double _dk = Double.parseDouble(x.get("dk").toString());
            x.put("dkS", DateConverter.formatStat(_dk,1,prefix,_dk>dk_end_break?dk_label_break:""));
            double _x = Double.parseDouble(x.get("x").toString());
            double _y = Double.parseDouble(x.get("y").toString());
            x.put("dkX", String.format("%.4f",_x));
            x.put("dkY", String.format("%.4f",_y));
            if(action == 0) {
                x.put("dkD", dk_dist);
            } else if(action==1) {
                double[] xys = CoordinateCalculate.transform_Curve_XY(_x, _y, xy_Tp==null?1:xy_Tp, xy_L0==null?0:xy_L0, xy_H0==null?0:xy_H0);
                x.put("dkL", String.format("%.10f",xys[0]));
                x.put("dkN", String.format("%.10f",xys[1]));
            }
        }

        return new LayuiData(0, maps, maps.size());
    }

    @RequestMapping("exportExcelCurveElement")
    public void exportExcelCurveElement(HttpServletResponse response) {
        List<CurveElement> list = curveElementService.getAllCurveElement();

        ExcelKit.$Export(CurveElement.class, response).downXlsx(list, true);
    }

    @RequestMapping(value="importExcelCurveElement")
    public ResponseEntity<?> importExcelCurveElement(MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException {
        long beginMillis = System.currentTimeMillis();
        InputStream iStream = file.getInputStream();

        List<CurveElement> successList = Lists.newArrayList();
        List<Map<String, Object>> errorList = Lists.newArrayList();

        ExcelKit.$Import(CurveElement.class)
                .readXlsx(iStream, new ExcelReadHandler<CurveElement>() {

                    @Override
                    public void onSuccess(int sheetIndex, int rowIndex, CurveElement entity) {
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

        String path = request.getServletContext().getRealPath("/")+"res/upload/";
        String originalFilename = file.getOriginalFilename();
        file.transferTo(new File(path,originalFilename));

        for(int i=0; i<successList.size(); i++) {
            CurveElement entity = successList.get(i);
            Integer id = curveElementService.getPrimaryKeyByQxAndJd(entity.getCeQx(), entity.getCeJd());
            if(id == null) {
                Integer ceId = 0;
                CurveElement curveElement = curveElementService.getCurveElementByMaxId();
                if (curveElement != null) {
                    ceId = curveElement.getCeId() + 1;
                } else {
                    ceId = 1;
                }

                entity.setCeId(ceId);

                curveElementService.insertCurveElement(entity);
            }
        }

        Map map = new HashMap<>();
        map.put("code", 0);
        map.put("msg", "上传成功");
        map.put("data", successList);
        map.put("count", successList.size());
        map.put("filePath", path+originalFilename);
        map.put("haveError", errorList.size() > 0);
        map.put("error", errorList);
        map.put("timeConsuming", (System.currentTimeMillis() - beginMillis) / 1000L);

        return ResponseEntity.ok(map);
    }
}
