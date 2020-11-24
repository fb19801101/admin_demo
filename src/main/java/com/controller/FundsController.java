package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.daoutil.DataSource;
import com.daoutil.DataSourceContextHolder;
import com.daoutil.SystemLogger;
import com.dateutil.EncodeUtil;
import com.dateutil.JsonUtil;
import com.model.Funds;
import com.model.LayuiData;
import com.service.FundsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @funds 中铁十二局集团第一工程有限公司
 * @create 2020-04-01 15:50
 */
@Controller
@RequestMapping("funds")
public class FundsController {
    @Autowired
    private FundsService fundsService;

    @RequestMapping("toFunds")
    public ModelAndView toFunds(HttpServletRequest request, HttpServletResponse response) {
        long count = fundsService.countFundsByQueryCondition("f_code", null);
        return new ModelAndView("funds/funds", "count",count);
    }

    @RequestMapping("fundsIframe")
    public ModelAndView fundsIframe(HttpServletRequest request, HttpServletResponse response) {

        return new ModelAndView("funds/funds_iframe", "message",null);
    }

    @RequestMapping("insertFunds")
    public ModelAndView insertFunds(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String cyName = request.getParameter("cyName");
        JSONObject json = JsonUtil.readRequestParameters(request);

        HashMap mapMsg = new HashMap();
        if(cyName != null && cyName.length() > 0) {
            List list = fundsService.getFundsByCondition("f_name", cyName);

            if (list.size() == 0) {
                Funds funds = fundsService.getFundsByMaxCode();
                String fCode = "";
                if (funds != null) {
                    fCode = funds.getfCode();
                    Integer id = Integer.parseInt(fCode.substring(1))+1;
                    fCode = String.format("F%4d",id);
                } else {
                    fCode = "F0001";
                }

                funds.setJson(json);
                funds.setfCode(fCode);
                fundsService.insertFunds(funds);

                mapMsg.put("funds", funds);
                mapMsg.put("msg", "施工队伍 "+cyName+" 基本信息数据录入成功!");
                return new ModelAndView("funds/funds_insert", "message", mapMsg);
            } else {
                mapMsg.put("funds", list.get(0));
                mapMsg.put("msg", "队伍名称 "+cyName+" 基本信息数据已经录入，请重新输入!");
                return new ModelAndView("funds/funds_insert", "message", mapMsg);
            }
        }

        mapMsg.put("msg", "施工队伍名称不能为空，请重新输入!");
        return new ModelAndView("funds/funds_insert", "message", mapMsg);
    }

    @RequestMapping("insertFundsBody")
    public @ResponseBody LayuiData insertFundsBody(Funds funds) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        String fName = funds.getfName();
        int code = 0;
        if(fName != null && fName.length() > 0) {
            List list = fundsService.getFundsByCondition("f_name", fName);

            if (list.size() == 0) {
                Funds _funds = fundsService.getFundsByMaxCode();
                String fCode = "";
                if (_funds != null) {
                    fCode = _funds.getfCode();
                    Integer id = Integer.parseInt(fCode.substring(1))+1;
                    fCode = String.format("F%4d",id);
                } else {
                    fCode = "F0001";
                }

                funds.setfCode(fCode);
                code = fundsService.insertFunds(funds);;
            }
        }
        return new LayuiData(code, funds, 1);
    }

    @RequestMapping("modifyFundsBody")
    public @ResponseBody LayuiData modifyMemberBody(Funds funds) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        Funds _funds = fundsService.getFundsByCode(funds.getfCode());
        return new LayuiData(fundsService.setFundsByCode(_funds), _funds, 1);
    }

    @RequestMapping("deleteFundsBody")
    public @ResponseBody LayuiData deleteMemberBody(String code) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        //装填回调参数

        return new LayuiData(fundsService.delFundsByCode(code),null,0);
    }

    @RequestMapping("searchFunds")
    public ModelAndView searchFunds(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map mapMsg = new HashMap();
        if(field != null) {
            List listFunds = fundsService.getFundsByCondition(field, value);
            if(value.equals("*")) {
                listFunds = fundsService.getAllFunds();
            }

            if (listFunds.size() == 0) {
                mapMsg.put("FundsList", listFunds);
                mapMsg.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                mapMsg.put("FundsList", listFunds);
                mapMsg.put("msg", "系统提示：已经找到满足条件的 "+listFunds.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("funds/funds_search", "message", mapMsg);
    }

    @RequestMapping("searchFundsBody")
    public @ResponseBody LayuiData searchFundsBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List list = fundsService.queryFundsByCondition(field, value, page, limit);
        long count = fundsService.countFundsByQueryCondition(field, value);
        return new LayuiData(0, list, count);
    }
}