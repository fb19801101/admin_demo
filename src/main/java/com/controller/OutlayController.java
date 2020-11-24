package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dateutil.EncodeUtil;
import com.dateutil.JsonUtil;
import com.model.*;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-04-01 15:50
 */
@Controller
@RequestMapping("outlay")
public class OutlayController {
    @Autowired
    private OutlayService outlayService;

    @RequestMapping("toOutlay")
    public ModelAndView toOutlay(HttpServletRequest request, HttpServletResponse response) {
        long count = outlayService.countOutlayByQueryCondition("o_code", null);
        return new ModelAndView("outlay/outlay", "count",count);
    }

    @RequestMapping("outlayIframe")
    public ModelAndView outlayIframe(HttpServletRequest request, HttpServletResponse response) {

        return new ModelAndView("outlay/outlay_iframe", "message",null);
    }

    @RequestMapping("insertOutlay")
    public ModelAndView insertOutlay(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String oCode = request.getParameter("oCode");
        JSONObject json = JsonUtil.readRequestParameters(request);

        HashMap mapMsg = new HashMap();
        if(oCode != null && oCode.length() > 0) {
            Outlay outlay = outlayService.getOutlayByCode(oCode);

            if (outlay != null) {
                Outlay _outlay = outlayService.getOutlayByMaxCode();
                String _oCode = "";
                if (_outlay != null) {
                    _oCode = _outlay.getoCode();
                    Integer id = Integer.parseInt(_oCode.substring(1))+1;
                    _oCode = String.format("I%4d",id);
                } else {
                    _oCode = oCode;
                }

                outlay.setJson(json);
                outlay.setoCode(_oCode);
                outlayService.insertOutlay(outlay);

                mapMsg.put("outlay", outlay);
                mapMsg.put("msg", "工程数量 "+_oCode+" 基本信息数据录入成功!");
                return new ModelAndView("outlay/outlay_insert", "message", mapMsg);
            } else {
                mapMsg.put("outlay", outlay);
                mapMsg.put("msg", "项目名称 "+oCode+" 基本信息数据已经录入，请重新输入!");
                return new ModelAndView("outlay/outlay_insert", "message", mapMsg);
            }
        }

        mapMsg.put("msg", "项目名称不能为空，请重新输入!");
        return new ModelAndView("outlay/outlay_insert", "message", mapMsg);
    }

    @RequestMapping("insertOutlayBody")
    public @ResponseBody LayuiData insertOutlayBody(Outlay outlay) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        int code = 0;
        String oCode = outlay.getoCode();
        if(oCode != null && oCode.length() > 0) {
            Outlay _outlay = outlayService.getOutlayByCode(oCode);

            if (_outlay == null) {
                _outlay = outlayService.getOutlayByMaxCode();
                String _oCode = "";
                if (_outlay != null) {
                    _oCode = _outlay.getoCode();
                    Integer id = Integer.parseInt(_oCode.substring(1))+1;
                    _oCode = String.format("I%4d",id);
                } else {
                    _oCode = oCode;
                }

                outlay.setoCode(_oCode);
                code = outlayService.insertOutlay(outlay);
            }
        }
        return new LayuiData(code, outlay, 1);
    }

    @RequestMapping("modifyOutlayBody")
    public @ResponseBody LayuiData modifyOutlayBody(Outlay outlay) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        Outlay _outlay = outlayService.getOutlayByCode(outlay.getoCode());
        return new LayuiData(outlayService.setOutlayByCode(outlay), _outlay, 1);
    }

    @RequestMapping("deleteOutlayBody")
    public @ResponseBody LayuiData deleteOutlayBody(String code) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        //装填回调参数

        return new LayuiData(outlayService.delOutlayByCode(code),null,0);
    }

    @RequestMapping("searchOutlay")
    public ModelAndView searchOutlay(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map map = new HashMap();
        if(field != null) {
            List listOutlay = outlayService.getOutlayByCondition(field, value);
            if(value.equals("*")) {
                listOutlay = outlayService.getAllOutlay();
            }

            if (listOutlay.size() == 0) {
                map.put("OutlayList", listOutlay);
                map.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                map.put("OutlayList", listOutlay);
                map.put("msg", "系统提示：已经找到满足条件的 "+listOutlay.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("outlay/outlay_search", "message", map);
    }

    @RequestMapping("searchOutlayBody")
    public @ResponseBody LayuiData searchOutlayBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Outlay> listOutlay = outlayService.queryOutlayByCondition(field, value, page, limit);
        long count = outlayService.countOutlayByQueryCondition(field, value);

        List<Map> list = new ArrayList<>();
        for(Outlay x:listOutlay) {
            Map map = x.toMap();

            Funds f = x.getFunds();
            if(f != null) {
                map.put("funds", f.getfName());
                map.put("category", f.getfCategory());
            }

            Member m = x.getMember();
            if(m != null) {
                map.put("member", m.getmName());
            }
            list.add(map);
        }
        return new LayuiData(0, list, count);
    }
}
