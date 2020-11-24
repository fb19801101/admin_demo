package com.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-04-01 15:13
 */
@Controller
@RequestMapping("")
public class ViewsController {
    @RequestMapping("home/shortcut")
    public ModelAndView home_shortcut(HttpServletRequest request, HttpServletResponse response) {
        String path = request.getServletContext().getRealPath("/")+"res/img/right";
        List<File> listFile = getFileList(path);
        HashMap mapMsg = new HashMap();
        List<String> list = new ArrayList<>();
        for(File file : listFile) {
            list.add(file.getName());
        }

        mapMsg.put("list", list);
        mapMsg.put("size", list.size());
        return new ModelAndView("shortcut", "message", mapMsg);
    }

    @RequestMapping("home/carousel")
    public ModelAndView home_carousel(HttpServletRequest request, HttpServletResponse response) {
        String path = request.getServletContext().getRealPath("/")+"res/img/carousel";
        List<File> listFile = getFileList(path);
        HashMap mapMsg = new HashMap();
        List<String> list = new ArrayList<>();
        for(File file : listFile) {
            list.add(file.getName());
        }

        mapMsg.put("list", list);
        mapMsg.put("size", list.size());
        return new ModelAndView("carousel", "message", mapMsg);
    }

    public static List<File> getFileList(String strPath) {
        List<File> filelist = new ArrayList<>();
        File dir = new File(strPath);
        File[] files = dir.listFiles(); // 该文件目录下文件全部放入数组
        if (files != null) {
            for (int i = 0; i < files.length; i++) {
                String fileName = files[i].getName();
                if (files[i].isDirectory()) {
                    getFileList(files[i].getAbsolutePath()); //遍历子文件夹里面的东西
                } else if (fileName.endsWith("exe")) { // 以***结尾的文件
                    String strFileName = files[i].getAbsolutePath();
                    filelist.add(files[i]);
                } else {
                    filelist.add(files[i]);
                    continue;
                }
            }
        }
        return filelist;
    }

