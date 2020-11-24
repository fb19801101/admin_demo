package com.dateutil;

import com.model.CurveElement;
import com.model.LayuiData;
import com.service.CurveElementService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-10-31 9:24
 */
public class CoordinateCalculate {
    @Autowired
    private CurveElementService curveElementService;
    
    /**
     * 功能：计算HY、YH点坐标
     *
     * @param _dk 交点里程
     * @param _x 交点坐标x
     * @param _y 交点坐标y
     * @param _x1 上一交点坐标y
     * @param _y1 下一交点坐标x
     * @param _x2 上一交点坐标x
     * @param _y2 下一交点坐标y
     * @param _Rc 圆曲线半径
     * @param _Lc 圆曲线长
     * @param _R1 上一曲线半径
     * @param _R2 下一曲线半径
     * @param _T1 上一切线长
     * @param _T2 下一切线长
     * @param _Ls1 上一缓和曲线长
     * @param _Ls2 下一缓和曲线长
     * @return HY坐标 X=ret[0] Y=ret[1] YH坐标 X=ret[2] Y=ret[3]
     */
    public static double[]  calculate_HY_YH_XY(double _dk, double _x, double _y, double _x1, double _y1, double _x2, double _y2, double _Rc, double _Lc, double _R1, double _R2, double _T1, double _T2, double _Ls1, double _Ls2){
        double fwj1 = Math.atan2((_y - _y1), (_x - _x1));//第一方位角  Math.atan2((_y - _y1), (_x - _x1)) * 180 / Math.PI;
        if (fwj1 < 0) {
            fwj1 = 2.0*Math.PI + fwj1;  //360 + fwj1;
        }
        double fwj2 = Math.atan2((_y2 - _y), (_x2 - _x));//第二方位角  Math.atan2((_y2 - _y), (_x2 - _x)) * 180 / Math.PI;
        if (fwj2 < 0) {
            fwj2 = 2.0*Math.PI + fwj2;  //360 + fwj2;
        }
        double pj = fwj1 - fwj2;//转角，左转为正，右转为负
        double ZH = _dk - _T1;
        double HZ = ZH + _Ls1 + _Ls2 + _Lc;

        double x1_1,y1_1,x1,y1,x1_2,y1_2;
        if (_Ls1 != 0) {
            double p1 = _Ls1 - Math.pow(_Ls1, 5) / (40 * _Rc * _Rc * _Ls1 * _Ls1)+Math.pow(_Ls1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(_Ls1, 4));
            double q1 = Math.pow(_Ls1, 3) / (6 * _Rc * _Ls1) - Math.pow(_Ls1, 7) / (336 * Math.pow(_Rc, 3) * Math.pow(_Ls1, 3));
            if (pj < 0) {
                q1 = -q1;
            }
            double _p1 = Math.sqrt(p1 * p1 + q1 * q1);
            double _w1 = fwj1 - Math.atan2(q1, p1);  //fwj1 - Math.atan2(q1, p1) * 180 / Math.PI;
            x1_1 = _x + _T1 * Math.cos(fwj1 - Math.PI);  //_x + _T1 * Math.cos(Math.toRadians(fwj1 - 180));
            y1_1 = _y + _T1 * Math.sin(fwj1 - Math.PI);  //_y + _T1 * Math.sin(Math.toRadians(fwj1 - 180));
            x1_2 = _p1 * Math.cos(_w1) + x1_1;  //_p1 * Math.cos(Math.toRadians(_w1)) + x1_1;
            y1_2 = _p1 * Math.sin(_w1) + y1_1;  //_p1 * Math.sin(Math.toRadians(_w1)) + y1_1;

        } else {
            x1_1 = _x + _T1 * Math.cos(fwj1 - Math.PI);  //_x + _T1 * Math.cos(Math.toRadians(fwj1 - 180));
            y1_1 = _y + _T1 * Math.sin(fwj1 - Math.PI);  //_y + _T1 * Math.sin(Math.toRadians(fwj1 - 180));
            x1_2 = x1_1;
            y1_2 = y1_1;
        }

        double x2_1,y2_1,x2,y2,x2_2,y2_2;
        if (_Ls2!=0) {
            double p2=_Ls2-Math.pow(_Ls2,5)/(40*_Rc*_Rc*_Ls2*_Ls2);
            double q2=Math.pow(_Ls2,3)/(6*_Rc*_Ls2)-Math.pow(_Ls2,7)/(336*Math.pow(_Rc,3)*Math.pow(_Ls2,3));
            q2=-q2;
            if (pj<0){
                q2=-q2;
            }
            double _p2=Math.sqrt(p2*p2+q2*q2);
            double _w2=fwj2-Math.atan2(q2,p2);  //fwj2-Math.atan2(q2,p2)*180/Math.PI;
            x2_1=_x+_T2*Math.cos(fwj2);  //_x+_T2*Math.cos(Math.toRadians(fwj2));
            y2_1=_y+_T2*Math.sin(fwj2);  //_y+_T2*Math.sin(Math.toRadians(fwj2));
            x2_2=_p2*Math.cos(_w2-Math.PI)+x2_1;  //_p2*Math.cos(Math.toRadians(_w2-180))+x2_1;
            y2_2=_p2*Math.sin(_w2-Math.PI)+y2_1;  //_p2*Math.sin(Math.toRadians(_w2-180))+y2_1;
        } else {
            x2_1=_x+_T2*Math.cos(fwj2);  //_x+_T2*Math.cos(Math.toRadians(fwj2));
            y2_1=_y+_T2*Math.sin(fwj2);  //_y+_T2*Math.sin(Math.toRadians(fwj2));
            x2_2=x2_1;
            y2_2=y2_1;
        }

        double Ls1_1=(_Rc*_Ls1)/(_R1-_Rc);//交点下第一段卵形曲线剩余长度
        double Ls2_1=(_Rc*_Ls2)/(_R2-_Rc);//交点下第二段卵形曲线剩余长度
        double Ls1_2=Ls1_1+_Ls1;//交点下第一段卵形曲线还原后虚总长度
        double Ls2_2=Ls2_1+_Ls2;//交点下第二段卵形曲线还原后虚总长度
        double QD=ZH-Ls1_1;//交点下第一段卵形曲线还原后虚拟起点里程
        double ZD=HZ+Ls2_1;//交点下第二段卵形曲线还原后虚拟终点里程
        double NN1=Ls1_1-Math.pow(Ls1_1,5)/(40*_Rc*_Rc*Ls1_2*Ls1_2)+Math.pow(Ls1_1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls1_2, 4));//第一卵形曲线起点投射至上虚拟轴线Y值
        double SS1=Math.pow(Ls1_1,3)/(6*_Rc*Ls1_2)-Math.pow(Ls1_1,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls1_2,3));//第一卵形曲线起点投射至上虚拟轴线X值
        double NN2=Ls2_1-Math.pow(Ls2_1,5)/(40*_Rc*_Rc*Ls2_2*Ls2_2)+Math.pow(Ls2_1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls2_2, 4));//第二卵形曲线终点投射至上虚拟轴线Y值
        double SS2=Math.pow(Ls2_1,3)/(6*_Rc*Ls2_2)-Math.pow(Ls2_1,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls2_2,3));//第二卵形曲线终点投射至上虚拟轴线X值
        double x_Ls1=_x+_T1*Math.cos(fwj1-Math.PI);  //_x+_T1*Math.cos(Math.toRadians(fwj1-180));
        double y_Ls1=_y+_T1*Math.sin(fwj1-Math.PI);//交点下第一段卵形曲线起点坐标  //_y+_T1*Math.sin(Math.toRadians(fwj1-180));
        double x_Ls2=_x+_T2*Math.cos(fwj2);  //_x+_T2*Math.cos(Math.toRadians(fwj2));
        double y_Ls2=_y+_T2*Math.sin(fwj2);//交点下第二段卵形曲线终点坐标  //_y+_T2*Math.sin(Math.toRadians(fwj2));

        double p_Ls1=Math.sqrt(NN1*NN1+SS1*SS1);//第一段卵形曲线起点至虚拟起点直线距离
        double w_Ls1=Math.pow(Ls1_1,2)/(2*_Rc*Ls1_2);//第一段卵形曲线起点偏角  (Math.pow(Ls1_1,2)/(2*_Rc*Ls1_2))*(180/Math.PI);
        double _p_Ls1=Math.atan2(SS1,NN1);  //Math.atan2(SS1,NN1)*180/Math.PI;
        double _w_Ls1=fwj1+w_Ls1-_p_Ls1-Math.PI;//第一卵形曲线起点至虚拟起点方位角  fwj1+w_Ls1-_p_Ls1-180;

        double p_Ls2=Math.sqrt(NN2*NN2+SS2*SS2);
        double w_Ls2=Math.pow(Ls2_1,2)/(2*_Rc*Ls2_2);//第二段卵形曲线终点偏角  (Math.pow(Ls2_1,2)/(2*_Rc*Ls2_2))*(180/Math.PI);
        double _p_Ls2=Math.atan2(SS2,NN2);  //Math.atan2(SS2,NN2)*180/Math.PI;
        double _w_Ls2=fwj2-w_Ls2+_p_Ls2;

        if (pj<0) {
            _w_Ls1=fwj1-w_Ls1+_p_Ls1-Math.PI; //右偏时第一卵形曲线起点至虚拟起点方位角  fwj1-w_Ls1+_p_Ls1-180;
            _w_Ls2=fwj2+w_Ls2-_p_Ls2;//右偏时虚拟终点至第二卵形曲线终点方位角
        }

        double _x_Ls1=x_Ls1+p_Ls1*Math.cos(_w_Ls1);//交点下第一段卵形曲线还原后虚拟起点x坐标  x_Ls1+p_Ls1*Math.cos(Math.toRadians(_w_Ls1));
        double _y_Ls1=y_Ls1+p_Ls1*Math.sin(_w_Ls1);//交点下第一段卵形曲线还原后虚拟起点y坐标  y_Ls1+p_Ls1*Math.sin(Math.toRadians(_w_Ls1));
        double _fwj_Ls1=fwj1+w_Ls1;//交点下第一段卵形曲线还原后虚拟轴线方位角
        double _x_Ls2=x_Ls2+p_Ls2*Math.cos(_w_Ls2);//交点下第二段卵形曲线还原后虚拟起点x坐标  x_Ls2+p_Ls2*Math.cos(Math.toRadians(_w_Ls2));
        double _y_Ls2=y_Ls2+p_Ls2*Math.sin(_w_Ls2);//交点下第二段卵形曲线还原后虚拟起点y坐标  y_Ls2+p_Ls2*Math.sin(Math.toRadians(_w_Ls2));
        double _fwj_Ls2=fwj2-w_Ls2;//交点下第二段卵形曲线还原后虚拟轴线方位角

        if (pj<0) {
            _fwj_Ls1=fwj1-w_Ls1;
            _fwj_Ls2=fwj2+w_Ls2;
        }
        double p1=Ls1_2-Math.pow(Ls1_2,3)/(40*_Rc*_Rc)+Math.pow(Ls1_2, 5) / (3456 * Math.pow(_Rc, 4));
        double q1=Math.pow(Ls1_2,2)/(6*_Rc)-Math.pow(Ls1_2,4)/(336*Math.pow(_Rc,3));
        double w1=Math.pow(Ls1_2,2)/(2*_Rc*Ls1_2);  //(Math.pow(Ls1_2,2)/(2*_Rc*Ls1_2))*(180/Math.PI);
        double fwj_Ls1=_fwj_Ls1-w1-Math.PI/2.0;  //_fwj_Ls1-w1-90;

        double p2=Ls2_2-Math.pow(Ls2_2,3)/(40*_Rc*_Rc)+Math.pow(Ls2_2, 5) / (3456 * Math.pow(_Rc, 4));
        double q2=Math.pow(Ls2_2,2)/(6*_Rc)-Math.pow(Ls2_2,4)/(336*Math.pow(_Rc,3));
        double w2=Math.pow(Ls2_2,2)/(2*_Rc*Ls2_2);  //(Math.pow(Ls2_2,2)/(2*_Rc*Ls2_2))*(180/Math.PI);
        double fwj_Ls2=_fwj_Ls2+w2-Math.PI/2.0;  //_fwj_Ls2+w2-90;

        if (pj<0) {
            fwj_Ls1=_fwj_Ls1+w1-Math.PI/2.0;  //_fwj_Ls1+w1-90;
            fwj_Ls2=_fwj_Ls2-w2-Math.PI/2.0;  //_fwj_Ls2-w2-90;
        }

        double _p1=Math.sqrt(p1*p1+q1*q1);//第一卵形曲线待求点至虚拟原点距离
        double _w1=_fwj_Ls1-Math.atan2(q1,p1);//第一卵形曲线待求点至虚拟原点方位角  _fwj_Ls1-Math.atan2(q1,p1)*180/Math.PI;
        double _p2=Math.sqrt(p2*p2+q2*q2);
        double _w2=_fwj_Ls2-Math.PI+Math.atan2(q2,p2);  //_fwj_Ls2-180+Math.atan2(q2,p2)*180/Math.PI;

        if (pj<0) {
            _w1=_fwj_Ls1+Math.atan2(q1,p1);  //_fwj_Ls1+Math.atan2(q1,p1)*180/Math.PI;
            _w2=_fwj_Ls2-Math.PI-Math.atan2(q2,p2);  //_fwj_Ls2-180-Math.atan2(q2,p2)*180/Math.PI;
        }

        double _x1_2=_p1*Math.cos(_w1)+_x_Ls1;  //_p1*Math.cos(Math.toRadians(_w1))+_x_Ls1;
        double _y1_2=_p1*Math.sin(_w1)+_y_Ls1; // 第一段卵形曲线待求点中心坐标  _p1*Math.sin(Math.toRadians(_w1))+_y_Ls1;

        double _x2_2=_p2*Math.cos(_w2)+_x_Ls2;  //_p2*Math.cos(Math.toRadians(_w2))+_x_Ls2;
        double _y2_2=_p2*Math.sin(_w2)+_y_Ls2;//第二段卵形曲线待求点中心坐标  _p2*Math.sin(Math.toRadians(_w2))+_y_Ls2;

        if (_R1==0) {
            x1=x1_2;
            y1=y1_2;
        } else {
            x1=_x1_2;
            y1=_y1_2;
        }
        if (_R2==0) {
            x2=x2_2;
            y2=y2_2;
        } else {
            x2=_x2_2;
            y2=_y2_2;
        }

        double[] ret = new double[4];
        ret[0] = x1;
        ret[1] = y1;
        ret[2] = x2;
        ret[3] = y2;
        return ret;
    }

    /**
     * 功能：计算圆曲线上任一点的坐标
     *
     * @param dk 待算点里程
     * @param dist 待算点偏距
     * @param HY 圆曲线起点里程
     * @param x_HY 圆曲线起点坐标x
     * @param y_HY 圆曲线起点坐标y
     * @param x_YH 圆曲线终点坐标x
     * @param y_YH 圆曲线终点坐标y
     * @param x_JD 交点坐标x
     * @param y_JD 交点坐标y
     * @param Rc 圆曲线半径
     * @return 待算点坐标 x=ret[0] y=ret[1]
     */
    public static double[]  calculate_Circle_XY(double dk, double dist, double HY, double x_HY, double y_HY, double x_YH, double y_YH, double x_JD, double y_JD, double Rc) {
        double m = (x_YH * x_YH + y_YH * y_YH - x_HY * x_HY - y_HY * y_HY) / (2 * (x_YH - x_HY));
        double n = ((y_YH - y_HY) / (x_YH - x_HY));
        double c = (Rc * Rc - m * m - x_HY * x_HY + 2 * m * x_HY - y_HY * y_HY) * (-1);
        double a = n * n + 1;
        double b = 2 * (n * x_HY - y_HY - m * n);
        double y1 = ((-1 * b) + Math.sqrt(b * b - 4 * a * c)) / (2 * a);
        double y2 = ((-1 * b) - Math.sqrt(b * b - 4 * a * c)) / (2 * a);
        double x1 = m - y1 * n;
        double x2 = m - y2 * n;
        double p1 = Math.sqrt((x1 - x_JD) * (x1 - x_JD) + (y1 - y_JD) * (y1 - y_JD));
        double _x, _y, x, y; //_x,_y 为圆心坐标，x,y为待求点坐标
        if (p1 > Rc) {
            _x = x1;
            _y = y1;
        } else {
            _x = x2;
            _y = y2;
        }

        double mm = dk - HY;
        double w1 = mm / Rc;  //double w1 = (mm * 360) / (2 * Math.PI * Rc);
        double _w1 = Math.atan2((y_HY - _y), (x_HY - _x));  //double _w1 = Math.atan2((y_HY - _y), (x_HY - _x)) * 180 / Math.PI;
        if (_w1<0) {
            _w1=_w1+2.0*Math.PI;  //_w1=_w1+360;
        }

        double p2=Rc+dist;
        double _w2 = Math.atan2((y_JD - y_HY), (x_JD - x_HY));  //double _w2 = Math.atan2((y_JD - y_HY), (x_JD - x_HY)) * 180 / Math.PI;
        if (_w2<0) {
            _w2=_w2+2.0*Math.PI;  //_w2=_w2+360;
        }

        double _w3 = Math.atan2((y_YH - y_JD), (x_YH - x_JD));  //double _w3 = Math.atan2((y_YH - y_JD), (x_YH - x_JD)) * 180 / Math.PI;
        if (_w3<0) {
            _w3=_w3+2.0*Math.PI; //_w3=_w3+360;

        }

        if (_w2 > _w3) {
            w1 = -w1;
            p2=Rc-dist;
            //System.out.println("顺时针，左偏");
        } else {
            //System.out.println("逆时针，右偏");
        }

        double w3 = Math.atan2((y_JD - _y), (x_JD - _x));//交点到圆心方位角  double w3 = Math.atan2((y_JD - _y), (x_JD - _x)) * 180 / Math.PI;
        if (w3<0) {
            w3=w3+2.0*Math.PI;  //w3=w3+360;
        }

        double w2=_w1+w1;

        x=_x+p2*Math.cos(w2);  //x=_x+p2*Math.cos(Math.toRadians(w2));
        y=_y+p2*Math.sin(w2);  //y=_y+p2*Math.sin(Math.toRadians(w2));

        double[] ret = new double[2];
        ret[0] = x;
        ret[1] = y;
        return ret;
    }

    /**
     * 功能：计算直线上任一点的坐标
     *
     * @param dk 待算点里程
     * @param dist 待算点偏距
     * @param _dk 交点里程
     * @param _x 交点坐标x
     * @param _y 交点坐标y
     * @param _x1 上一交点x
     * @param _y1 上一交点y
     * @return 待算点坐标 x=ret[0] y=ret[1]
     */
    public static double[]  calculate_Line_XY(double dk, double dist, double _dk, double _x, double _y, double _x1, double _y1){
        double fwj=Math.atan2((_y1-_y),(_x1-_x));  //Math.atan2((_y1-_y),(_x1-_x))*180/Math.PI;
        double p=Math.abs(_dk-dk);
        double x1=_x+p*Math.cos(fwj);  //_x+p*Math.cos(Math.toRadians(fwj));
        double y1=_y+p*Math.sin(fwj);  //_y+p*Math.sin(Math.toRadians(fwj));
        double x=x1+dist*Math.cos(fwj+Math.PI/2.0);  //x1+dist*Math.cos(Math.toRadians(fwj+90));
        double y=y1+dist*Math.sin(fwj+Math.PI/2.0);  //y1+dist*Math.sin(Math.toRadians(fwj+90));

        double[] ret = new double[2];
        ret[0] = x;
        ret[1] = y;
        return ret;
    }

    /**
     * 功能：计算缓和曲线上任一点的坐标
     *
     * @param dk 待算里程
     * @param dist 待算偏距
     * @param _dk 交点里程
     * @param _x 交点坐标x
     * @param _y 交点坐标y
     * @param _x1 上一交点坐标y
     * @param _y1 下一交点坐标x
     * @param _x2 上一交点坐标x
     * @param _y2 下一交点坐标y
     * @param _Rc 圆曲线半径
     * @param _Lc 圆曲线长
     * @param _T1 上一切线长
     * @param _T2 下一切线长
     * @param _Ls1 上一缓和曲线长
     * @param _Ls2 下一缓和曲线长
     * @return 待算点坐标 x=ret[0] y=ret[1]
     */
    public static double[]  calculate_Eases_XY(double dk, double dist, double _dk, double _x, double _y, double _x1, double _y1, double _x2, double _y2, double _Rc, double _Lc, double _T1, double _T2, double _Ls1, double _Ls2){
        double fwj1=Math.atan2((_y-_y1),(_x-_x1));  //Math.atan2((_y-_y1),(_x-_x1))*180/Math.PI;
        if (fwj1<0) {
            fwj1=Math.PI+fwj1;  //360+fwj1;
        }
        double fwj2=Math.atan2((_y2-_y),(_x2-_x));  //Math.atan2((_y2-_y),(_x2-_x))*180/Math.PI;
        if (fwj2<0) {
            fwj2=Math.PI+fwj2;  //360+fwj2;
        }
        double pj=fwj1-fwj2;  //转角，左转为正，右转为负
        double ZH=_dk-_T1;
        double HZ=ZH+_Ls1+_Ls2+_Lc;

        double Ls1=dk-ZH;
        double Ls2=HZ-dk;
        double p1=Ls1-Math.pow(Ls1,5)/(40*_Rc*_Rc*_Ls1*_Ls1)+Math.pow(Ls1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls1, 4));
        double p2=Ls2-Math.pow(Ls2,5)/(40*_Rc*_Rc*_Ls2*_Ls2)+Math.pow(Ls2, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls2, 4));
        double q1=Math.pow(Ls1,3)/(6*_Rc*_Ls1)-Math.pow(Ls1,7)/(336*Math.pow(_Rc,3)*Math.pow(_Ls1,3));
        double q2=Math.pow(Ls2,3)/(6*_Rc*_Ls2)-Math.pow(Ls2,7)/(336*Math.pow(_Rc,3)*Math.pow(_Ls2,3));

        double w1=Math.pow(Ls1,2)/(2*_Rc*_Ls1);  //(Math.pow(Ls1,2)/(2*_Rc*_Ls1))*(180/Math.PI);
        double w2=Math.pow(Ls2,2)/(2*_Rc*_Ls2);  //(Math.pow(Ls2,2)/(2*_Rc*_Ls2))*(180/Math.PI);

        double _fwj1=fwj1-w1-Math.PI/2.0;  //fwj1-w1-90;
        double _fwj2=fwj2-Math.PI/2.0+w2;  //fwj2-90+w2;
        if (pj<0) {
            q1=-q1;
            q2=-q2;
            //dist = -dist;
            _fwj2=fwj2-Math.PI/2.0-w2;  //fwj2-90-w2;
            _fwj1=fwj1+w1-Math.PI/2.0;  //fwj1+w1-90;
        }
        double _p1=Math.sqrt(p1*p1+q1*q1);
        double _p2=Math.sqrt(p2*p2+q2*q2);

        double x_Ls1=_x+_T1*Math.cos(fwj1-Math.PI);  //_x+_T1*Math.cos(Math.toRadians(fwj1-180));
        double y_Ls1=_y+_T1*Math.sin(fwj1-Math.PI);  //_y+_T1*Math.sin(Math.toRadians(fwj1-180));

        double x_Ls2=_x+_T2*Math.cos(fwj2);  //_x+_T2*Math.cos(Math.toRadians(fwj2));
        double y_Ls2=_y+_T2*Math.sin(fwj2);  //_y+_T2*Math.sin(Math.toRadians(fwj2));

        double w_Ls1=fwj1-Math.atan2(q1,p1);  //fwj1-Math.atan2(q1,p1)*180/Math.PI;
        double _x_Ls1=_p1*Math.cos(w_Ls1)+x_Ls1;  //_p1*Math.cos(Math.toRadians(w_Ls1))+x_Ls1;
        double _y_Ls1=_p1*Math.sin(w_Ls1)+y_Ls1;  //_p1*Math.sin(Math.toRadians(w_Ls1))+y_Ls1;

        double w_Ls2=fwj2-Math.PI+Math.atan2(q2,p2);  //fwj2-180+Math.atan2(q2,p2)*180/Math.PI;
        double _x_Ls2=_p2*Math.cos(w_Ls2)+x_Ls2;  //_p2*Math.cos(Math.toRadians(w_Ls2))+x_Ls2;
        double _y_Ls2=_p2*Math.sin(w_Ls2)+y_Ls2;  //_p2*Math.sin(Math.toRadians(w_Ls2))+y_Ls2;

        double x1,y1,x2,y2,x,y;
        x1=_x_Ls1+dist*Math.cos(_fwj1);  //_x_Ls1+dist*Math.cos(Math.toRadians(_fwj1));
        y1=_y_Ls1+dist*Math.sin(_fwj1);  //_y_Ls1+dist*Math.sin(Math.toRadians(_fwj1));

        x2=_x_Ls2+dist*Math.cos(_fwj2);  //_x_Ls2+dist*Math.cos(Math.toRadians(_fwj2));
        y2=_y_Ls2+dist*Math.sin(_fwj2);  //_y_Ls2+dist*Math.sin(Math.toRadians(_fwj2));

        if (Ls1<_Ls1+0.05) {
            x=x1;
            y=y1;
        } else {
            x=x2;
            y=y2;
        }

        double[] ret = new double[2];
        ret[0] = x;
        ret[1] = y;
        return ret;
    }

    /**
     * 功能：计算缓和曲线上任一点的坐标
     *
     * @param dk 待算里程
     * @param dist 待算偏距
     * @param _dk 交点里程
     * @param _x 交点坐标x
     * @param _y 交点坐标y
     * @param _x1 上一交点坐标y
     * @param _y1 下一交点坐标x
     * @param _x2 上一交点坐标x
     * @param _y2 下一交点坐标y
     * @param _Rc 圆曲线半径
     * @param _Lc 圆曲线长
     * @param _R1 上一曲线半径
     * @param _R2 下一曲线半径
     * @param _T1 上一切线长
     * @param _T2 下一切线长
     * @param _Ls1 上一缓和曲线长
     * @param _Ls2 下一缓和曲线长
     * @return 待算点坐标 x=ret[0] y=ret[1]
     */
    public static double[]  calculate_Eases_XY(double dk, double dist, double _dk, double _x, double _y, double _x1, double _y1, double _x2, double _y2, double _Rc, double _Lc, double _R1, double _R2, double _T1, double _T2, double _Ls1, double _Ls2){
        double Ls1_1=(_Rc*_Ls1)/(_R1-_Rc);  //交点下第一段卵形曲线剩余长度
        double Ls2_1=(_Rc*_Ls2)/(_R2-_Rc);  //交点下第二段卵形曲线剩余长度
        double Ls1=Ls1_1+_Ls1;  //交点下第一段卵形曲线还原后虚总长度
        double Ls2=Ls2_1+_Ls2;  //交点下第二段卵形曲线还原后虚总长度

        double fwj1=Math.atan2((_y-_y1),(_x-_x1));  //第一方位角  Math.atan2((_y-_y1),(_x-_x1))*180/Math.PI;
        if (fwj1<0) {
            fwj1=Math.PI+fwj1;  //360+fwj1;
        }
        double fwj2=Math.atan2((_y2-_y),(_x2-_x));  //第二方位角  Math.atan2((_y2-_y),(_x2-_x))*180/Math.PI;
        if (fwj2<0) {
            fwj2=Math.PI+fwj2;  //360+fwj2;
        }
        double pj=fwj1-fwj2;  //转角，左转为正，右转为负
        double ZH=_dk-_T1;  //卵形曲线起点里程
        double HZ=ZH+_Ls1+_Ls2+_Lc;  //卵形曲线终点里程

        double QD=ZH-Ls1_1;  //交点下第一段卵形曲线还原后虚拟起点里程
        double ZD=HZ+Ls2_1;  //交点下第二段卵形曲线还原后虚拟终点里程

        double NN1=Ls1_1-Math.pow(Ls1_1,5)/(40*_Rc*_Rc*Ls1*Ls1)+Math.pow(Ls1_1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls1, 4));  //第一卵形曲线起点投射至上虚拟轴线Y值
        double SS1=Math.pow(Ls1_1,3)/(6*_Rc*Ls1)-Math.pow(Ls1_1,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls1,3));  //第一卵形曲线起点投射至上虚拟轴线X值
        double NN2=Ls2_1-Math.pow(Ls2_1,5)/(40*_Rc*_Rc*Ls2*Ls2)+Math.pow(Ls2_1, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls2, 4));  //第二卵形曲线终点投射至上虚拟轴线Y值
        double SS2=Math.pow(Ls2_1,3)/(6*_Rc*Ls2)-Math.pow(Ls2_1,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls2,3));  //第二卵形曲线终点投射至上虚拟轴线X值

        double x_Ls1=_x+_T1*Math.cos(fwj1-Math.PI);  //_x+_T1*Math.cos(Math.toRadians(fwj1-180));
        double y_Ls1=_y+_T1*Math.sin(fwj1-Math.PI);  //交点下第一段卵形曲线起点坐标  _y+_T1*Math.sin(Math.toRadians(fwj1-180));
        double x_Ls2=_x+_T2*Math.cos(fwj2);  //_x+_T2*Math.cos(Math.toRadians(fwj2));
        double y_Ls2=_y+_T2*Math.sin(fwj2);  //交点下第二段卵形曲线终点坐标  _y+_T2*Math.sin(Math.toRadians(fwj2));

        double p_Ls1=Math.sqrt(NN1*NN1+SS1*SS1);  //第一段卵形曲线起点至虚拟起点直线距离
        double w_Ls1_1=Math.pow(Ls1_1,2)/(2*_Rc*Ls1);  //第一段卵形曲线起点偏角  (Math.pow(Ls1_1,2)/(2*_Rc*Ls1))*(180/Math.PI);
        double w_Ls1_2=Math.atan2(SS1,NN1);  //Math.atan2(SS1,NN1)*180/Math.PI;
        double w_Ls1_3=fwj1+w_Ls1_1-w_Ls1_2-Math.PI;  //第一卵形曲线起点至虚拟起点方位角  fwj1+w_Ls1_1-w_Ls1_2-180;

        double p_Ls2=Math.sqrt(NN2*NN2+SS2*SS2);
        double w_Ls2_1=Math.pow(Ls2_1,2)/(2*_Rc*Ls2);  //第二段卵形曲线终点偏角  (Math.pow(Ls2_1,2)/(2*_Rc*Ls2))*(180/Math.PI);
        double w_Ls2_2=Math.atan2(SS2,NN2);  //Math.atan2(SS2,NN2)*180/Math.PI;
        double w_Ls2_3=fwj2-w_Ls2_1+w_Ls2_2;

        if (pj<0) {
            w_Ls1_3=fwj1-w_Ls1_1+w_Ls1_2-Math.PI;  //右偏时第一卵形曲线起点至虚拟起点方位角  fwj1-w_Ls1_1+w_Ls1_2-180;
            w_Ls2_3=fwj2+w_Ls2_1-w_Ls2_2;  //右偏时虚拟终点至第二卵形曲线终点方位角
        }

        double x_Ls1_1=x_Ls1+p_Ls1*Math.cos(w_Ls1_3);  //交点下第一段卵形曲线还原后虚拟起点x坐标  x_Ls1+p_Ls1*Math.cos(Math.toRadians(w_Ls1_3));
        double y_Ls1_1=y_Ls1+p_Ls1*Math.sin(w_Ls1_3);  //交点下第一段卵形曲线还原后虚拟起点y坐标  y_Ls1+p_Ls1*Math.sin(Math.toRadians(w_Ls1_3));
        double fwj_Ls1=fwj1+w_Ls1_1;  //交点下第一段卵形曲线还原后虚拟轴线方位角
        double x_Ls2_1=x_Ls2+p_Ls2*Math.cos(w_Ls2_3);  //交点下第二段卵形曲线还原后虚拟起点x坐标  x_Ls2+p_Ls2*Math.cos(Math.toRadians(w_Ls2_3));
        double y_Ls2_1=y_Ls2+p_Ls2*Math.sin(w_Ls2_3);  //交点下第二段卵形曲线还原后虚拟起点y坐标  y_Ls2+p_Ls2*Math.sin(Math.toRadians(w_Ls2_3));
        double fwj_Ls2=fwj2-w_Ls2_1;  //交点下第二段卵形曲线还原后虚拟轴线方位角

        if (pj<0) {
            fwj_Ls1=fwj1-w_Ls1_1;
            fwj_Ls2=fwj2+w_Ls2_1;
        }
        double Ls1_2=dk-QD;//第一段卵形曲线待求点至虚拟起点弧线距离
        double p1=Ls1_2-Math.pow(Ls1_2,5)/(40*_Rc*_Rc*Ls1*Ls1)+Math.pow(Ls1_2, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls1_2, 4));
        double q1=Math.pow(Ls1_2,3)/(6*_Rc*Ls1)-Math.pow(Ls1_2,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls1,3));
        double w1=Math.pow(Ls1_2,2)/(2*_Rc*Ls1);  //(Math.pow(Ls1_2,2)/(2*_Rc*Ls1))*(180/Math.PI);
        double _fwj1=fwj_Ls1-w1-Math.PI/2.0;  //fwj_Ls1-w1-90;

        double Ls2_2=ZD-dk;//第二段卵形曲线待求点至虚拟终点距离
        double p2=Ls2_2-Math.pow(Ls2_2,5)/(40*_Rc*_Rc*Ls2*Ls2)+Math.pow(Ls2_2, 9) / (3456 * Math.pow(_Rc, 4)*Math.pow(Ls2_2, 4));
        double q2=Math.pow(Ls2_2,3)/(6*_Rc*Ls2)-Math.pow(Ls2_2,7)/(336*Math.pow(_Rc,3)*Math.pow(Ls2,3));
        double w2=Math.pow(Ls2_2,2)/(2*_Rc*Ls2);  //(Math.pow(Ls2_2,2)/(2*_Rc*Ls2))*(180/Math.PI);
        double _fwj2=fwj_Ls2+w2-Math.PI/2.0;  //fwj_Ls2+w2-90;

        if (pj<0) {
            _fwj1=fwj_Ls1+w1-Math.PI/2.0;  //fwj_Ls1+w1-90;
            _fwj2=fwj_Ls2-w2-Math.PI/2.0;  //fwj_Ls2-w2-90;
        }

        double _p1=Math.sqrt(p1*p1+q1*q1);  //第一卵形曲线待求点至虚拟原点距离
        double _w1=fwj_Ls1-Math.atan2(q1,p1);  //第一卵形曲线待求点至虚拟原点方位角  fwj_Ls1-Math.atan2(q1,p1)*180/Math.PI;
        double _p2=Math.sqrt(p2*p2+q2*q2);
        double _w2=fwj_Ls2-Math.PI+Math.atan2(q2,p2);  //fwj_Ls2-180+Math.atan2(q2,p2)*180/Math.PI;

        if (pj<0) {
            _w1=fwj_Ls1+Math.atan2(q1,p1);  //fwj_Ls1+Math.atan2(q1,p1)*180/Math.PI;
            _w2=fwj_Ls2-Math.PI-Math.atan2(q2,p2);  //fwj_Ls2-180-Math.atan2(q2,p2)*180/Math.PI;
        }

        double x_Ls1_2=_p1*Math.cos(_w1)+x_Ls1_1;  //_p1*Math.cos(Math.toRadians(_w1))+x_Ls1_1;
        double y_Ls1_2=_p1*Math.sin(_w1)+y_Ls1_1;  // 第一段卵形曲线待求点中心坐标  _p1*Math.sin(Math.toRadians(_w1))+y_Ls1_1;

        double x_Ls2_2=_p2*Math.cos(_w2)+x_Ls2_1;  //_p2*Math.cos(Math.toRadians(_w2))+x_Ls2_1;
        double y_Ls2_2=_p2*Math.sin(_w2)+y_Ls2_1;  //第二段卵形曲线待求点中心坐标  _p2*Math.sin(Math.toRadians(_w2))+y_Ls2_1;

        double x1,y1,x2,y2,x,y;
        x1=x_Ls1_2+dist*Math.cos(_fwj1);  //x_Ls1_2+dist*Math.cos(Math.toRadians(_fwj1));
        y1=y_Ls1_2+dist*Math.sin(_fwj1);  //第一段卵形曲线待求点偏中坐标  y_Ls1_2+dist*Math.sin(Math.toRadians(_fwj1));

        x2=x_Ls2_2+dist*Math.cos(_fwj2);  //x_Ls2_2+dist*Math.cos(Math.toRadians(_fwj2));
        y2=y_Ls2_2+dist*Math.sin(_fwj2);  //第二段卵形曲线待求点偏中坐标  y_Ls2_2+dist*Math.sin(Math.toRadians(_fwj2));

        if (Ls1_2<Ls1+0.05) {
            x=x1;
            y=y1;
        } else {
            x=x2;
            y=y2;
        }

        double[] ret = new double[2];
        ret[0] = x;
        ret[1] = y;
        return ret;
    }

    /**
     * 功能：计算方位角fwj、偏角pj
     *
     * @param list
     */
    public static void calculate_fwj_pj(List<CurveElement> list) {
        int nJDNum = list.size();
        for (int i = 0; i < nJDNum - 1; i++) {
            //两点之间的 X,Y 坐标的差值
            CurveElement ce = list.get(i);
            CurveElement _ce = list.get(i + 1);
            double dx = _ce.getCeEx() - ce.getCeEx();
            double dy = _ce.getCeNy() - ce.getCeNy();

            if (dx >= 0.0 && dy > 0.0) {
                ce.setCeFwj(Math.atan(Math.abs(dx) / Math.abs(dy)));
            } else if (dx >= 0.0 && dy < 0.0) {
                ce.setCeFwj(Math.PI - Math.atan(Math.abs(dx) / Math.abs(dy)));
            } else if (dx < 0.0 && dy < 0.0) {
                ce.setCeFwj(Math.PI + Math.atan(Math.abs(dx) / Math.abs(dy)));
            } else if (dx <0.0 && dy >0.0) {
                ce.setCeFwj(2*Math.PI - Math.atan(Math.abs(dx) / Math.abs(dy)));
            } else if (dx > 0.0 && dy == 0.0) {
                ce.setCeFwj(Math.PI/2.0);
            } else if (dx < 0.0 && dy == 0.0) {
                ce.setCeFwj(3*Math.PI/2.0);
            }
        }

        for (int i = 0; i < nJDNum - 1; i++) {
            CurveElement ce = list.get(i);
            CurveElement _ce = list.get(i + 1);
            //计算交点偏角pj
            _ce.setCePj(_ce.getCeFwj() - ce.getCeFwj());
            if (_ce.getCePj() > Math.PI) {//转角范围-180到+180
                _ce.setCePj(_ce.getCePj()-2* Math.PI);
            } else if (_ce.getCePj() < -Math.PI) {
                _ce.setCePj(_ce.getCePj()+2* Math.PI);
            }
        }
    }

    /**
     * 功能：计算曲线缓和参数A、外失距E、曲线全长L
     *
     * @param list
     */
    public static void calculate_A_E_L(List<CurveElement> list) {
        for (CurveElement x: list) {
            x.setCeA1(Math.sqrt(x.getCeRc() * x.getCeLs1()));
            x.setCeA2(Math.sqrt(x.getCeRc() * x.getCeLs2()));
            x.setCeL(x.getCeLs1() + x.getCeLc() + x.getCeLs2());
            x.setCeE(Math.sqrt(Math.pow(x.getCeEx()-x.getCeQzX(),2)+Math.pow(x.getCeNy()-x.getCeQzY(),2)));
        }
    }

    /**
     * 功能：初始化曲线主点里程
     *
     * @param list 曲线要素列表
     * @param dk_begin 断链起点里程
     * @param dk_end 断链终点里程
     */
    public static void calculate_Point_DK(List<CurveElement> list, Double dk_begin, Double dk_end) {
        double len = dk_end!=null&&dk_begin!=null ? dk_end-dk_begin : 0;
        double dk = dk_end!=null ? dk_end:0;

        for (CurveElement x:list) {
            if(x.getCeDk() > dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()-len);
            }
        }

        for (int i = 1; i < list.size() - 1; i++) {
            CurveElement ce = list.get(i);
            CurveElement ce1 = list.get(i-1);
            CurveElement ce2 = list.get(i+1);
            ce.setCeZh(ce.getCeDk()-ce.getCeT1());
            ce.setCeHy(ce.getCeZh()+ce.getCeLs1());
            ce.setCeQz(ce.getCeHy()+ce.getCeLc()/2);
            ce.setCeYh(ce.getCeHy()+ce.getCeLc());
            ce.setCeHz(ce.getCeYh()+ce.getCeLs2());
            ce1.setCeZd(ce.getCeZh());
            ce2.setCeQd(ce.getCeHz());

            if (i == 1) {
                CurveElement _ce = list.get(0);
                _ce.setCeQd(_ce.getCeDk());
                _ce.setCeZh(_ce.getCeDk());
                _ce.setCeHy(_ce.getCeDk());
                _ce.setCeQz(_ce.getCeDk());
                _ce.setCeYh(_ce.getCeDk());
                _ce.setCeHz(_ce.getCeDk());
                ce.setCeQd(_ce.getCeHz());
            }
            if (i == list.size() - 2) {
                CurveElement _ce = list.get(list.size() - 1);
                _ce.setCeZh(_ce.getCeDk());
                _ce.setCeHy(_ce.getCeDk());
                _ce.setCeQz(_ce.getCeDk());
                _ce.setCeYh(_ce.getCeDk());
                _ce.setCeHz(_ce.getCeDk());
                _ce.setCeZd(_ce.getCeDk());
                ce.setCeZd(_ce.getCeZh());
            }
        }

        dk = dk_begin!=null ? dk_begin:0;
        for(CurveElement x:list){
            if(x.getCeDk() > dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()+len);
            }
            if(x.getCeQd() > dk && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()+len);
            }
            if(x.getCeZh() > dk && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()+len);
            }
            if(x.getCeHy() > dk && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()+len);
            }
            if(x.getCeQz() > dk && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()+len);
            }
            if(x.getCeYh() > dk && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()+len);
            }
            if(x.getCeHz() > dk && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > dk && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()+len);
            }
        }
    }

    /**
     * 功能：初始化曲线主点坐标
     *
     * @param list 曲线要素列表
     * @param dk_begin 断链起点里程
     * @param dk_end 断链终点里程
     */
    public static void calculate_Point_XY(List<CurveElement> list, Double dk_begin, Double dk_end) {
        double len = dk_end!=null&&dk_begin!=null ? dk_end-dk_begin : 0;
        double dk = dk_end!=null ? dk_end:0;

        for (CurveElement x:list) {
            if(x.getCeDk() > dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()-len);
            }
            if(x.getCeQd() > dk && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()-len);
            }
            if(x.getCeZh() > dk && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()-len);
            }
            if(x.getCeHy() > dk && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()-len);
            }
            if(x.getCeQz() > dk && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()-len);
            }
            if(x.getCeYh() > dk && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()-len);
            }
            if(x.getCeHz() > dk && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > dk && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()-len);
            }
        }

        for(int i=1; i<list.size()-1; i++) {
            CurveElement ce = list.get(i);
            CurveElement ce1 = list.get(i-1);
            CurveElement ce2 = list.get(i+1);

            double[] xys = calculate_Line_XY(ce.getCeZh(), 0, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy());
            ce.setCeZhX(xys[0]);
            ce.setCeZhY(xys[1]);

            xys = calculate_Line_XY(ce.getCeHz(), 0, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce2.getCeEx(), ce2.getCeNy());
            ce.setCeHzX(xys[0]);
            ce.setCeHzY(xys[1]);

            double[] _xys = calculate_HY_YH_XY(ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
            ce.setCeHyX(_xys[0]);
            ce.setCeHyY(_xys[1]);
            ce.setCeYhX(_xys[2]);
            ce.setCeYhY(_xys[3]);

            xys = calculate_Circle_XY(ce.getCeQz(), 0, ce.getCeHy(), ce.getCeHyX(), ce.getCeHyY(), ce.getCeYhX(), ce.getCeYhY(), ce.getCeEx(), ce.getCeNy(), ce.getCeRc());
            ce.setCeQzX(xys[0]);
            ce.setCeQzY(xys[1]);

            ce1.setCeZdX(ce.getCeZhX());
            ce1.setCeZdY(ce.getCeZhY());
            ce2.setCeQdX(ce.getCeHzX());
            ce2.setCeQdY(ce.getCeHzY());

            if (i == 1) {
                CurveElement _ce = list.get(0);
                _ce.setCeQdX(_ce.getCeEx());
                _ce.setCeQdY(_ce.getCeNy());
                _ce.setCeZhX(_ce.getCeEx());
                _ce.setCeZhY(_ce.getCeNy());
                _ce.setCeHyX(_ce.getCeEx());
                _ce.setCeHyY(_ce.getCeNy());
                _ce.setCeQzX(_ce.getCeEx());
                _ce.setCeQzY(_ce.getCeNy());
                _ce.setCeYhX(_ce.getCeEx());
                _ce.setCeYhY(_ce.getCeNy());
                _ce.setCeHzX(_ce.getCeEx());
                _ce.setCeHzY(_ce.getCeNy());
                ce.setCeQdX(_ce.getCeHzX());
                ce.setCeQdY(_ce.getCeHzY());
            }
            if (i == list.size() - 2) {
                CurveElement _ce = list.get(list.size() - 1);
                _ce.setCeZhX(_ce.getCeEx());
                _ce.setCeZhY(_ce.getCeNy());
                _ce.setCeHyX(_ce.getCeEx());
                _ce.setCeHyY(_ce.getCeNy());
                _ce.setCeQzX(_ce.getCeEx());
                _ce.setCeQzY(_ce.getCeNy());
                _ce.setCeYhX(_ce.getCeEx());
                _ce.setCeYhY(_ce.getCeNy());
                _ce.setCeHzX(_ce.getCeEx());
                _ce.setCeHzY(_ce.getCeNy());
                _ce.setCeZdX(_ce.getCeEx());
                _ce.setCeZdY(_ce.getCeNy());
                ce.setCeZdX(_ce.getCeZhX());
                ce.setCeZdY(_ce.getCeZhY());
            }
        }

        dk = dk_begin!=null ? dk_begin:0;
        for (CurveElement x:list) {
            if(x.getCeDk() > dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()+len);
            }
            if(x.getCeQd() > dk && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()+len);
            }
            if(x.getCeZh() > dk && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()+len);
            }
            if(x.getCeHy() > dk && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()+len);
            }
            if(x.getCeQz() > dk && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()+len);
            }
            if(x.getCeYh() > dk && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()+len);
            }
            if(x.getCeHz() > dk && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > dk && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()+len);
            }
        }
    }

    /**
     * 功能： 计算曲线上任一点坐标
     *
     * @param list 曲线要素列表
     * @param dk 起点里程
     * @param dist 里程偏距
     * @param dk_begin 断链起点里程
     * @param dk_end 断链终点里程
     * @return 坐标动态数组
     */
    public static double[] calculate_Curve_XY(List<CurveElement> list, Double dk, Double dist, Double dk_begin, Double dk_end) {
        double len = dk_begin!=null&&dk_end!=null ? dk_end-dk_begin : 0;
        double _dk = dk_end!=null ? dk_end:0;
        double _dist = dist!=null ? dist:0;

        for (CurveElement x:list) {
            if(x.getCeDk() > _dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()-len);
            }
            if(x.getCeQd() > _dk && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()-len);
            }
            if(x.getCeZh() > _dk && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()-len);
            }
            if(x.getCeHy() > _dk && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()-len);
            }
            if(x.getCeQz() > _dk && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()-len);
            }
            if(x.getCeYh() > _dk && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()-len);
            }
            if(x.getCeHz() > _dk && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > _dk && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()-len);
            }
        }

        _dk = dk>_dk ? dk-len:dk;
        double[] xys = new double[2];
        for(int i=1; i<list.size()-1; i++) {
            CurveElement ce = list.get(i);
            CurveElement ce1 = list.get(i-1);
            CurveElement ce2 = list.get(i+1);

            if(Double.compare(_dk, ce.getCeQd())>=0 && Double.compare(_dk, ce.getCeZd())<=0) {
                if(ce.inDkPart(_dk) > -1) {
                    switch (ce.inDkPart(_dk)) {
                        case 1:
                            xys = CoordinateCalculate.calculate_Line_XY(_dk, _dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy());
                            break;
                        case 5:
                            xys = CoordinateCalculate.calculate_Line_XY(_dk, _dist, ce2.getCeDk(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeEx(), ce.getCeNy());
                            break;
                        case 2:
                            if(ce.getCeR1().compareTo(0.000000) > 0) {
                                xys = CoordinateCalculate.calculate_Eases_XY(_dk, _dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                            } else {
                                xys = CoordinateCalculate.calculate_Eases_XY(_dk, _dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                            }
                            break;
                        case 4:
                            if(ce.getCeR2().compareTo(0.000000) > 0) {
                                xys = CoordinateCalculate.calculate_Eases_XY(_dk, _dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                            } else {
                                xys = CoordinateCalculate.calculate_Eases_XY(_dk, _dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                            }
                            break;
                        case 3:
                            double[] _xys = CoordinateCalculate.calculate_HY_YH_XY(ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                            xys = CoordinateCalculate.calculate_Circle_XY(_dk, _dist, ce.getCeHy(), _xys[0], _xys[1], _xys[2], _xys[3], ce.getCeEx(), ce.getCeNy(), ce.getCeRc());
                            break;
                    }
                }

                break;
            }
        }

        _dk = dk_begin!=null ? dk_begin:0;
        for (CurveElement x:list) {
            if(x.getCeDk() > _dk && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()+len);
            }
            if(x.getCeQd() > _dk && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()+len);
            }
            if(x.getCeZh() > _dk && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()+len);
            }
            if(x.getCeHy() > _dk && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()+len);
            }
            if(x.getCeQz() > _dk && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()+len);
            }
            if(x.getCeYh() > _dk && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()+len);
            }
            if(x.getCeHz() > _dk && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > _dk && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()+len);
            }
        }

        return xys;
    }

    /**
     * 功能： 计算曲线上任一点坐标
     *
     * @param list 曲线要素列表
     * @param dk_begin 起点里程
     * @param dk_end 终点里程
     * @param dk_gap 里程间隔
     * @param dk_dist 里程偏距
     * @param dk_begin_break 断链起点里程
     * @param dk_end_break 断链终点里程
     * @return 坐标动态数组
     */
    public static List<Map> calculate_Curve_XYS(List<CurveElement> list, Double dk_begin, Double dk_end, Double dk_gap, Double dk_dist, Double dk_begin_break, Double dk_end_break) {
        double len = dk_begin_break!=null&&dk_end_break!=null ? dk_end_break-dk_begin_break : 0;
        double dk0 = dk_end_break!=null ? dk_end_break:0;
        double dk1 = dk_begin!=null ? dk_begin:0;
        double dk2 = dk_end!=null ? dk_end:0;

        for (CurveElement x:list) {
            if(x.getCeDk() > dk0 && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()-len);
            }
            if(x.getCeQd() > dk0 && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()-len);
            }
            if(x.getCeZh() > dk0 && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()-len);
            }
            if(x.getCeHy() > dk0 && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()-len);
            }
            if(x.getCeQz() > dk0 && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()-len);
            }
            if(x.getCeYh() > dk0 && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()-len);
            }
            if(x.getCeHz() > dk0 && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > dk0 && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()-len);
            }
        }

        double gap = dk_gap!=null ? dk_gap:0;
        double dist = dk_dist!=null ? dk_dist:0;

        double _dk=dk1;
        List<Map> xys_list = new ArrayList<>();
        while (_dk<dk2) {
            double dk = _dk>dk0 ? _dk-len:_dk;
            for(int i=1; i<list.size()-1; i++) {
                CurveElement ce = list.get(i);
                CurveElement ce1 = list.get(i-1);
                CurveElement ce2 = list.get(i+1);

                if(Double.compare(dk, ce.getCeQd())>=0 && Double.compare(dk, ce.getCeZd())<=0) {
                    double[] xys = new double[2];
                    if(ce.inDkPart(dk) > -1) {
                        switch (ce.inDkPart(dk)) {
                            case 1:
                                xys = CoordinateCalculate.calculate_Line_XY(dk, dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy());
                                break;
                            case 5:
                                xys = CoordinateCalculate.calculate_Line_XY(dk, dist, ce2.getCeDk(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeEx(), ce.getCeNy());
                                break;
                            case 2:
                                if(ce.getCeR1().compareTo(0.000000) > 0) {
                                    xys = CoordinateCalculate.calculate_Eases_XY(dk, dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                                } else {
                                    xys = CoordinateCalculate.calculate_Eases_XY(dk, dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                                }
                                break;
                            case 4:
                                if(ce.getCeR2().compareTo(0.000000) > 0) {
                                    xys = CoordinateCalculate.calculate_Eases_XY(dk, dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                                } else {
                                    xys = CoordinateCalculate.calculate_Eases_XY(dk, dist, ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                                }
                                break;
                            case 3:
                                double[] _xys = CoordinateCalculate.calculate_HY_YH_XY(ce.getCeDk(), ce.getCeEx(), ce.getCeNy(), ce1.getCeEx(), ce1.getCeNy(), ce2.getCeEx(), ce2.getCeNy(), ce.getCeRc(), ce.getCeLc(), ce.getCeR1(), ce.getCeR2(), ce.getCeT1(), ce.getCeT2(), ce.getCeLs1(), ce.getCeLs2());
                                xys = CoordinateCalculate.calculate_Circle_XY(dk, dist, ce.getCeHy(), _xys[0], _xys[1], _xys[2], _xys[3], ce.getCeEx(), ce.getCeNy(), ce.getCeRc());
                                break;
                        }

                        Map map = new HashMap();
                        map.put("dk", _dk);
                        map.put("x",xys[0]);
                        map.put("y",xys[1]);
                        xys_list.add(map);
                    }

                    break;
                }
            }

            _dk = _dk+gap;
        }

        dk0 = dk_begin_break!=null ? dk_begin_break:0;
        for (CurveElement x:list) {
            if(x.getCeDk() > dk0 && Math.abs(len) > 0) {
                x.setCeDk(x.getCeDk()+len);
            }
            if(x.getCeQd() > dk0 && Math.abs(len) > 0) {
                x.setCeQd(x.getCeQd()+len);
            }
            if(x.getCeZh() > dk0 && Math.abs(len) > 0) {
                x.setCeZh(x.getCeZh()+len);
            }
            if(x.getCeHy() > dk0 && Math.abs(len) > 0) {
                x.setCeHy(x.getCeHy()+len);
            }
            if(x.getCeQz() > dk0 && Math.abs(len) > 0) {
                x.setCeQz(x.getCeQz()+len);
            }
            if(x.getCeYh() > dk0 && Math.abs(len) > 0) {
                x.setCeYh(x.getCeYh()+len);
            }
            if(x.getCeHz() > dk0 && Math.abs(len) > 0) {
                x.setCeHz(x.getCeHz()+len);
            }
            if(x.getCeZd() > dk0 && Math.abs(len) > 0) {
                x.setCeZd(x.getCeZd()+len);
            }
        }

        return xys_list;
    }

    /**
     * 功能：坐标经纬度转换
     *
     * @param Xl 转换的坐标x
     * @param Yn 转换的坐标y
     * @param Tp 坐标系类型：1为1954北京坐标系，2为1980西安坐标系，3为WGS-84坐标系，4为2000国家坐标系
     * @param L0 中央子午线经度
     * @param H0 投影面高程
     * @return 经纬度度数组 L=ret[0] N=ret[1]
     *
     */
    public static double[] transform_Curve_XY(double Xl, double Yn, int Tp, double L0, double H0){
        double a=0; //a为坐标系椭球参数中地球长轴半径
        double b=0; //b为坐标系椭球参数中地球短轴半径

        if(Tp<=1) { //1954北京坐标系椭球参数
            a = 6378254;
            b = 6356863.01877304;
        } else if(Tp<=2) { //1980西安坐标系系椭球参数
            a = 6378140;
            b = 6356755.28815752;
        } else if(Tp<=3) { //WGS-84坐标系椭球参数
            a = 6378137;
            b = 6356752.3142;
        } else { //2000中国大地坐标系椭球参数
            a=6378137;
            b=6356752.3141;
        }

        a=a + H0;
        b=b + H0;

        double e1=Math.sqrt(a*a-b*b)/a; //第一偏心率e
        double e2=Math.sqrt(a*a-b*b)/b; //第二偏心率e2
        double c=a*a/b; //常数c
        double ee=e1*e1;
        double m0=a*(1-ee);
        double m2=(3*ee*m0)/2;
        double m4=(5*ee*m2)/4;
        double m6=(7*ee*m4)/6;
        double m8=(9*ee*m6)/8;
        double m10=(11*ee*m8)/10;

        double a0=m0+m2/2+3*m4/8+5*m6/16+35*m8/128;
        double a2=m2/2+m4/2+15*m6/32+7*m8/16;
        double a4=m4/8+3*m6/16+7*m8/32;
        double a6=m6/32+m8/16;
        double a8=m8/128;

        double xa0=a0*Math.PI/180;
        double Bf1=Xl/a0;//初始化Bf
        double bf;

        //按子午线弧长公式迭代计算
        double Bfi0=Bf1;
        double Bfi1;
        double FBfi0;
        while (true)
        {
            FBfi0=-a2*Math.sin(2*Bfi0)/2+a4*Math.sin(4*Bfi0)/4-a6*Math.sin(6*Bfi0)/6+a8*Math.sin(8*Bfi0)/8;
            Bfi1=(Xl-FBfi0)/a0;
            if(Math.abs(Bfi1-Bfi0)<Math.PI*Math.pow(10,-8)/(36*18))
                break;
            Bfi0=Bfi1;
        }
        bf=Bfi1;
        // double R1=2.518828476*0.001,R2=3.7009546*Math.pow(10,-6),R3=7.465*Math.pow(10,-9);//2000中国大地坐标系计算系数
        double Bf= bf;//底点纬度
        double tf=Math.tan(Bf);
        double sinBf=Math.sin(Bf);
        double cosBf=Math.cos(Bf);
        double nn22=e2*e2*cosBf*cosBf;//引入的符号
        double Wf=Math.sqrt(1-e1*e1*sinBf*sinBf);//引入的辅助函数
        double Vf=Math.sqrt(1+e2*e2*cosBf*cosBf);
        double Mf=a*(1-e1*e1)/Math.pow(Wf,3);//底点纬度下子午圈半径
        double y=Yn-500000;
        double Nf=a/Wf;//底点纬度下卯酉圈半径

        //经度:L,纬度:N
        double N=(Bf-(tf*y*y)/(2*Mf*Nf)+(tf*(5+3*tf*tf+nn22*nn22-9*nn22*nn22*tf*tf)*Math.pow(y,4))/(24*Mf*Math.pow(Nf,3))
                -(tf*(61+90*tf*tf+45*Math.pow(tf,4))*Math.pow(y,6))/(720*Mf*Math.pow(Nf,5)))*180/Math.PI;
        double l=y/(Nf*cosBf)-(1+2*tf*tf+nn22*nn22)*Math.pow(y,3)/(6*Math.pow(Nf,3))*cosBf+(5+28*tf*tf+24*Math.pow(tf,4))
                *Math.pow(y,5)/(120*Math.pow(Nf,5)*cosBf);
        double L=L0+l*180/Math.PI;


        int _d1 = (int)L;
        double _t1 = (L - _d1) * 60;
        int _m1 = (int) _t1;
        double _s1 = (_t1 - _m1) * 60;

        int _d2 = (int)N;
        double _t2 = (N - _d2) * 60;
        int _m2 = (int) _t2;
        double _s2 = (_t2 - _m2) * 60;
        String.format("经度L：%d度%d分%.3f秒  维度N：%d度%d分%.3f秒",_d1,_m1,_s1,_d2,_m2,_s2);

        double[] ret = new double[2];
        ret[0] = L;
        ret[1] = N;

        return ret;
    }
}
