package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dateutil.EncodeUtil;
import com.dateutil.JsonUtil;
import com.model.*;
import com.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-04-01 15:50
 */
@Controller
@RequestMapping("member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @RequestMapping("toMember")
    public ModelAndView toMember(HttpServletRequest request, HttpServletResponse response) {
        long count = memberService.countMemberByQueryCondition("m_code", null);
        return new ModelAndView("member/member", "count",count);
    }

    @RequestMapping("memberIframe")
    public ModelAndView memberIframe(HttpServletRequest request, HttpServletResponse response) {
        Map map = new HashMap();
        map.put("msg", "系统提示：录入数据不满足规定条件!  memberTemplate");
        return new ModelAndView("member/member_iframe", "message", map);
    }

    @RequestMapping("insertMember")
    public ModelAndView insertMember(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String gdName = request.getParameter("gdName");
        JSONObject json = JsonUtil.readRequestParameters(request);

        HashMap mapMsg = new HashMap();

        if(gdName != null && gdName.length() > 0) {
            List list = memberService.getMemberByCondition("gd_name", gdName);

            if (list.size() == 0) {
                Member member = memberService.getMemberByMaxCode();
                String mCode = "";
                if (member != null) {
                    mCode = member.getmCode();
                    Integer id = Integer.parseInt(mCode.substring(1))+1;
                    mCode = String.format("M%4d",id);
                } else {
                    mCode = "M0001";
                }

                member.setJson(json);
                member.setmCode(mCode);
                memberService.insertMember(member);

                mapMsg.put("member", member);
                mapMsg.put("msg", "指导价 "+gdName+" 基本信息数据录入成功!");
                return new ModelAndView("member/member_insert", "message", mapMsg);
            } else {
                mapMsg.put("labour", list.get(0));
                mapMsg.put("msg", "细目名称 "+gdName+" 基本信息数据已经录入，请重新输入!");
                return new ModelAndView("member/member_insert", "message", mapMsg);
            }
        }

        mapMsg.put("msg", "细目名称不能为空，请重新输入!");
        return new ModelAndView("member/member_insert", "message", mapMsg);
    }

    @RequestMapping("insertMemberBody")
    public @ResponseBody LayuiData insertMemberBody(Member member) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        int code = 0;
        String mName = member.getmName();
        if(mName != null && mName.length() > 0) {
            List list = memberService.getMemberByCondition("m_name", mName);

            if (list.size() == 0) {
                Member _member = memberService.getMemberByMaxCode();
                String mCode = "";
                if (_member != null) {
                    mCode = _member.getmCode();
                    Integer id = Integer.parseInt(mCode.substring(1))+1;
                    mCode = String.format("M%4d",id);
                } else {
                    mCode = "M0001";
                }

                member.setmCode(mCode);
                code = memberService.insertMember(member);
            }
        }
        return new LayuiData(code, member, 1);
    }

    @RequestMapping("modifyMemberBody")
    public @ResponseBody LayuiData modifyMemberBody(Member member) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        Member _member = memberService.getMemberByCode(member.getmCode());
        return new LayuiData(memberService.setMemberByCode(member), _member, 1);
    }

    @RequestMapping("deleteMemberBody")
    public @ResponseBody LayuiData deleteMemberBody(String code) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        //装填回调参数
        return new LayuiData(memberService.delMemberByCode(code), null, 0);
    }

    @RequestMapping("searchMember")
    public ModelAndView searchMember(HttpServletRequest request, HttpServletResponse response) {
        EncodeUtil.setEncoderUTF(request, response);
        String field = request.getParameter("conditionField");
        String value = request.getParameter("conditionValue");

        Map map = new HashMap();
        if(field != null) {
            List listMember = memberService.getMemberByCondition(field, value);
            if(value.equals("*")) {
                listMember = memberService.getAllMember();
            }

            if (listMember.size() == 0) {
                map.put("MemberList", listMember);
                map.put("msg", "系统提示：没有找到满足条件的数据! Field= " + field + ", Value= " + value);
            } else {
                map.put("MemberList", listMember);
                map.put("msg", "系统提示：已经找到满足条件的 "+listMember.size()+" 数据! Field= " + field + ", Value= " + value);
            }
        }

        return new ModelAndView("member/member_search", "message", map);
    }

    @RequestMapping("searchMemberBody")
    public @ResponseBody LayuiData searchMemberBody(String field, String value, @RequestParam("page") Integer page, @RequestParam("limit") Integer limit) {
//        JOptionPane.showMessageDialog(null, field+"\n"+value, "标题", JOptionPane.PLAIN_MESSAGE);

        List list = memberService.queryMemberByCondition(field, value, page, limit);
        long count = memberService.countMemberByQueryCondition(field, value);
        return new LayuiData(0, list, count);
    }
}
