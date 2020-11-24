<%--
  Created by IntelliJ IDEA.
  User:    Administrator
  author:  信息化管理部-方波
  site:    http://www.cr121.com/
  company: 中铁十二局集团第一工程有限公司
  Date:    2020/4/1
  Time:    15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
  <title>VUE Ag Grid 表格</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/ag-grid-24.1.0/ag-grid-community/styles/ag-grid.css">
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/sortable-1.11.0/sortable.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue.draggable-2.24.2/vue-draggable.umd.js"></script>
  <style>
    /*定义要拖拽元素的样式*/
    table.itxst {
      color: #333333;
      border: #ddd solid 1px;
      border-collapse: collapse;
    }

    table.itxst th {
      border: #ddd solid 1px;
      padding: 8px;
      background-color: #dedede;
    }

    table.itxst td {
      border: #ddd solid 1px;
      padding: 8px;
      background-color: #ffffff;
    }

    table.itxst tr {
      cursor: pointer;
    }

    table.itxst td.move:hover {
      cursor: move;
    }

    .itxst {
      margin: 10px;
    }

    .title {
      padding: 6px 12px;
    }

    .col {
      width: 40%;
      flex: 1;
      padding: 10px;
      border: solid 1px #eee;
      border-radius: 5px;
      float: left;
    }

    .col + .col {
      margin-left: 10px;
    }
    .item {
      padding: 6px 12px;
      margin: 0px 10px 0px 10px;
      border: solid 1px #eee;
      background-color: #f1f1f1;
    }

    .item:hover {
      background-color: #fdfdfd;
      cursor: move;
    }

    .item + .item {
      border-top: none;
      margin-top: 6px;
    }
  </style>
</head>
<body>
  <h3>vue.draggable一款基于vue的拖拽插件</h3>
  <div id="app">
    <div>{{drag?'拖拽中':'拖拽停止'}}</div>
    <draggable v-model="myArray" chosen-class="chosen" force-fallback="true" group="people" animation="1000" @start="onStart" @end="onEnd">
      <transition-group>
        <div class="item" v-for="element in myArray" :key="element.id">{{element.name}}</div>
      </transition-group>
    </draggable>
  </div>

  <hr>
  <h3>vue.draggable对table表格进行拖动进行排序</h3>
  <div id="app-table">
    <!--使用draggable组件-->
    <div>点击第一列数字进行拖动，其他列拖拽无效</div>
    <table class="itxst">
      <tbody v-model="list" is='draggable' animation="500"  force-fallback="true">
      <tr v-for="item in list" :key="item.id">
        <td style="width:50px" class="move">{{item.id}}</td>
        <td style="width:250px">{{item.name}}</td>
      </tr>
      </tbody>
    </table>
  </div>

  <hr>
  <h3>vue.draggable两列或多列之间相互拖动</h3>
  <div id="app-drag">
    <!--使用draggable组件-->
    <div class="itxst">
      <div class="col">
        <div class="title">国内网站</div>
        <draggable v-model="arr1" group="site" animation="300" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr1" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
      <div class="col">
        <div class="title">你可以把左边的元素拖到右边</div>
        <draggable v-model="arr2" group="site" animation="100" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr2" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
    </div>
  </div>

  <hr>
  <h3>vue.draggable group 拖拽分组多组之间相互拖拽</h3>
  <div id="app-group">
    <!--使用draggable组件-->
    <div class="itxst">
      <div class="col">
        <div class="title">A列</div>
        <draggable v-model="arr1" group="site" animation="300" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr1" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
      <div class="col">
        <div class="title">B列</div>
        <draggable v-model="arr2" group="site" animation="100" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr2" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
      <div class="col">
        <div class="title">C列</div>
        <draggable v-model="arr3" group="c" animation="100" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr3" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
    </div>
  </div>

  <hr>
  <h3>vue.draggable delay 鼠标按下后等待n秒才允许拖动</h3>
  <div id="app-delay">
    <!--使用draggable组件-->
    <div class="itxst">
      <div class="col">
        <div class="title">按下一秒后才允许拖动</div>
        <draggable v-model="arr1" delay="1000" group="site" animation="300" dragClass="dragClass" ghostClass="ghostClass" chosenClass="chosenClass" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr1" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
    </div>
  </div>

  <hr>
  <h3>vue.draggable disabled 开启和禁用拖动</h3>
  <div id="app-disabled">
    <!--使用draggable组件-->
    <div class="itxst">
      <input type="button" class="title" @click="setJY" v-if="disabled==false" value="禁用拖拽">
      <input type="button" class="title" @click="setQY" v-if="disabled==true" value="开启拖拽">
      <div class="col">
        <draggable v-model="arr1" :disabled="disabled" animation="300" @start="onStart" @end="onEnd">
          <transition-group>
            <div class="item" v-for="item in arr1" :key="item.id">{{item.name}}</div>
          </transition-group>
        </draggable>
      </div>
    </div>
  </div>

