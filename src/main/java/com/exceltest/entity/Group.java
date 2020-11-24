package com.exceltest.entity;

import com.exceltest.options.GroupOptions;

import java.util.List;
import java.util.Objects;

/**
 * @author 信息化管理部-方波
 * @site http://www.cr121.com/
 * @company 中铁十二局集团第一工程有限公司
 * @create 2020-07-22 17:38
 */
public class Group {
    private Integer id;
    private String name;

    public Group() {
    }

    public Group(Integer id) {
        this.id = id;
        this.name = new GroupOptions().get()[id];
    }

    public Group(String name) {
        this.name = name;
        String[] list = new GroupOptions().get();
        for(int i=0; i<list.length; i++)
        {
            if(list[i].equals(name)) {
                this.id = i;
            }
        }
    }

    public Group(Integer id, String name) {
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
        Group group = (Group) o;
        return Objects.equals(id, group.id) &&
                Objects.equals(name, group.name);
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
