package com.daoutil;

import com.model.Guidance;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-03-24 12:59
 */
public class GuidanceDao {
    private MyDaoUtil daoUtil;

    /**
     * 构造方法，在该方法中加载数据库驱动
     */
    public GuidanceDao() {
        daoUtil = new MyDaoUtil();
    }

    /**
     * 功能：获取数据库用户列表
     *
     * @return
     */
    public List<Guidance> getGuidanceList() {
        List gds = new ArrayList();
        List<Map> list = daoUtil.getResultSetList("select * from tb_guidance");
        for (int i = 0; i < list.size(); i++) {
            Guidance gd = new Guidance();
            gd.setMap(list.get(i));
            gds.add(gd);
        }
        return gds;
    }

    /**
     * 功能：获取数据库用户列表通过指导价编码
     *
     * @return
     */
    public Guidance getGuidanceByGdCode(String gdCode) {
        List<Map> list = daoUtil.getResultSetList("select * from tb_guidance where gd_code = '"+gdCode+"'");
        if(list != null) {
            Guidance guidance = new Guidance();
            if(list.size() > 0) {
                guidance.setMap(list.get(0));
            }
        }

        return null;
    }

    /**
     * 关闭数据库
     */
    public void colse() {
        daoUtil.close();
    }
}