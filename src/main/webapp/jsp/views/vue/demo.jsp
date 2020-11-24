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
  <title>VUE表单</title>
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/vue-multiselect-2.1.6/vue-multiselect.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/artDialog-4.1.7/skins/default.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/res/js/vue-select2-4.0.13/css/select2.css">

  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/jquery-3.5.1/jquery.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-multiselect-2.1.6/vue-multiselect.min.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/artDialog-4.1.7/artDialog.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-select2-4.0.13/js/select2.full.js"></script>
  <style>
    body {
      padding: 10px
    }
    .use-class{
      background: #444;
      color: #eee;
    }
    .image {
      width: 50px;
      height: 50px;
      display: inline-block;
      border: solid 1px #ddd;
      padding: 5px;
      border-radius: 5px;
    }

    .desc {
      display: inline-block;
      margin-left: 10px;
    }

    .title, .small {
      display: block;
    }
    .table-demo {
      width: 80%;
      margin: 30px auto 0px auto;
    }
    .fixed-table-header {
      border-right: solid 1px #ddd;
      border-top: solid 1px #ddd;
    }
    .fixed-table-header table  {
      border-top: solid 0px #ddd !important;
      margin-top:-1px;
    }
  </style>
</head>

<body>
<h2 style="color: red">Vue 表单控件模板</h2>
<div id="app">
  <!-- 文本
  过滤器,与Linux中的管道类似，vue.js也使用的是|:这样就能输出message的大写了,过滤器也能串联在一起使用
  可以在两个大括号中，可以在 v-bind 指令中 过滤器是 JavaScript 函数，因此可以接受参数 -->
  <p>{{ message }}</p>
  <p>{{ message | uppercase }}</p>
  <p>{{ message | reverse | capitalize }}</p>
  <!-- 字符串连接 -->
  <p>{{ message + ' >> 菜鸟教程' }}</p>
  <!-- 用户输入 在 input 输入框中我们可以使用 v-model 指令来实现双向数据绑定
   v-model 指令用来在 input、select、textarea、checkbox、radio 等表单控件元素上创建双向数据绑定，根据表单上的值，自动更新绑定的元素的值 -->
  <input v-model="message">

  <hr>
  <!-- 列表输出使用 v-for(v-for取代了1.0以前版本中的v-repeat) 这个指令就能完成 -->
  <ul>
    <li v-for="todo in items">
      {{ todo.text }}
    </li>
  </ul>

  <hr>
  <!-- 多维数组实例 -->
  <ul>
    <li v-for="item in items">
      {{ parent }} - {{ $index }} - {{ item.text }}
    </li>
  </ul>

  <hr>
  <!-- 指令
  指令是带有 v- 前缀的特殊属 指令用于在表达式的值改变时，将某些行为应用到 DOM 上
  v-if 指令实现一个条件块,也可以用 v-else 添加一个 "else" v-else 、v-else-if 必须跟在 v-if 或者 v-else-if之后 -->
  <div v-if="Math.random() > 0.5">随机数大于 0.5</div>
  <div v-else>随机数不大于 0.5</div>

  <hr>
  <!-- 使用 v-html 指令用于输出 html 代码 -->
  <div v-html="message"></div>

  <hr>
  <!-- 属性
  HTML 属性中的值应使用 v-bind 指令 -->
  <label for="r1">修改颜色</label><input type="checkbox" v-model="use" id="r1"><br>
  <div v-bind:class="{'use-class': use}">
    v-bind:class 指令
  </div>

  <hr>
  <!-- 表达式
  Vue.js 都提供了完全的 JavaScript 表达式支持 -->
  {{5+5}}<br>
  {{ ok ? 'YES' : 'NO' }}<br>
  {{ message.split('').reverse().join('') }}
  <div v-bind:id="'list-' + id">菜鸟教程</div>

  <hr>
  <!-- 参数
  参数在指令后以冒号指明。例如， v-bind 指令被用来响应地更新 HTML 属性
  常用的指令提供了特别的缩写 -->
  <pre><a v-bind:href="url">菜鸟教程</a></pre>
  <!-- v-bind:href 缩写 :href -->
  <pre><a :href="url">菜鸟教程</a></pre>


  <hr>
  <!-- 复选框
  复选框如果是一个为逻辑值，如果是多个则绑定到同一个数组： -->
  <p>单个复选框：</p>
  <input type="checkbox" id="ck-single" v-model="checked">
  <label for="ck-single">{{ checked }}</label>
  <p>多个复选框：</p>
  <input type="checkbox" id="ck-runoob" value="Runoob" v-model="checkedNames">
  <label for="ck-runoob">Runoob</label>
  <input type="checkbox" id="ck-google" value="Google" v-model="checkedNames">
  <label for="ck-google">Google</label>
  <input type="checkbox" id="ck-taobao" value="Taobao" v-model="checkedNames">
  <label for="ck-taobao">taobao</label>
  <br>
  <span>选择的值为: {{ checkedNames }}</span>

  <hr>
  <!-- 单选按钮
  以下实例中演示了单选按钮的双向数据绑定： -->
  <input type="radio" id="rd-runoob" value="Runoob" v-model="picked">
  <label for="rd-runoob">Runoob</label>
  <br>
  <input type="radio" id="rd-google" value="Google" v-model="picked">
  <label for="rd-google">Google</label>
  <br>
  <span>选中值为: {{ picked }}</span>

  <hr>
  <!-- select 列表
  以下实例中演示了下拉列表的双向数据绑定： -->
  <select v-model="selected" name="fruit">
    <option value="">选择一个网站</option>
    <option value="www.runoob.com">Runoob</option>
    <option value="www.google.com">Google</option>
  </select>
  <div id="output">
    选择的网站是: {{selected}}
  </div>

  <hr>
  <!-- 修饰符
  .lazy
  在默认情况下， v-model 在 input 事件中同步输入框的值与数据，但你可以添加一个修饰符 lazy ，从而转变为在 change 事件中同步：
  在 "change" 而不是 "input" 事件中更新 -->
  <input v-model.lazy="msg" >
  <!-- .number
  如果想自动将用户的输入值转为 Number 类型（如果原值的转换结果为 NaN 则返回原值），可以添加一个修饰符 number 给 v-model 来处理输入值：
  这通常很有用，因为在 type="number" 时 HTML 中输入的值也总是会返回字符串类型。-->
  <input v-model.number="age" type="number">
  <!-- .trim
  如果要自动过滤用户输入的首尾空格，可以添加 trim 修饰符到 v-model 上过滤输入： -->
  <input v-model.trim="msg">

  <hr>
  <!-- 事件
  按钮的事件我们可以使用 v-on 监听事件，并对用户的输入进行响应
  常用的指令提供了特别的缩写 -->
  <p>{{ message }}</p>
  <button v-on:click="reverse">反转字符串</button>
  <!-- v-on:click 缩写 @click -->
  <button @click="reverse">反转字符串</button>

  <hr>
  <!-- 注册一个简单的全局组件 global-component -->
  <global-component></global-component>

  <hr>
  <!-- 注册一个简单的局部组件 local-component -->
  <local-component></local-component>

  <hr>
  <!-- 静态 Prop 是子组件用来接受父组件传递过来的数据的一个自定义属性。
  父组件的数据需要通过 props 把数据传给子组件，子组件需要显式地用 props 选项声明 "prop"：-->
  <static-prop message="静态 Prop Hello!"></static-prop>

  <hr>
  <!-- 动态 Prop 类似于用 v-bind 绑定 HTML 特性到一个表达式，也可以用 v-bind 动态绑定 props 的值到父组件的数据中。
  每当父组件的数据变化时，该变化也会传导给子组件：：-->
  <div>
    <input v-model="parent">
    <br>
    <dynamic-prop v-bind:message="parent"></dynamic-prop>
  </div>

  <hr>
  <!-- Prop 实例 动以下实例中使用 v-bind 指令将 todo 传到每一个重复的组件中：
  prop 是单向绑定的：当父组件的属性变化时，将传导给子组件，但是不会反过来 -->
  <ol>
    <todo-item v-for="item in items" v-bind:todo="item"></todo-item>
  </ol>
