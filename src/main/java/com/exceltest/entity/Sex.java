package com.exceltest.entity;

import com.exceltest.options.SexOptions;

import java.util.Objects;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:38
 */
public class Sex {
    private Integer id;
    private String name;

    public Sex() {
    }

    public Sex(Integer id) {
        this.id = id;
        this.name = new SexOptions().get()[id];
    }

    public Sex(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Sex sex = (Sex) o;
        return Objects.equals(id, sex.id) &&
                Objects.equals(name, sex.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("{");
        sb.append("id:").append(id);
        sb.append(", name:'").append(name).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
