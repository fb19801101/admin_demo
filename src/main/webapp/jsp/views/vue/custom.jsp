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
  <title>VUE自定义组件</title>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue.js"></script>
  <script type="text/javascript" Charset="UTF-8" src="${pageContext.request.contextPath}/res/js/vue-v2.6.12/vue-router.js"></script>
  <style>
    ._active{
      background-color : red;
    }
  </style>
</head>

<body>
<!-- 自定义事件
父组件是使用 props 传递数据给子组件，但如果子组件要把数据传递回去，就需要使用自定义事件！
以下实例中子组件已经和它外部完全解耦了。它所做的只是触发一个父组件关心的内部事件。
如果你想在某个组件的根元素上监听一个原生事件。可以使用 .native 修饰 v-on 。例如：
<my-component v-on:click.native="doTheThing"></my-component>-->
<div id="app">
  <p>自定义组件：data 选项是一个函数，组件不相互影响</p>
  <div id="counter-event-example">
    <p>{{ total }}</p>
    <button-counter v-on:increment="incrementTotal"></button-counter>
    <button-counter v-on:increment="incrementTotal"></button-counter>
  </div>

  <hr>
  <p>自定义组件：data 是一个对象，则会影响到其他实例</p>
  <div id="counter-event-demo">
    <button-counter2></button-counter2>
    <button-counter2></button-counter2>
    <button-counter2></button-counter2>
  </div>

  <hr>
  <!-- 自定义组件的 v-model
  组件上的 v-model 默认会利用名为 value 的 prop 和名为 input 的事件。
  以下实例自定义组件 runoob-input，父组件的 num 的初始值是 100，更改子组件的值能实时更新父组件的 num：
  <input v-model="parentData"> 等价于 <input :value="parentData" @input="parentData = $event.target.value" >-->
  <div id="base-input">
    <base-input v-model="num"></base-input>
    <p>输入的数字为:{{num}}</p>
  </div>

  <!-- 实例中 lovingVue 的值会传给 checked 的 prop，同时当 <base-checkbox> 触发 change 事件时， lovingVue 的值也会更新。-->
  <div id="base-checkbox">
    <base-checkbox v-model="lovingVue"></base-checkbox>
    <div v-show="lovingVue">
      如果选择框打勾我就会显示。
    </div>
  </div>

  <hr>
  <!-- 自定义指令
  除了默认设置的核心指令( v-model 和 v-show ), Vue 也允许注册自定义指令。
  下面我们注册一个全局指令 v-focus, 该指令的功能是在页面加载时，元素获得焦点： -->
  <div id="global-focus">
    <p>页面载入时，input 元素自动获取焦点：全局指令</p>
    <input v-focus>
  </div>

  <div id="local-focus">
    <p>页面载入时，input 元素自动获取焦点：局部指令</p>
    <input v-focus>
  </div>

  <hr>
  <!-- 钩子函数
  指令定义函数提供了几个钩子函数（可选）：
  bind: 只调用一次，指令第一次绑定到元素时调用，用这个钩子函数可以定义一个在绑定时执行一次的初始化动作。
  inserted: 被绑定元素插入父节点时调用（父节点存在即可调用，不必存在于 document 中）。
  update: 被绑定元素所在的模板更新时调用，而不论绑定值是否变化。通过比较更新前后的绑定值，可以忽略不必要的模板更新（详细的钩子函数参数见下）。
  componentUpdated: 被绑定元素所在模板完成一次更新周期时调用。
  unbind: 只调用一次， 指令与元素解绑时调用。
  钩子函数参数
  钩子函数的参数有：
  el: 指令所绑定的元素，可以用来直接操作 DOM 。
  binding: 一个对象，包含以下属性：
  name: 指令名，不包括 v- 前缀。
  value: 指令的绑定值， 例如： v-my-directive="1 + 1", value 的值是 2。
  oldValue: 指令绑定的前一个值，仅在 update 和 componentUpdated 钩子中可用。无论值是否改变都可用。
  expression: 绑定值的表达式或变量名。 例如 v-my-directive="1 + 1" ， expression 的值是 "1 + 1"。
  arg: 传给指令的参数。例如 v-my-directive:foo， arg 的值是 "foo"。
  modifiers: 一个包含修饰符的对象。 例如： v-my-directive.foo.bar, 修饰符对象 modifiers 的值是 { foo: true, bar: true }。
  vnode: Vue 编译生成的虚拟节点。
  oldVnode: 上一个虚拟节点，仅在 update 和 componentUpdated 钩子中可用。
  以下实例演示了这些参数的使用： -->
  <div id="bind-function"  v-runoob:hello.a.b="message">
  </div>
  <div id="el-function">
    <div v-runoob="{ color: 'green', text: '菜鸟教程!' }"></div>
  </div>

  <hr>
  <!-- 路由
  Vue.js 路由允许我们通过不同的 URL 访问不同的内容。
  通过 Vue.js 可以实现多视图的单页Web应用（single page web application，SPA）。
  Vue.js 路由需要载入 vue-router 库
  中文文档地址：vue-router文档。
  Vue.js + vue-router 可以很简单的实现单页应用。
  <router-link> 是一个组件，该组件用于设置一个导航链接，切换不同 HTML 内容。 to 属性为目标地址， 即要显示的内容。
  以下实例中我们将 vue-router 加进来，然后配置组件和路由映射，再告诉 vue-router 在哪里渲染它们。代码如下所示：-->
  <div id="vue-router">
    <h1>Hello App!</h1>
    <p>
      <!-- 使用 router-link 组件来导航. -->
      <!-- 通过传入 `to` 属性指定链接. -->
      <!-- <router-link> 默认会被渲染成一个 `<a>` 标签 -->
      <router-link to="/foo">Go to Foo</router-link>
      <router-link to="/bar">Go to Bar</router-link>
    </p>
    <!-- 路由出口 -->
    <!-- 路由匹配到的组件将渲染在这里 -->
    <router-view></router-view>
  </div>

  <!-- 路由
  点击过的导航链接都会加上样式 class ="router-link-exact-active router-link-active"。
  <router-link> 相关属性
  接下来我们可以了解下更多关于 <router-link> 的属性。
  to
  表示目标路由的链接。 当被点击后，内部会立刻把 to 的值传到 router.push()，所以这个值可以是一个字符串或者是描述目标位置的对象。-->
  <!-- 字符串 -->
  <router-link to="home">Home</router-link>
  <!-- 渲染结果 -->
  <a href="demo">Home</a>
  <!-- 使用 v-bind 的 JS 表达式 -->
  <router-link v-bind:to="'home'">Home</router-link>
  <!-- 不写 v-bind 也可以，就像绑定别的属性一样 -->
  <router-link :to="'home'">Home</router-link>
  <!-- 同上 -->
  <router-link :to="{ path: 'home' }">Home</router-link>
  <!-- 命名的路由 -->
  <router-link :to="{ name: 'user', params: { userId: 123 }}">User</router-link>
  <!-- 带查询参数，下面的结果为 /register?plan=private -->
  <router-link :to="{ path: 'register', query: { plan: 'private' }}">Register</router-link>
  <!-- replace
  设置 replace 属性的话，当点击时，会调用 router.replace() 而不是 router.push()，导航后不会留下 history 记录。 -->
  <router-link :to="{ path: '/abc'}" replace></router-link>
  <!-- append
  设置 append 属性后，则在当前 (相对) 路径前添加其路径。例如，我们从 /a 导航到一个相对路径 b，如果没有配置 append，则路径为 /b，如果配了，则为 /a/b -->
  <router-link :to="{ path: 'relative/path'}" append></router-link>
  <!-- tag
  有时候想要 <router-link> 渲染成某种标签，例如 <li>。 于是我们使用 tag prop 类指定何种标签，同样它还是会监听点击，触发导航。 -->
  <router-link to="/foo" tag="li">foo</router-link>
  <!-- 渲染结果 -->
  <li>foo</li>
  <!-- active-class
  设置 链接激活时使用的 CSS 类名。可以通过以下代码来替代。 -->
  <p>
    <router-link v-bind:to = "{ path: '/route1'}" active-class = "_active">Router Link 1</router-link>
    <router-link v-bind:to = "{ path: '/route2'}" tag = "span">Router Link 2</router-link>
  </p>
  <!-- 注意这里 class 使用 active-class="_active"。 -->
  <!-- exact-active-class
  配置当链接被精确匹配的时候应该激活的 class。可以通过以下代码来替代。 -->
  <p>
    <router-link v-bind:to = "{ path: '/route1'}" exact-active-class = "_active">Router Link 1</router-link>
    <router-link v-bind:to = "{ path: '/route2'}" tag = "span">Router Link 2</router-link>
  </p>
  <!-- event
  声明可以用来触发导航的事件。可以是一个字符串或是一个包含字符串的数组。 -->
  <router-link v-bind:to = "{ path: '/route1'}" event = "mouseover">Router Link 1</router-link>
  <!-- 以上代码设置了 event 为 mouseover ，及在鼠标移动到 Router Link 1 上时导航的 HTML 内容会发生改变。 -->