</div>
<script>
  // 这里reverse并不是内建的过滤器，我们可以用Vue.filter自定义:
  Vue.filter('uppercase', function (value) {
    <!-- 字符串反转 -->
    return value.toUpperCase();
  });

  // 这里reverse并不是内建的过滤器，我们可以用Vue.filter自定义:
  Vue.filter('reverse', function (value) {
    <!-- 字符串反转 -->
    return value.split('').reverse().join('')
  });

  // 注册一个简单的全局组件 global-component，并使用它：
  Vue.component('global-component', {template: '<h3>注册一个简单的全局自定义组件!</h3>'});

  // 注册一个简单的局部组件 local-component，并使用它：
  var child = {template: '<h3>注册一个简单的局部自定义组件!</h3>'};

  // 静态 Prop 注册
  Vue.component('static-prop', {
    // 声明 props
    props: ['message'],
    // 同样也可以在 vm 实例中像 “this.message” 这样使用
    template: '<span>{{ message }}</span>'
  });

  // 动态 Prop 注册
  Vue.component('dynamic-prop', {
    // 声明 props
    props: ['message'],
    // 同样也可以在 vm 实例中像 “this.message” 这样使用
    template: '<span>{{ message }}</span>'
  });

  Vue.component('todo-item', {
    props: ['todo'],
    template: '<li>{{ todo.text }}</li>'
  });

  /* Prop 验证
  组件可以为 props 指定验证要求。
  为了定制 prop 的验证方式，你可以为 props 中的值提供一个带有验证需求的对象，而不是一个字符串数组。例如：
  当 prop 验证失败的时候，(开发环境构建版本的) Vue 将会产生一个控制台的警告。
  type 可以是下面原生构造器：
  String | Number | Boolean | Array | Object | Date | Function | Symbol
  type 也可以是一个自定义构造器，使用 instanceof 检测。-->
  Vue.component('verify-prop', {
    props: {
      // 基础的类型检查 (`null` 和 `undefined` 会通过任何类型验证)
      propA: Number,
      // 多个可能的类型
      propB: [String, Number],
      // 必填的字符串
      propC: {
        type: String,
        required: true
      },
      // 带有默认值的数字
      propD: {
        type: Number,
        default: 100
      },
      // 带有默认值的对象
      propE: {
        type: Object,
        // 对象或数组默认值必须从一个工厂函数获取
        default: function () {
          return { message: 'prop valid hello' }
        }
      },
      // 自定义验证函数
      propF: {
        validator: function (value) {
          // 这个值必须匹配下列字符串中的一个
          return ['success', 'warning', 'danger'].indexOf(value) !== -1
        }
      }
    }
  });
  */

  // 创建根实例
  new Vue({
    el: '#app',
    data: {
      message: 'www.runoob.com',
      items: [
        { text: 'Learn JavaScript' },
        { text: 'Learn Vue.js' },
        { text: 'Build Something Awesome' }
      ],
      parent: '菜鸟教程官网',
      use: false,
      ok: true,
      id : 1,
      url: 'http://www.runoob.com',
      checked : false,
      checkedNames: [],
      picked : 'Radio',
      selected: ''
    },
    methods: {
      reverse: function () {
        this.message = this.message.split('').reverse().join('');
      }
    },
    filters: {
      capitalize: function (value) {
        if (!value) return '';
        value = value.toString();
        return value.charAt(0).toUpperCase() + value.slice(1);
      }
    },
    components: {
      // <local-component> 将只在父模板可用
      'local-component': child
    }
  })
