package com.controller;

import com.alibaba.fastjson.JSON;
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
@RequestMapping("finance")
public class FinanceController {
    @Autowired
    private FinanceService financeService;

    @Autowired
    private IncomeService incomeService;

    @Autowired
    private OutlayService outlayService;

    @RequestMapping("toFinance")
    public ModelAndView toEquipment(HttpServletRequest request, HttpServletResponse response) {
        long count = financeService.countFinanceByQueryCondition("p_code", null);
        return new ModelAndView("finance/finance", "count",count);
    }

    @RequestMapping("financeIframe")
    public ModelAndView financeIframe(HttpServletRequest request, HttpServletResponse response) {

        return new ModelAndView("finance/finance_iframe", "message",null);
    }

    @RequestMapping("deleteFinanceBody")
    public @ResponseBody LayuiData deleteFinanceBody(String code) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        //装填回调参数

        return new LayuiData(financeService.delFinanceByCode(code),null,0);
    }

    @RequestMapping("searchFinance")
    public ModelAndView searchFinance(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map map = new HashMap();
        if(field != null) {
            List listFinance = financeService.getFinanceByCondition(field, value);
            if(value.equals("*")) {
                listFinance = financeService.getAllFinance();
            }

            if (listFinance.size() == 0) {
                map.put("FinanceList", listFinance);
                map.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                map.put("FinanceList", listFinance);
                map.put("msg", "系统提示：已经找到满足条件的 "+listFinance.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("finance/finance_search", "message", map);
    }

    @RequestMapping("searchFinanceBody")
    public @ResponseBody LayuiData searchFinanceBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Finance> listFinance = financeService.queryFinanceByCondition(field, value, page, limit);
        long count = financeService.countFinanceByQueryCondition(field, value);

        List<Map> list = new ArrayList<>();
        for(Finance x:listFinance) {
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

    @RequestMapping("sumFinance")
    public ModelAndView sumFinance(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map map = new HashMap();
        if(field != null) {
            List listFinance = financeService.getFinanceByCondition(field, value);
            if(value.equals("*")) {
                listFinance = financeService.getAllFinance();
            }

            if (listFinance.size() == 0) {
                map.put("FinanceList", listFinance);
                map.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                map.put("FinanceList", listFinance);
                map.put("msg", "系统提示：已经找到满足条件的 "+listFinance.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("finance/finance_sum_finance", "message", map);
    }

    @RequestMapping("sumFinanceBody")
    public @ResponseBody LayuiData sumFinanceBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Finance> listFinance = null;
        long count = 0;

        if(field.equals("funds")) {
            listFinance = financeService.queryFinanceByFunds(value, page, limit);
            count = financeService.countFinanceByQueryFunds(value);

        } else if(field.equals("member")) {
            listFinance = financeService.queryFinanceByMember(value, page, limit);
            count = financeService.countFinanceByQueryMember(value);
        } else {
            listFinance = financeService.queryFinanceByCondition(field, value, page, limit);
            count = financeService.countFinanceByQueryCondition(field, value);
        }

        List<Map> list = new ArrayList<>();
        for(Finance x:listFinance) {
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

    @RequestMapping("sumIncome")
    public ModelAndView sumIncome(HttpServletRequest request, HttpServletResponse response) {
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

        return new ModelAndView("finance/finance_sum_income", "message", map);
    }

    @RequestMapping("sumIncomeBody")
    public @ResponseBody LayuiData sumIncomeBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Income> listIncome = null;
        long count = 0;

        if(field.equals("funds")) {
            listIncome = financeService.queryIncomeByFunds(value, page, limit);
            count = financeService.countIncomeByQueryFunds(value);

        } else if(field.equals("member")) {
            listIncome = financeService.queryIncomeByMember(value, page, limit);
            count = financeService.countIncomeByQueryMember(value);
        } else {
            listIncome = incomeService.queryIncomeByCondition(field, value, page, limit);
            count = incomeService.countIncomeByQueryCondition(field, value);
        }

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

    @RequestMapping("sumOutlay")
    public ModelAndView sumOutlay(HttpServletRequest request, HttpServletResponse response) {
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

        return new ModelAndView("finance/finance_sum_outlay", "message", map);
    }

    @RequestMapping("sumOutlayBody")
    public @ResponseBody LayuiData sumOutlayBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List<Outlay> listOutlay = null;
        long count = 0;

        if(field.equals("funds")) {
            listOutlay = financeService.queryOutlayByFunds(value, page, limit);
            count = financeService.countOutlayByQueryFunds(value);

        } else if(field.equals("member")) {
            listOutlay = financeService.queryOutlayByMember(value, page, limit);
            count = financeService.countOutlayByQueryMember(value);
        } else {
            listOutlay = outlayService.queryOutlayByCondition(field, value, page, limit);
            count = outlayService.countOutlayByQueryCondition(field, value);
        }

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