</div>


<script>
 /*自定义组件
  父组件是使用 props 传递数据给子组件，但如果子组件要把数据传递回去，就需要使用自定义事件！
  我们可以使用 v-on 绑定自定义事件, 每个 Vue 实例都实现了事件接口(Events interface)，即：
  使用 $on(eventName) 监听事件
  使用 $emit(eventName) 触发事件
  另外，父组件可以在使用子组件的地方直接用 v-on 来监听子组件触发的事件。*/
  Vue.component('button-counter', {
    template: '<button v-on:click="incrementHandler">{{ counter }}</button>',
    data: function () {
      return {
        counter: 0
      }
    },
    methods: {
      incrementHandler: function () {
        this.counter += 1;
        this.$emit('increment');
      }
    },
  });

  new Vue({
    el: '#counter-event-example',
    data: {
      total: 0
    },
    methods: {
      incrementTotal: function () {
        this.total += 1
      }
    }
  });


 var buttonCounter2Data = {count: 0};
 Vue.component('button-counter2', {
   /*
   data: function () {
       // data 选项是一个函数，组件不相互影响
       return {
           count: 0
       }
   },
   */
   //button-counter 组件中的 data 不是一个对象，而是一个函数：
   //这样的好处就是每个实例可以维护一份被返回对象的独立的拷贝，如果 data 是一个对象则会影响到其他实例，如下所示：
   data: function () {
     // data 选项是一个对象，会影响到其他实例
     return buttonCounter2Data
   },
   template: '<button v-on:click="count++">点击了 {{ count }} 次。</button>'
 });

 new Vue({ el: '#counter-event-demo' });

 Vue.component('base-input', {
   template: `
    <p>   <!-- 包含了名为 input 的事件 -->
   <input
   ref="input"
   :value="value"
   @input="$emit('input', $event.target.value)"
   >
   </p>
   `,
    props: ['value'], // 名为 value 的 prop
});