</script>

<hr>
<h2 style="color: red">Vue Multi Select  复合选择框</h2>
<div>
  <h3>Vue-MultiSelect 复合选择框例子</h3>
  <div id="app-sel">
    <multiselect v-model="value" @select="select"  placeholder="请选择网站" :options="options" style="width:200px"></multiselect>
  </div>

  <hr>
  <h3>Vue-MultiSelect Single 复合选择框单选</h3>
  <div id="app-sel-single">
    <div style="width:50%">
      <multiselect v-model="value"
                   track-by="name"
                   label="name"
                   placeholder="请选择"
                   :options="options"
                   :searchable="false"
                   @select="select"
                   :allow-empty="false"
                   select-label="回车选择"
                   select-group-label="回车选择整个分组"
                   selected-label="已选择"
                   deselect-label="回车取消选择"
                   deselect-group-label="回车取消选择"
      >
        <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.name }}</strong> 由<strong>  {{ option.language }}开发的</strong></template>
      </multiselect>
      <pre ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Search 复合选择框客户端搜索筛选</h3>
  <div id="app-sel-search">
    <div style="width:50%">
      <multiselect
              v-model="value"
              track-by="name"
              label="name"
              placeholder="请选择"
              :options="options"
              :searchable="true"
              @select="select"
              :allow-empty="false"
              select-label="回车选择"
              select-group-label="回车选择整个分组"
              selected-label="已选择"
              deselect-label="回车取消选择"
              deselect-group-label="回车取消选择"
      >
        <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.name }}</strong> 由<strong>  {{ option.language }}开发的</strong></template>
      </multiselect>
      <pre ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Ajax 复合选择框服务器端ajax搜索(Asynchronous select)</h3>
  <div id="app-sel-ajax">
    <div style="width:50%">
      <multiselect
              v-model="value"
              track-by="title"
              label="title"
              placeholder="请输入关键词"
              :options="options"
              :searchable="true"
              :loading="isLoading"
              :internal-search="false"
              :hide-selected="true"
              @search-change="search"
              :allow-empty="false"
              select-label="回车选择"
              select-group-label="回车选择整个分组"
              selected-label="已选择"
              deselect-label="回车取消选择"
              deselect-group-label="回车取消选择"
      >
        <div slot="noResult">未搜索到结果</div>
        <template slot="singleLabel" slot-scope="{ option }">
          <strong>{{ option.title }}</strong> 由<strong>  {{ option.val }}开发的</strong>
        </template>
        <template slot="noOptions" >
          没有数据,请调整关键词
        </template>
      </multiselect>
      <pre ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Multiple 复合选择框多选</h3>
  <div id="app-sel-multiple">
    <div style="width:50%">
      <multiselect
              v-model="value"
              track-by="name"
              label="name"
              placeholder="请选择"
              :options="options"
              :searchable="false"
              @select="select"
              :close-on-select="false"
              :multiple="true"
              :allow-empty="true"
              select-label="回车选择"
              select-group-label="回车选择整个分组"
              selected-label="已选择"
              deselect-label="回车取消选择"
              deselect-group-label="回车取消选择"
      >
        <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.name }}</strong> 由<strong>  {{ option.language }}开发的</strong></template>
      </multiselect>
      <pre ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Action Dispatcher 复合选择框事件分发器</h3>
  <div id="app-sel-action">
    <div style="padding:0px 0px 0px 20px;width:50%">
      <multiselect
              placeholder="请选中"
              :options="actions"
              :searchable="true"
              :reset-after="true"
              @input="input"
              @select="dispatchAction">
      </multiselect>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Tagging 复合选择框标签把用户输入内容添加到下拉框中</h3>
  <div id="app-sel-tag">
    <div style="width:50%">
      <multiselect
              v-model="value"
              track-by="name"
              label="name"
              placeholder="输入关键词或选择"
              :options="options"
              :searchable="true"
              :close-on-select="false"
              :multiple="true"
              :taggable="true"
              tag-position="bottom"
              tag-placeholder="回车添加下拉框"
              @tag="addTag"
              @select="select"
              :allow-empty="true"
              select-label="回车选择"
              select-group-label="回车选择整个分组"
              selected-label="已选择"
              deselect-label="回车取消选择"
              deselect-group-label="回车取消选择"
      >
        <template slot="singleLabel" slot-scope="{ option }"><strong>{{ option.name }}</strong> 由<strong>  {{ option.language }}开发的</strong></template>
      </multiselect>
      <pre ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Custom Option Template 复合选择框自定义下拉选项模板</h3>
  <div id="app-sel-template">
    <div style="width:50%;margin-left: 10px;">
      <multiselect v-model="value" placeholder="请选择相应的网站" label="title" track-by="title" :options="options" :option-height="104" :custom-label="customLabel" :show-labels="false">
        <template slot="singleLabel" slot-scope="props">
          <img class="image" :src="props.option.img">
          <span class="desc"><span class="title">{{ props.option.title }} </span></span>
        </template>
        <template slot="option" slot-scope="props">
          <img class="image" :src="props.option.img">
          <div class="desc"><span class="title">{{ props.option.desc }}</span><span class="small">{{ props.option.title}}</span></div>
        </template>
      </multiselect>
      <pre><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Option Groups 复合选择框下拉选项分组</h3>
  <div id="app-sel-group">
    <div style="width:50%;margin-left: 10px;">
      <multiselect
              v-model="value"
              :options="options"
              :multiple="true"
              group-values="data"
              group-label="groupname"
              :group-select="true"
              placeholder="分类选择"
              track-by="id"
              label="name"
              select-label="回车选择"
              select-group-label="回车选择整个分组"
              selected-label="已选择"
              deselect-label="回车取消选择"
              deselect-group-label="回车取消选择"
      >
        <span slot="noResult">未筛选到相关数据</span>
      </multiselect>
      <pre  ><code>{{ value  }}</code></pre>
    </div>
  </div>

  <hr>
  <h3>Vue-MultiSelect Event 事件列表</h3>
  <div id="app-sel-event">
    <multiselect
            v-model="value"
            deselect-label="已选中"
            track-by="name"
            label="name"
            placeholder="请选择"
            :options="options"
            :searchable="true"
            :close-on-select="false"
            :multiple="true"
            selectLabel="回车选择"
            selectGroupLabel="回车选择整个分组"
            selectedLabel="已选择"
            deselectLabel="回车取消选择"
            deselectGroupLabel="回车取消选择"
            tag-placeholder="添加标签到下拉项"
            :taggable="true"
            @input="input"
            @select="select"
            @remove="remove"
            @search-change="searchChange"
            @tag="tag"
            @open="open"
            @close="close"
    >
      <template slot="singleLabel" slot-scope="{ option }">
        <strong>{{ option.name }}</strong> 由<strong>
        {{ option.language }}开发的</strong>
      </template>
    </multiselect>
    <pre ><code>{{ value  }}</code></pre>
  </div>
