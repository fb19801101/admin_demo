package com.daoutil;

import com.model.Login;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-03-24 12:59
 */
public class LoginDao {
    private MyDaoUtil daoUtil;

    /**
     * 构造方法，在该方法中加载数据库驱动
     */
    public LoginDao() {
        daoUtil = new MyDaoUtil();
    }

    /**
     * 功能：获取数据库用户列表
     *
     * @return
     */
    public List getLoinInfoList() {
        List<Map> list = daoUtil.getResultSetList("select * from tb_login_info");
        List lgs = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Login lg = new Login();
            lg.setMap(list.get(i));
            lgs.add(lg);
        }
        return lgs;
    }

    public List<Login> isInLoinInfoList(Login login) {
        String username = login.getUsername();
        String sql = String.format("select * from tb_login_info where username = '%s'", username);

        List<Map> list = daoUtil.getResultSetList(sql);
        List lgs = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Login lg = new Login();
            lg.setMap(list.get(i));
            lgs.add(lg);
        }
        return lgs;
    }

    /**
     * 关闭数据库
     */
    public void colse() {
        daoUtil.close();
    }
}