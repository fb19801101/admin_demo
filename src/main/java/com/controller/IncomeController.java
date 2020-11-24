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
@RequestMapping("income")
public class IncomeController {
    @Autowired
    private IncomeService incomeService;

    @RequestMapping("toIncome")
    public ModelAndView toIncome(HttpServletRequest request, HttpServletResponse response) {
        long count = incomeService.countIncomeByQueryCondition("i_code", null);
        return new ModelAndView("income/income", "count",count);
    }

    @RequestMapping("incomeIframe")
    public ModelAndView incomeIframe(HttpServletRequest request, HttpServletResponse response) {

        return new ModelAndView("income/income_iframe", "message",null);
    }

    @RequestMapping("insertIncome")
    public ModelAndView insertIncome(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String iCode = request.getParameter("iCode");
        JSONObject json = JsonUtil.readRequestParameters(request);

        HashMap mapMsg = new HashMap();
        if(iCode != null && iCode.length() > 0) {
            Income income = incomeService.getIncomeByCode(iCode);

            if (income != null) {
                Income _income = incomeService.getIncomeByMaxCode();
                String _iCode = "";
                if (_income != null) {
                    _iCode = _income.getiCode();
                    Integer id = Integer.parseInt(_iCode.substring(1))+1;
                    _iCode = String.format("I%4d",id);
                } else {
                    _iCode = iCode;
                }

                income.setJson(json);
                income.setiCode(_iCode);
                incomeService.insertIncome(income);

                mapMsg.put("income", income);
                mapMsg.put("msg", "工程数量 "+_iCode+" 基本信息数据录入成功!");
                return new ModelAndView("income/income_insert", "message", mapMsg);
            } else {
                mapMsg.put("income", income);
                mapMsg.put("msg", "项目名称 "+iCode+" 基本信息数据已经录入，请重新输入!");
                return new ModelAndView("income/income_insert", "message", mapMsg);
            }
        }

        mapMsg.put("msg", "项目名称不能为空，请重新输入!");
        return new ModelAndView("income/income_insert", "message", mapMsg);
    }

    @RequestMapping("insertIncomeBody")
    public @ResponseBody LayuiData insertIncomeBody(Income income) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        int code = 0;
        String iCode = income.getiCode();
        if(iCode != null && iCode.length() > 0) {
            Income _income = incomeService.getIncomeByCode(iCode);

            if (_income == null) {
                _income = incomeService.getIncomeByMaxCode();
                String _iCode = "";
                if (_income != null) {
                    _iCode = _income.getiCode();
                    Integer id = Integer.parseInt(_iCode.substring(1))+1;
                    _iCode = String.format("I%4d",id);
                } else {
                    _iCode = iCode;
                }

                income.setiCode(_iCode);
                code = incomeService.insertIncome(income);
            }
        }
        return new LayuiData(code, income, 1);
    }

    @RequestMapping("modifyIncomeBody")
    public @ResponseBody LayuiData modifyIncomeBody(Income income) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        Income _income = incomeService.getIncomeByCode(income.getiCode());
        return new LayuiData(incomeService.setIncomeByCode(income), _income, 1);
    }

    @RequestMapping("deleteIncomeBody")
    public @ResponseBody LayuiData deleteIncomeBody(String code) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        //装填回调参数

        return new LayuiData(incomeService.delIncomeByCode(code),null,0);
    }

    @RequestMapping("searchIncome")
    public ModelAndView searchIncome(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map map = new HashMap();
        if(field != null) {
            List listIncome = incomeService.getIncomeByCondition(field, value);
            if(value.equals("*")) {
                listIncome = incomeService.getAllIncome();
            }

            if (listIncome.size() == 0) {
                map.put("IncomeList", listIncome);
                map.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                map.put("IncomeList", listIncome);
                map.put("msg", "系统提示：已经找到满足条件的 "+listIncome.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("income/income_search", "message", map);
    }

    @RequestMapping("searchIncomeBody")
    public @ResponseBody LayuiData searchIncomeBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Income> listIncome = incomeService.queryIncomeByCondition(field, value, page, limit);
        long count = incomeService.countIncomeByQueryCondition(field, value);

        List<Map> list = new ArrayList<>();
        for(Income x:listIncome) {
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