</div>
<script>
  //注册multiselect组件
  Vue.component('multiselect', window.VueMultiselect.default);


  ////////////////////////////////////////////
  //Vue-MultiSelect 复合选择框例子
  new Vue({
    el: '#app-sel',
    data() {
      return {
        value: '',
        options: ['itxst.com','baidu.com'],
      };
    },
    methods: {
      //选中事件
      select(selectedOption, id) {
        console.log(selectedOption);
      },
    },
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect 复合选择框例子
  // 关键属性
  // 属性名称	说明
  // options	下拉选项数组，['a','b']或者[{lable:'a',value:'100'},{lable:'b',value:'200'}]
  // close-on-select	选择后是否关闭下拉层
  // show-labels	是否显示已选中提示
  // searchable	是否开启客户端搜索筛选
  // singleLabel	选中后显示在输入框插槽
  // track-by	options为对象数组时由那个属性作为key,比如上面的value
  new Vue({
    el: '#app-sel-single',
    data () {
      return {
        value: null,
        options: [
          { name: 'Vue.js', language: 'JavaScript' },
          { name: 'Rails', language: 'Ruby' },
          { name: 'www.jd.com', language: 'C#' },
          { name: 'www.taobao.com', language: 'java', $isDisabled: true },
          { name: 'www.itxst.com', language: 'C#' }
        ]
      }
    },
    methods: {
      //选中事件
      select(selectedOption, id) {
        console.log(selectedOption);
      },
    },
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Search 复合选择框客户端搜索筛选
  new Vue({
    el: '#app-sel-search',
    data () {
      return {
        value: null,
        options: [
          { name: 'Vue.js', language: 'JavaScript' },
          { name: 'Rails', language: 'Ruby' },
          { name: 'www.jd.com', language: 'C#' },
          { name: 'www.taobao.com', language: 'java', $isDisabled: true },
          { name: 'www.itxst.com', language: 'C#' }
        ]
      }
    },
    methods: {
      //选中事件
      select(selectedOption, id) {
        console.log(selectedOption);
      },
    },
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Ajax 复合选择框服务器端ajax搜索(Asynchronous select)
  // 关键属性
  // 属性名称	说明
  // searchable	设置true，表示可以搜索
  // loading	异步往服务器请求数据时加载效果
  // internal-search	false,关闭客户端搜索
  // search-change	用户输入关键词时的事件
  new Vue({
    el: '#app-sel-ajax',
    data () {
      return {
        value: null,
        isLoading:false,
        options: [ ]
      }
    },
    methods:{
      //搜索事件
      search (keyword) {
        var that=this;
        that.isLoading = true;
        setTimeout(function(){
          that.ajax(keyword);
          that.isLoading=false;
        },1500);

      },
      //模拟往服务器发送ajax请求
      ajax(keyword){
        if(keyword=='')
        {
          this.options=[];
        }
        else
        {
          this.options= [
            { title: keyword+'Vue.js', val: 'JavaScript' },
            { title: keyword+'Rails', val: 'Ruby' },
            { title: keyword+'www.jd.com', val: 'C#' },
            { title: keyword+'www.itxst.com', val: 'C#' }
          ]
        }
      },
      limitText (count) {
        debugger;
        return `and ${count} other countries`
      },
    }
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Multiple 复合选择框多选
  // 关键属性
  // 属性名称	说明
  // options	下拉选项数组，['a','b']或者[{lable:'a',value:'100'},{lable:'b',value:'200'}]
  // close-on-select	设置false选择后是否关闭下拉层
  // multiple	设置true为多选模式
  // show-labels	是否显示已选中提示
  // searchable	是否开启客户端搜索筛选
  // singleLabel	选中后显示在输入框插槽
  // track-by	options为对象数组时由那个属性作为key,比如上面的value
  new Vue({
    el: '#app-sel-multiple',
    data () {
      return {
        value: null,
        options: [
          { name: 'Vue.js', language: 'JavaScript' },
          { name: 'Rails', language: 'Ruby' },
          { name: 'www.jd.com', language: 'C#' },
          { name: 'www.taobao.com', language: 'java', $isDisabled: true },
          { name: 'www.itxst.com', language: 'C#' }
        ]
      }
    },
    methods: {
      //选中事件
      select(selectedOption, id) {
        console.log(selectedOption);
      },
    },
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Action Dispatcher 复合选择框事件分发器
  new Vue({
    el: '#app-sel-action',
    data () {
      return {
        actions: ['alert', 'console.log', 'scrollTop']
      }
    },
    methods: {
      input(value, id){
        console.log(value)
      },
      dispatchAction (actionName) {
        switch (actionName) {
          case 'alert':
            window.alert('You just dispatched "alert" action!');
            break;
          case 'console.log':
            console.log('You just dispatched "console.log" action!');
            break;
          case 'scrollTop':
            window.scrollTo(0, 0);
            break;
        }
      }
    }
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Tagging 复合选择框标签把用户输入内容添加到下拉框中
  // 关键属性
  // 属性名称	说明
  // searchable	需要设置为true ,taggable才能生效，在输入框输入文字
  // tag-position	追加到下拉选项的位置 top或者bottom
  // tag-placeholder	当用户输入的内容无法在现有的下拉选项中搜索到时的提示文字
  // taggable	设置为true自动添加用户输入的内容到下拉框
  new Vue({
    el: '#app-sel-tag',
    data () {
      return {
        value: [],
        options: [
          { name: 'Vue.js', language: 'JavaScript' },
          { name: 'Rails', language: 'Ruby' },
          { name: 'www.jd.com', language: 'C#' },
          { name: 'www.taobao.com', language: 'java', $isDisabled: true },
          { name: 'www.itxst.com', language: 'C#' }
        ]
      }
    },
    methods: {
      //选中事件
      select(selectedOption, id) {
        console.log(selectedOption);
      },
      addTag (newTag) {
        const tag = {
          name: newTag,
          language: newTag.substring(0, 2) + Math.floor((Math.random() * 10000000))
        }
        this.options.push(tag)
        if(this.value) this.value=[];
        this.value.push(tag)
      }
    },
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Custom Option Template 复合选择框自定义下拉选项模板
  // 关键属性
  // 属性名称	说明
  // singleLabel	单选模式时选中后的显示标签插槽,如果你需要选中后只显示文字不实现该插槽即可
  // option	下拉选项的插槽
  new Vue({
    el: '#app-sel-template',
    data() {
      return {
        value: { title: 'www.taobao.com', desc: '淘宝网', img: 'https://img.alicdn.com/tfs/TB1_uT8a5ERMeJjSspiXXbZLFXa-143-59.png' },
        options: [
          { title: 'www.taobao.com', desc: '淘宝网', img: 'https://img.alicdn.com/tfs/TB1_uT8a5ERMeJjSspiXXbZLFXa-143-59.png' },
          { title: 'www.jd.com', desc: '京东网', img: 'https://img10.360buyimg.com/img/jfs/t1/117726/20/7368/88789/5ec3777cE70ffaf64/47d8f5d0310958bd.gif' },
          { title: 'www.itxst.com', desc: 'IT小书童', img: 'http://www.itxst.com/img/logo.png' },
          { title: 'www.qq.com', desc: '腾讯网', img: 'https://mat1.gtimg.com/pingjs/ext2020/qqindex2018/dist/img/qq_logo_2x.png' },
        ]
      }
    },
    methods: {
      customLabel({ title, desc }) {
        return `${title} – ${desc}`
      }
    }
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Option Groups 复合选择框下拉选项分组
  // 关键属性
  // 属性名称	说明
  // group-values	分组数据 group-values="data"
  // group-label	分组名称对应options的那个属性
  // group-select	设置为true时，可以整个组一次性选中,false只能一个一个选中
  new Vue({
    el: '#app-sel-group',
    data () {
      return {
        options: [
          {
            groupname: '水果',
            data: [
              { name: '苹果', id: '1000' },
              { name: '香蕉', id: '1001' }
            ]
          },
          {
            groupname: '饮料',
            data: [
              { name: '可口可乐', id: '1000' },
              { name: '百事可乐', id: '1000' }
            ]
          }
        ],
        value: []
      }
    }
  });


  ////////////////////////////////////////////
  //Vue-MultiSelect Event 事件列表
  // vue-multiselect属性列表
  // multiselectMixin.js
  //------------------------------------------------
  // 属性名称	类型	描述
  // id	Integer||String	组件唯一ID
  // options	Array	下拉选项数组，可以是['a选项','b选项']
  // 也可以是[{label:'a选项',value:100},{label:'b选项',value:200}]
  // value	Object 	选中下拉选项的对象 Object||Array||String||Integer
  // multiple	Boolean	是否允许多选，默认false
  // trackBy	String	[{name:'a选项',value:100},{name:'b选项',value:100}]
  // 下拉选项options为以上数组时，可以设置name为trackBy
  // 因为value有相同的值，无法作为key
  // label	String	[{name:'a选项',value:100},{name:'b选项',value:100}]
  // 将这个数组那个属性作为显示字段给用户看
  // searchable	Boolean	true	是否允许筛选
  // clearOnSelect	Boolean	true	当设置multiple为true多选时，
  // 选中后是否清除用户输入的关键词
  // hideSelected	Boolean	false	是否隐藏已选中项
  // placeholder	String	''	占位提示文本，比如请选择省份
  // allowEmpty	Boolean	true	是否允许清空所有选中项
  // resetAfter	Boolean	false	Reset this.value, this.search,
  //         this.selected after this.value changes.
  //         closeOnSelect	Boolean	true	选择后是否关闭下拉选项，多选时应该设置
  // true这样方便再次选择
  // customLabel	Function => String
  // 自定义下拉项目显示的文本
  // taggable	Boolean	false	是否允许用户输入的关键词作为选项
  // tagPlaceholder	String	'Press enter to create a tag'
  // 回车添加标签（taggable为true时）
  // tagPosition	String	默认'top'，用户输入的标签添加到下拉项的头部或者尾部 bottom
  // max	Number	允许最多选择多少个选项
  // optionsLimit	Number	最多显示多少给选项，比如数组有100个选项
  // 设置为5，那么用户最多一屏看到5个其他的要滚动滚动条
  // groupValues	String	对下拉选项进行分组，具体用法请，点此连接查看
  // groupLabel	String
  // groupSelect	Boolean
  // blockKeys	Array	[]	Array of keyboard key aliases to block when selecting
  // internalSearch	Boolean	true	客户端筛选，远程AJAX筛选时请把此项设置为false
  // 点击查看ajax筛选用法
  // preserveSearch	Boolean	false	如果设置为true，则在打开/关闭组件时将保留搜索查询。
  // preselectFirst	Boolean	false	如果初始值为空，则选择第一个选项
  // Multiselect.vue
  //------------------------------------------------
  // 属性名称	类型	描述
  // name	String	Name attribute to match optional label element
  // selectLabel	String	'Press enter to select' 回车选中
  // selectGroupLabel	String	'Press enter to select group' 按回车键选择组
  // selectedLabel	String	'Selected'已选择
  // deselectLabel	String	'Press enter to remove'回车取消选择
  // deselectGroupLabel	String	'Press enter to deselect group'回车取消选择组
  // showLabels	Boolean	true 决定是否在突出显示的选项上显示标签
  // limit	Number	当:multiple="true"多选时，允许显示多个选中项目，其余的显示更多
  // limitText	Function => String	超过limit设置的数量时，显示什么文字说明，点击参考
  // loading	Boolean	ajax筛选搜索时是否显示加载动画，默认为false
  // disabled	Boolean	组件是否可用，默认true
  // maxHeight	Integer	下拉选项弹出层最大高度，默认300px
  // openDirection	String	下拉选项弹出层位置"above"/"top" or "below"/"bottom"
  // showNoResults	Boolean	搜索无结果时，是否显示“无结果”提示
  // tabindex	Number	组件的tab键顺序
  // optionHeight	Number	下拉项每项的高度
  //------------------------------------------------
  // 事件列表
  // 事件名称
  // 参数	描述
  // Input	(value, id)	选中后this.value的事件
  // Select	(selectedOption, id)	选中下拉项后的事件
  // Remove	(removedOption, id)	移除选中项的事件
  // SearchChange	(searchQuery, id)	输入关键词变化后的事件
  // Tag	(searchQuery, id)	标签模式下添加新的标签（选项）事件
  // Open	(id)	展开下拉选项事件
  // Close	(value, id)	关闭下拉选项事件
  new Vue({
    el: '#app-sel-event',
    data () {
      return {
        value: null,
        options: [
          { name: 'Vue.js', language: 'JavaScript' },
          { name: 'Rails', language: 'Ruby' },
          { name: 'www.taobao.com', language: 'java', $isDisabled: true },
          { name: 'www.itxst.com', language: 'C#' }
        ]
      }
    },
    methods: {
      input(value, id){
        console.log(value)
      },
      //选择事件
      select(selectedOption, id){
        console.log(selectedOption)
      },
      //移除事件
      remove(removedOption, id){
        console.log(removedOption)
      },
      //搜索事件
      searchChange(searchQuery, id){
        console.log('搜索事件')
        console.log(searchQuery)
      },
      //新增标签事件
      tag(searchQuery, id){
        console.log('tag事件')
        console.log(searchQuery)
        const tag = {
          name: searchQuery,
          language: 'itxst.com'+ Math.floor((Math.random() * 10000000))
        }
        this.options.push(tag)
        if(this.value) this.value=[];
        this.value.push(tag)
      },
      //展开事件
      open(id){
        console.log('open展开事件')
      },
      //展开事件
      close(value,id){
        console.log('close关闭事件')
      }


    }
  });
</script>

<hr>
<h2 style="color: red">Art Dialog 弹出层插件</h2>
<div>
  <input type="button" onclick="show_dlg_default()" value="缺省写法" />
  <input type="button" onclick="show_dlg_custom()" value="自定义写法" />
</div>
<script>
    function show_dlg_default(){
        //缺省的简单写法
        art.dialog({
            title:'标题',
            content: '按要有回调函数才会显示',
            ok: function () {
                //点击关闭后你要执行的JS


                // return false;//false不关闭窗口
                return true;//立即关闭窗口
            },
            cancel: true
        });
    }

    function show_dlg_custom(){
//自定义按钮名称的写法
        art.dialog({
            title:'标题',
            content: '按要有回调函数才会显示',
            okVal:'确定提交',
            ok: function () {
                //点击关闭后你要执行的JS


                // return false;//false不关闭窗口
                return true;//立即关闭窗口
            },
            cancelVal:'取消提交',
            cancel: function(){
                return true;//立即关闭窗口
            }
        });
    }
</script>

<hr>
<h2 style="color: red">Jquery Select2 下拉插件</h2>
<div>
  <select id="status" style="width:120px;">
    <option>上架</option>
    <option>下架</option>
  </select>
</div>
<script>
    $(document).ready(function () {
        $('#status').select2({});  //id为status的控件就被美化了
    });
</script>
</body>
</html>