new Vue({
    el: '#base-input',
    data: {
        num: 100,
    }
});

//由于 v-model 默认传的是 value，不是 checked，所以对于对于复选框或者单选框的组件时，我们需要使用 model 选项，
// model 选项可以指定当前的事件类型和传入的 props。
// 注册
Vue.component('base-checkbox', {
  model: {
    prop: 'checked',
    event: 'change'  // onchange 事件
  },
  props: {
    checked: Boolean
  },

  template: `
 <input
 type="checkbox"
 v-bind:checked="checked"
 v-on:change="$emit('change', $event.target.checked)"
 >
 `
});
// 创建根实例
new Vue({
  el: '#base-checkbox',
  data: {
    lovingVue: true
  }
});

// 注册一个全局自定义指令 v-focus
Vue.directive('focus', {
  // 当绑定元素插入到 DOM 中。
  inserted: function (el) {
    // 聚焦元素
    el.focus()
  }
})
// 创建根实例
new Vue({
  el: '#global-focus'
});

//我们也可以在实例使用 directives 选项来注册局部指令，这样指令只能在这个实例中使用：
// 创建根实例
new Vue({
  el: '#local-focus',
  directives: {
    // 注册一个局部的自定义指令 v-focus
    focus: {
      // 指令的定义
      inserted: function (el) {
        // 聚焦元素
        el.focus()
      }
    }
  }
});

//钩子函数
Vue.directive('runoob', {
  bind: function (el, binding, vnode) {
    var s = JSON.stringify
    el.innerHTML =
      'name: '       + s(binding.name) + '<br>' +
      'value: '      + s(binding.value) + '<br>' +
      'expression: ' + s(binding.expression) + '<br>' +
      'argument: '   + s(binding.arg) + '<br>' +
      'modifiers: '  + s(binding.modifiers) + '<br>' +
      'vnode keys: ' + Object.keys(vnode).join(', ')
  }
});
/*
有时候我们不需要其他钩子函数，我们可以简写函数，如下格式：
Vue.directive('runoob', function (el, binding) {
  // 设置指令的背景颜色
  el.style.backgroundColor = binding.value.color
})*/
new Vue({
  el: '#bind-function',
  data: {
    message: '菜鸟教程!'
  }
});

//指令函数可接受所有合法的 JavaScript 表达式，以下实例传入了 JavaScript 对象：
Vue.directive('runoob', function (el, binding) {
    // 简写方式设置文本及背景颜色
    el.innerHTML = binding.value.text
    el.style.backgroundColor = binding.value.color
});
new Vue({
  el: '#el-function'
});

// 0. 如果使用模块化机制编程，導入Vue和VueRouter，要调用 Vue.use(VueRouter)

// 1. 定义（路由）组件。
// 可以从其他文件 import 进来
const Foo = { template: '<div>foo</div>' }
const Bar = { template: '<div>bar</div>' }

// 2. 定义路由
// 每个路由应该映射一个组件。 其中"component" 可以是
// 通过 Vue.extend() 创建的组件构造器，
// 或者，只是一个组件配置对象。
// 我们晚点再讨论嵌套路由。
const routes = [
  { path: '/foo', component: Foo },
  { path: '/bar', component: Bar }
]

// 3. 创建 router 实例，然后传 `routes` 配置
// 你还可以传别的配置参数, 不过先这么简单着吧。
const router = new VueRouter({
  routes // （缩写）相当于 routes: routes
})

// 4. 创建和挂载根实例。
// 记得要通过 router 配置参数注入路由，
// 从而让整个应用都有路由功能
const app = new Vue({
  router
}).$mount('#vue-router')
// 现在，应用已经启动了！
</script>
</body>
</html>