<script>
    //注册vue-draggable组件
    Vue.component('vue-draggable', window.vuedraggable);


    ////////////////////////////////////////////
    //vue.draggable一款基于vue的拖拽插件
    new Vue({
        el: '#app',
        components: {
            vuedraggable: window.vuedraggable,//当前页面注册组件
        },
        data() {
            return {
                drag: false,
                myArray: [
                    { people: 'cn', id: 1, name: 'www.itxst.com' },
                    { people: 'cn', id: 2, name: 'www.baidu.com' },
                    { people: 'cn', id: 3, name: 'www.taobao.com' },
                    { people: 'us', id: 4, name: 'www.google.com' }
                ]
            };
        },
        methods: {
            onStart() {
                this.drag = true;
            },
            onEnd() {
                this.drag = false;
            }
        }
    });



    ////////////////////////////////////////////
    //vue.draggable对table表格进行拖动进行排序
    new Vue({
        el: '#app-table',
        components: {
            vuedraggable: window.vuedraggable,
        },
        data() {
            return {
                drag: false,
                list: [
                    { id: 1, name: 'www.itxst.com',g:'g' },
                    { id: 2, name: 'www.baidu.com', g: 'g'},
                    { id: 3, name: 'www.taobao.com', g: 'g' },
                    { id: 4, name: 'www.google.com', g: 'g'}
                ]
            };
        },
        methods: {
            onStart() {
                this.drag = true;
            },
            onEnd() {
                this.drag = false;
            }
        }
    });



    ////////////////////////////////////////////
    //vue.draggable两列或多列之间相互拖动
    new Vue({
        el: '#app-drag',
        components: {
            vuedraggable: window.vuedraggable,
        },
        data() {
            return {
                drag: false,
                arr1: [
                    { id: 1, name: 'www.itxst.com' },
                    { id: 2, name: 'www.jd.com' },
                    { id: 3, name: 'www.baidu.com' },
                    { id: 4, name: 'www.taobao.com' }
                ],
                arr2: [
                    { id: 1, name: 'www.google.com' },
                    { id: 2, name: 'www.msn.com' },
                    { id: 3, name: 'www.ebay.com' },
                    { id: 4, name: 'www.yahoo.com' }
                ]
            };
        },
        methods: {
            onStart() {
                this.drag = true;
            },
            onEnd() {
                this.drag = false;
            },

        }
    });



    ////////////////////////////////////////////
    //vue.draggable group 拖拽分组多组之间相互拖拽
    new Vue({
        el: '#app-group',
        components: {
            vuedraggable: window.vuedraggable,
        },
        data() {
            return {
                drag: false,
                arr1: [
                    { id: 1, name: 'www.itxst.com' },
                    { id: 2, name: 'www.jd.com' },
                    { id: 3, name: 'www.baidu.com' },
                    { id: 3, name: 'www.taobao.com' }
                ],
                arr2: [
                    { id: 1, name: 'www.google.com' },
                    { id: 2, name: 'www.msn.com' },
                    { id: 3, name: 'www.ebay.com' },
                    { id: 4, name: 'www.yahoo.com' }
                ],
                arr3: [
                    { id: 1, name: 'item 1' },
                    { id: 2, name: 'item 2' },
                    { id: 3, name: 'item 3' },
                    { id: 4, name: 'item 4' }
                ]
            };
        },
        methods: {
            onStart() {
                this.drag = true;
            },
            onEnd() {
                this.drag = false;
            },

        }
    });



    ////////////////////////////////////////////
    //vue.draggable delay 鼠标按下后等待n秒才允许拖动
    new Vue({
        el: '#app-delay',
        components: {
            vuedraggable: window.vuedraggable,
        },
        data() {
            return {
                drag: false,
                arr1: [
                    { id: 1, name: 'www.itxst.com' },
                    { id: 2, name: 'www.jd.com' },
                    { id: 3, name: 'www.baidu.com' },
                    { id: 4, name: 'www.taobao.com' }
                ]
            };
        },
        methods: {
            onStart() {
                this.drag = true;
            },
            onEnd() {
                this.drag = false;
            },

        }
    });



    ////////////////////////////////////////////
    //vue.draggable disabled 开启和禁用拖动
    new Vue({
        el: '#app-disabled',
        components: {
            vuedraggable: window.vuedraggable,
        },
        data() {
            return {
                disabled: false,
                //定义要被拖拽对象的数组
                arr1: [
                    { id: 1, name: 'www.itxst.com' },
                    { id: 2, name: 'www.jd.com' },
                    { id: 3, name: 'www.baidu.com' },
                    { id: 4, name: 'www.taobao.com' }
                ]
            };
        },
        methods: {
            //设置禁止拖拽
            setJY() {
                this.disabled = true;
            },
            //设置启用拖拽
            setQY() {
                this.disabled = false;
            },
            onStart() {
                this.drag = true;
            },
            //开始拖拽事件
            onStart() {
                this.drag = true;
            },
            //拖拽结束事件
            onEnd() {
                this.drag = false;
            },
        },
    });
</script>
</body>
</html>