    public static String readFile(String filePath) {
        String content = "";
        String line = null;
        BufferedReader reader = null;
        try {
            FileInputStream file = new FileInputStream(filePath);
            InputStreamReader inputFileReader = new InputStreamReader(file, "UTF-8");
            reader = new BufferedReader(inputFileReader);
            // 一次读入一行，直到读入null为文件结束
            while ((line = reader.readLine()) != null) {
                content += line;
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
        return content;
    }


    @RequestMapping("home/console")
    public String home_console() {
        return "views/home/console";
    }

    @RequestMapping("home/homepage1")
    public String home_homepage1() {
        return "views/home/homepage1";
    }

    @RequestMapping("home/homepage2")
    public String home_homepage2() {
        return "views/home/homepage2";
    }


    @RequestMapping("component/grid/list")
    public String component_grid_list() {
        return "views/component/grid/list";
    }

    @RequestMapping("component/grid/mobile")
    public String component_grid_mobile() {
        return "views/component/grid/mobile";
    }

    @RequestMapping("component/grid/mobile-pc")
    public String component_grid_mobile_pc() {
        return "views/component/grid/mobile-pc";
    }

    @RequestMapping("component/grid/all")
    public String component_grid_all() {
        return "views/component/grid/all";
    }

    @RequestMapping("component/grid/stack")
    public String component_grid_stack() {
        return "views/component/grid/stack";
    }

    @RequestMapping("component/grid/speed-dial")
    public String component_grid_speed_dial() {
        return "views/component/grid/speed-dial";
    }

    @RequestMapping("component/button/index")
    public String component_button_index() {
        return "views/component/button/index";
    }

    @RequestMapping("component/form/element")
    public String component_form_element() {
        return "views/component/form/element";
    }

    @RequestMapping("component/form/group")
    public String component_form_group() {
        return "views/component/form/group";
    }

    @RequestMapping("component/nav/index")
    public String component_nav_index() {
        return "views/component/nav/index";
    }

    @RequestMapping("component/tabs/index")
    public String component_tabs_index() {
        return "views/component/tabs/index";
    }

    @RequestMapping("component/progress/index")
    public String component_progress_index() {
        return "views/component/progress/index";
    }

    @RequestMapping("component/panel/index")
    public String component_panel_index() {
        return "views/component/panel/index";
    }

    @RequestMapping("component/badge/index")
    public String component_badge_index() {
        return "views/component/badge/index";
    }

    @RequestMapping("component/timeline/index")
    public String component_timeline_index() {
        return "views/component/timeline/index";
    }

    @RequestMapping("component/anim/index")
    public String component_anim_index() {
        return "views/component/anim/index";
    }

    @RequestMapping("component/auxiliar/index")
    public String component_auxiliar_index() {
        return "views/component/auxiliar/index";
    }

    @RequestMapping("component/layer/list")
    public String component_layer_list() {
        return "views/component/layer/list";
    }

    @RequestMapping("component/layer/special-demo")
    public String component_layer_special_demo() {
        return "views/component/layer/special-demo";
    }

    @RequestMapping("component/layer/theme")
    public String component_layer_theme() {
        return "views/component/layer/theme";
    }

    @RequestMapping("component/laydate/demo1")
    public String component_laydate_demo1() {
        return "views/component/laydate/demo1";
    }

    @RequestMapping("component/laydate/demo2")
    public String component_laydate_demo2() {
        return "views/component/laydate/demo2";
    }

    @RequestMapping("component/laydate/index")
    public String component_laydate_index() {
        return "views/component/laydate/index";
    }

    @RequestMapping("component/laydate/theme")
    public String component_laydate_theme() {
        return "views/component/laydate/theme";
    }

    @RequestMapping("component/laydate/special-demo")
    public String component_laydate_special_demo() {
        return "views/component/laydate/special-demo";
    }

    @RequestMapping("component/table/static")
    public String component_table_static() {
        return "views/component/table/static";
    }

    @RequestMapping("component/table/simple")
    public String component_table_simple() {
        return "views/component/table/simple";
    }

    @RequestMapping("component/table/auto")
    public String component_table_auto() {
        return "views/component/table/auto";
    }

    @RequestMapping("component/table/data")
    public String component_table_data() {
        return "views/component/table/data";
    }

    @RequestMapping("component/table/tostatic")
    public String component_table_tostatic() {
        return "views/component/table/tostatic";
    }

    @RequestMapping("component/table/page")
    public String component_table_page() {
        return "views/component/table/page";
    }

    @RequestMapping("component/table/resetPage")
    public String component_table_resetPage() {
        return "views/component/table/resetPage";
    }

    @RequestMapping("component/table/toolbar")
    public String component_table_toolbar() {
        return "views/component/table/toolbar";
    }

    @RequestMapping("component/table/totalRow")
    public String component_table_totalRow() {
        return "views/component/table/totalRow";
    }

    @RequestMapping("component/table/height")
    public String component_table_height() {
        return "views/component/table/height";
    }

    @RequestMapping("component/table/checkbox")
    public String component_table_checkbox() {
        return "views/component/table/checkbox";
    }

    @RequestMapping("component/table/radio")
    public String component_table_radio() {
        return "views/component/table/radio";
    }

    @RequestMapping("component/table/cellEdit")
    public String component_table_cellEdit() {
        return "views/component/table/cellEdit";
    }

    @RequestMapping("component/table/form")
    public String component_table_form() {
        return "views/component/table/form";
    }

    @RequestMapping("component/table/style")
    public String component_table_style() {
        return "views/component/table/style";
    }

    @RequestMapping("component/table/fixed")
    public String component_table_fixed() {
        return "views/component/table/fixed";
    }

    @RequestMapping("component/table/operate")
    public String component_table_operate() {
        return "views/component/table/operate";
    }

    @RequestMapping("component/table/parseData")
    public String component_table_parseData() {
        return "views/component/table/parseData";
    }

    @RequestMapping("component/table/onrow")
    public String component_table_onrow() {
        return "views/component/table/onrow";
    }

    @RequestMapping("component/table/reload")
    public String component_table_reload() {
        return "views/component/table/reload";
    }

    @RequestMapping("component/table/index")
    public String component_table_index() {
        return "views/component/table/index";
    }

    @RequestMapping("component/table/initSort")
    public String component_table_initSort() {
        return "views/component/table/initSort";
    }

    @RequestMapping("component/table/cellEvent")
    public String component_table_cellEvent() {
        return "views/component/table/cellEvent";
    }

    @RequestMapping("component/table/thead")
    public String component_table_thead() {
        return "views/component/table/thead";
    }

    @RequestMapping("component/laypage/demo1")
    public String component_laypage_demo1() {
        return "views/component/laypage/demo1";
    }

    @RequestMapping("component/laypage/demo2")
    public String component_laypage_demo2() {
        return "views/component/laypage/demo2";
    }

    @RequestMapping("component/laypage/index")
    public String component_laypage_index() {
        return "views/component/laypage/index";
    }

    @RequestMapping("component/upload/demo1")
    public String component_upload_demo1() {
        return "views/component/upload/demo1";
    }

    @RequestMapping("component/upload/demo2")
    public String component_upload_demo2() {
        return "views/component/upload/demo2";
    }

    @RequestMapping("component/upload/index")
    public String component_upload_index() {
        return "views/component/upload/index";
    }

    @RequestMapping("component/colorpicker/index")
    public String component_colorpicker_index() {
        return "views/component/colorpicker/index";
    }

    @RequestMapping("component/slider/index")
    public String component_slider_index() {
        return "views/component/slider/index";
    }

    @RequestMapping("component/rate/index")
    public String component_rate_index() {
        return "views/component/rate/index";
    }

    @RequestMapping("component/carousel/index")
    public String component_carousel_index() {
        return "views/component/carousel/index";
    }

    @RequestMapping("component/flow/index")
    public String component_flow_index() {
        return "views/component/flow/index";
    }

    @RequestMapping("component/util/index")
    public String component_util_index() {
        return "views/component/util/index";
    }

    @RequestMapping("component/code/index")
    public String component_code_index() {
        return "views/component/code/index";
    }

    @RequestMapping("component/laytpl/index")
    public String component_laytpl_index() {
        return "views/component/laytpl/index";
    }

    @RequestMapping("component/temp")
    public String component_temp() {
        return "views/component/temp";
    }


    @RequestMapping("template/iconpage")
    public ModelAndView template_iconpage(HttpServletRequest request, HttpServletResponse response) {
        String path = request.getServletContext().getRealPath("/")+"res/js/layui-2.5.6/font/iconfont.json";
        String data = readFile(path);
        JSONArray jsons = JSONArray.parseArray(data);

        return new ModelAndView("views/template/iconpage", "jsons",jsons);
    }

    @RequestMapping("template/iconfont")
    public ModelAndView template_iconfont(HttpServletRequest request, HttpServletResponse response) {
        String path = request.getServletContext().getRealPath("/")+"res/js/layui-2.5.6/font-ext/iconfont.json";
        String data = readFile(path);
        JSONObject json =JSONObject.parseObject(data);
        JSONArray jsons = json.getJSONArray("glyphs");

        return new ModelAndView("views/template/iconfont", "jsons",jsons);
    }

    @RequestMapping("template/personalpage")
    public String template_personalpage() {
        return "views/template/personalpage";
    }

    @RequestMapping("template/addresslist")
    public String template_addresslist() {
        return "views/template/addresslist";
    }

    @RequestMapping("template/caller")
    public String template_caller() {
        return "views/template/caller";
    }

    @RequestMapping("template/goodslist")
    public String template_goodslist() {
        return "views/template/goodslist";
    }

    @RequestMapping("template/msgboard")
    public String template_msgboard() {
        return "views/template/msgboard";
    }

    @RequestMapping("template/search")
    public String template_search() {
        return "views/template/search";
    }

    @RequestMapping("template/temp")
    public String template_temp() {
        return "views/template/temp";
    }

    @RequestMapping("template/tips/404")
    public String template_tips_404() {
        return "views/template/tips/404";
    }

    @RequestMapping("template/tips/error")
    public String template_tips_error() {
        return "views/template/tips/error";
    }



    @RequestMapping("excel/index")
    public String excel_index() {
        return "views/excel/index";
    }

    @RequestMapping("excel/tableExport/index")
    public String excel_tableExport_index() {
        return "views/excel/tableExport/index";
    }

    @RequestMapping("excel/noLayui/index")
    public String excel_noLayui_index() {
        return "views/excel/noLayui/index";
    }

    @RequestMapping("excel/borderExport/index")
    public String excel_borderExport_index() {
        return "views/excel/borderExport/index";
    }

    @RequestMapping("excel/iframeExport/index")
    public String excel_iframeExport_index() {
        return "views/excel/iframeExport/index";
    }

    @RequestMapping("excel/iframeExport/children")
    public String excel_iframeExport_children() {
        return "views/excel/iframeExport/children";
    }

    @RequestMapping("excel/timeHandle/index")
    public String excel_timeHandle_index() {
        return "views/excel/timeHandle/index";
    }


    @RequestMapping("app/content/comment")
    public String app_content_comment() {
        return "views/app/content/comment";
    }

    @RequestMapping("app/content/contform")
    public String app_content_contform() {
        return "views/app/content/contform";
    }

    @RequestMapping("app/content/list")
    public String app_content_list() {
        return "views/app/content/list";
    }

    @RequestMapping("app/content/listform")
    public String app_content_listform() {
        return "views/app/content/listform";
    }

    @RequestMapping("app/content/tags")
    public String app_content_tags() {
        return "views/app/content/tags";
    }

    @RequestMapping("app/content/tagsform")
    public String app_content_tagsform() {
        return "views/app/content/tagsform";
    }

    @RequestMapping("app/forum/list")
    public String app_forum_list() {
        return "views/app/forum/list";
    }

    @RequestMapping("app/forum/listform")
    public String app_forum_listform() {
        return "views/app/forum/listform";
    }

    @RequestMapping("app/forum/replys")
    public String app_forum_replys() {
        return "views/app/forum/replys";
    }

    @RequestMapping("app/forum/replysform")
    public String app_forum_replysform() {
        return "views/app/forum/replysform";
    }

    @RequestMapping("app/mail/category")
    public String app_mail_category() {
        return "views/app/mail/category";
    }

    @RequestMapping("app/mail/list")
    public String app_mail_list() {
        return "views/app/mail/list";
    }

    @RequestMapping("app/mail/specs")
    public String app_mail_specs() {
        return "views/app/mail/specs";
    }

    @RequestMapping("app/message/detail")
    public String app_message_detail() {
        return "views/app/message/detail";
    }

    @RequestMapping("app/message/index")
    public String app_message_index() {
        return "views/app/message/index";
    }

    @RequestMapping("app/workorder/list")
    public String app_workorder_list() {
        return "views/app/workorder/list";
    }

    @RequestMapping("app/workorder/listform")
    public String app_workorder_listform() {
        return "views/app/workorder/listform";
    }


    @RequestMapping("senior/echarts/line")
    public String senior_echarts_line() {
        return "views/senior/echarts/line";
    }

    @RequestMapping("senior/echarts/bar")
    public String senior_echarts_bar() {
        return "views/senior/echarts/bar";
    }

    @RequestMapping("senior/echarts/map")
    public String senior_echarts_map() {
        return "views/senior/echarts/map";
    }

    @RequestMapping("senior/im/index")
    public String senior_im_index() {
        return "views/senior/im/index";
    }


    @RequestMapping("user/reg")
    public String user_reg() {
        return "views/user/reg";
    }

    @RequestMapping("user/login")
    public String user_login() {
        return "views/user/login";
    }

    @RequestMapping("user/forget")
    public String user_forget() {
        return "views/user/forget";
    }

    @RequestMapping("user/user/list")
    public String user_user_list() {
        return "views/user/user/list";
    }

    @RequestMapping("user/user/form")
    public String user_user_form() {
        return "views/user/user/form";
    }

    @RequestMapping("user/administrators/adminform")
    public String user_administrators_adminform() {
        return "views/user/administrators/adminform";
    }

    @RequestMapping("user/administrators/list")
    public String user_administrators_list() {
        return "views/user/administrators/list";
    }

    @RequestMapping("user/administrators/role")
    public String user_administrators_role() {
        return "views/user/administrators/role";
    }

    @RequestMapping("user/administrators/roleform")
    public String user_administrators_roleform() {
        return "views/user/administrators/roleform";
    }


    @RequestMapping("set/system/website")
    public String set_system_website() {
        return "views/set/system/website";
    }

    @RequestMapping("set/system/email")
    public String set_system_email() {
        return "views/set/system/email";
    }

    @RequestMapping("set/user/info")
    public String set_user_info() {
        return "views/set/user/info";
    }

    @RequestMapping("set/user/password")
    public String set_user_password() {
        return "views/set/user/password";
    }


    @RequestMapping("system/about")
    public String system_about() {
        return "views/system/about";
    }

    @RequestMapping("system/get")
    public String system_get() {
        return "views/system/get";
    }

    @RequestMapping("system/more")
    public String system_more() {
        return "views/system/more";
    }

    @RequestMapping("system/theme")
    public String system_theme() {
        return "views/system/theme";
    }


    @RequestMapping("iframe/layer/iframe")
    public String iframe_layer_iframe() {
        return "views/iframe/layer/iframe";
    }


    @RequestMapping("layim/demo")
    public String layim_demo() {
        return "views/layim/demo";
    }

    @RequestMapping("vue/demo")
    public String vue_demo() {
        return "views/vue/demo";
    }

    @RequestMapping("vue/custom")
    public String vue_custom() {
        return "views/vue/custom";
    }

    @RequestMapping("vue/animation")
    public String vue_animation() {
        return "views/vue/animation";
    }

    @RequestMapping("vue/mixin")
    public String vue_mixin() {
        return "views/vue/mixin";
    }

    @RequestMapping("vue/grid")
    public String vue_grid() {
        return "views/vue/grid";
    }

    @RequestMapping("vue/drag")
    public String vue_drag() {
        return "views/vue/drag";
    }

    @RequestMapping("vue/ant")
    public String vue_ant() {
        return "views/vue/ant";
    }

    @RequestMapping("vue/strap")
    public String vue_strap() {
        return "views/vue/strap";
    }
}