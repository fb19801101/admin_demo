/**

 @Name：layui.TimeLine TimeLine时间线
 @Author：000
 @License：MIT

 */

layui.define(['layer', 'jquery'], function(exports){

  var layer = layui.layer,
      $ = layui.$,

      MOD_NAME = 'timeline', //模块名称
      TIMELINE_CLASS = 'layui-timeline',  //模块样式
      TIMELINE_ITEM = 'layui-timeline-item', //模块项目
      TIMELINE_BTN = 'layui-btn-sm', //按钮项目
      VERSION = "v2.5.6",  //版本
      OPTIONS = {},  //全局属性配置
      TimeLines = {};  //当前被实例化的时间线的集合


  // 公共事件
  var event = {
    getElemId: function(options){	// 根据传入的参数获取ID
      var elem = options.elem || "";
      var obj = options.obj || $(elem);

      if (obj.length == 0) {	//页面中未找到绑定id
        return "";
      } else {
        return $(obj)[0].id;
      }
    },
    escape: function(html){  // 编码
      if(typeof html !== 'string') return '';
      return html.replace(entityReg.escape, function(match){return entityMap.escape[match];});
    },
    unescape: function(str){  // 解码
      if(typeof str !== 'string') return '';
      return str.replace(entityReg.unescape, function(match){return entityMap.unescape[match];});
    },
    cloneObj: function (obj, filter) {  //深复制对象方法
      var newObj = {};
      if (obj instanceof Array) {
        newObj = [];
      }
      var str = "";
      if(typeof filter !== 'undefined') {str = filter.join(",");}
      for (var key in obj) {
        if(str.indexOf(key) == -1){
          var val = obj[key];
          newObj[key] = typeof val === 'object' ? event.cloneObj(val, typeof filter !== undefined ? filter : []): val;
        }

      }
      return newObj;
    },
    trimToDot: function(str){
      return str.replace(/ /g, ".");
    },
    domExist: function($dom){
      if(typeof $dom !='undefined' && $dom.length>=1){
        return true;
      }

      return false;
    }
  };

  // 特殊符号转义
  var keys = Object.keys || function(obj) {
    obj = Object(obj);
    var arr = [];
    for(var a in obj) arr.push(a);
    return arr;
  };
  var invert = function(obj){
    obj = Object(obj);
    var result = {};
    for(var a in obj) result[obj[a]] = a;
    return result;
  };
  var entityMap = {
    escape: {
      "&" : "&amp;",
      "<" : "&lt;",
      ">" : "&gt;",
      "'" : "&quo;"
    }
  };
  entityMap.unescape = invert(entityMap.escape);
  var entityReg = {
    escape: RegExp('[' + keys(entityMap.escape).join('') + ']', 'g'),
    unescape: RegExp('(' + keys(entityMap.unescape).join('|') + ')', 'g')
  };

  //异步加载接口
  var AjaxHelper = {
    request : function(config) {
      var data = config.data ? config.data : {};
      var async = (typeof (config.async) === "boolean") ? config.async : true;
      $.ajax({
        type : config.type ? config.type : "POST",
        headers : config.headers,
        url : config.url,
        dataType : config.dataType ? config.dataType : "json",
        data : data,
        async : async,
        contentType : config.contentType,
        xhrFields: {withCredentials: config.withCredentials},
        beforeSend: function (XMLHttpRequest, self) {
          if (typeof (config.beforeSend) === "function") {
            return config.beforeSend(XMLHttpRequest, self);
          }
          return true;
        },
        success : config.success,
        error : function(XMLHttpRequest, textStatus, errorThrown) {
          if (typeof (config.error) === "function") {
            config.error(XMLHttpRequest, textStatus, errorThrown);
          } else {
            layer.msg("异步加载失败： " + textStatus,{icon:5, shift:6});
          }
        },
        statusCode : {
          404 : function() {
            layer.msg('未找到指定请求，请检查访问路径！',{icon:5, shift:6});
          },
          500 : function() {
            layer.msg('系统错误！',{icon:5, shift:6});
          }
        },
        complete : function(XMLHttpRequest, textStatus) {
          if (typeof (config.complete) === "function") {
            config.complete(XMLHttpRequest, textStatus);
          }
        }
      });
    },
    serialize: function(first, param){	//json序列化   key=value&key1=value1
      var p = first;
      for (var key in param) {
        p += key + "=" + param[key] + "&";
      }
      p = p.substring(0, p.length-1);
      return p;
    }
  };

  var TimeLine = function(){
    /** 默认赋值**/
    this.config = {
      linkHref: layui.cache.base + 'timeline/timeline.css',
      itemSkin: TIMELINE_CLASS,
      itemClass: TIMELINE_ITEM,
      itemTitle: '+ New Date',
      itemContent: '+ New Content',
      version: VERSION
    };
    this.configs = {};

    layui.link(this.config.linkHref);
  };

  /**
   * @Desc: 全局设置
   * @param options
   */
  TimeLine.prototype.setting = function(options){
    this.options = options || {};

    /** 绑定元素参数（必填，2个参数项必填一个）**/
    this.elem = this.options.elem || OPTIONS.elem ||  ""; //时间线绑定的元素ID：#elem
    if(typeof this.options.obj === 'undefined'){
      if(this.elem) {
        if($(this.elem).length > 0) {
          this.obj = $(this.elem);
        }
      }
    } else {
      this.obj = this.options.obj || OPTIONS.obj || this.obj; //时间线绑定的jquery元素，用于当元素是延迟加载出来的话，可以用这个找到
      this.elem = "#" + this.obj[0].id;
    }

    /** 模板参数 **/
    this.tpl_html = this.options.html || OPTIONS.html || "";       //模板内容
    this.tpl_id = this.options.id || OPTIONS.id || "";             //模板节点ID
    this.elem_dom = this.obj;                                      //页面DOM节点
    this.tpl_url = this.options.url || OPTIONS.url || "";          //模板请求url
    this.tpl_ajax = this.options.ajax || OPTIONS.ajax || "";       //页面请求url
    this.tpl_data = this.options.data || OPTIONS.data || [];       //模板数据
    this.tpl_event = this.options.event || OPTIONS.event || null;  //页面事件
    this.tpl_step = this.options.step || OPTIONS.step || -1;       //时间步长

    /** 数据加载参数**/
    this.url = this.options.url || OPTIONS.url || ""; //请求地址
    this.async = (typeof (this.options.async) === "boolean") ? this.options.async : (typeof (OPTIONS.async) === "boolean") ? OPTIONS.async : false; //异步同步加载,默认异步加载
    this.asyncLoad = this.options.asyncLoad || OPTIONS.asyncLoad || []; //初始异步加载层级数据
    this.headers = this.options.headers || OPTIONS.headers || {}; //ajax header属性
    this.method = this.options.method || OPTIONS.method || "post"; //请求类型
    this.dataType = this.options.dataType || OPTIONS.dataType || "json"; //参数类型
    this.contentType = this.options.contentType || OPTIONS.contentType || "application/x-www-form-urlencoded"; //发送信息至服务器时内容编码类型
    this.defaultRequest = $.extend(this.defaultRequest, this.options.defaultRequest || OPTIONS.defaultRequest) || this.defaultRequest; //默认请求参数
    this.filterRequest = this.options.filterRequest || OPTIONS.filterRequest || [];	//过滤请求参数
    this.request = this.options.request || OPTIONS.request || {}; //用户自定义请求参数
    this.response = $.extend(this.response, this.options.response || OPTIONS.response) || this.response; //返回json格式
    this.data = this.options.data || OPTIONS.data || null; //初始化指定该参数，则不会访问异步接口
    this.dataFormat = this.options.dataFormat || OPTIONS.dataFormat || "levelRelationship"; //用于用户配置的data数据格式，list：列表，  levelRelationship：层级关系，默认
    this.dataStyle = this.options.dataStyle || OPTIONS.dataStyle || "defaultStyle"; //用于用户配置layui通用的json数据风格,layuiStyle:layui风格，defaultStyle：默认风格
    this.errDataShow = this.options.errDataShow || OPTIONS.errDataShow || false; //是否在递归数据出现错误后，显示错误信息，默认false
    this.withCredentials = this.options.withCredentials || OPTIONS.withCredentials || false; //是否允许跨域请求，默认false
    this.beforeSend = this.options.beforeSend || OPTIONS.beforeSend || function(ajax, XMLHttpRequest, self){return true}; //异步加载之前的回调
    this.success = this.options.success || OPTIONS.success || function(data, obj, first){}; //时间线加载完毕后执行解析时间线之前的回调
    this.done = this.options.done || OPTIONS.done || function(data, obj, first){};	 //时间线加载完毕后的回调
    this.formatter = $.extend(this.formatter, this.options.formatter || OPTIONS.formatter) || this.formatter; //数据过滤
    this.error = this.options.error || OPTIONS.error || function(XMLHttpRequest, textStatus, errorThrown){}; // 异步加载异常回调
    this.complete = this.options.complete || OPTIONS.complete || function(XMLHttpRequest, textStatus){};	// 异步加载完成回调
  };

  /**
   * @Desc: 重置基本属性值
   * @Param: options：JSON对象，重置dtree所需的全部属性
   */
  TimeLine.prototype.reloadSetting = function(options) {
    this.options = $.extend(this.options, options) || this.options;

    /** 绑定元素参数**/
    this.elem = this.options.elem || this.elem;	  //时间线绑定的元素ID：#elem
    if(typeof this.options.obj === 'undefined'){
      if(this.elem) {
        if($(this.elem).length > 0) {
          this.obj = $(this.elem);
        }
      }
    } else {
      this.obj = this.options.obj || this.obj; //时间线绑定的jquery元素，用于当元素是延迟加载出来的话，可以用这个找到
      this.elem = "#" + this.obj[0].id;
    }

    /** 模板参数 **/
    this.tpl_html = this.options.html || OPTIONS.html || "";       //模板内容
    this.tpl_id = this.options.id || OPTIONS.id || "";             //模板节点ID
    this.elem_dom = this.obj;                                      //页面DOM节点
    this.tpl_url = this.options.url || OPTIONS.url || "";          //模板请求url
    this.tpl_ajax = this.options.ajax || OPTIONS.ajax || "";       //页面请求url
    this.tpl_data = this.options.data || OPTIONS.data || [];       //模板数据
    this.tpl_event = this.options.event || OPTIONS.event || null;  //页面事件
    this.tpl_step = this.options.step || OPTIONS.step || -1;       //时间步长

    /** 数据加载参数**/
    this.url = this.options.url || this.url; //请求地址
    this.async = (typeof (this.options.async) === "boolean") ? this.options.async : this.async;	//异步同步加载,默认异步加载
    this.asyncLoad = this.options.asyncLoad || this.asyncLoad; //初始异步加载层级数据
    this.headers = this.options.headers || this.headers; //ajax header属性
    this.method = this.options.method || this.method; //请求类型
    this.dataType = this.options.dataType || this.dataType; //参数类型
    this.contentType = this.options.contentType || this.contentType; //发送信息至服务器时内容编码类型
    this.defaultRequest = $.extend(this.defaultRequest, this.options.defaultRequest) || this.defaultRequest; //默认请求参数
    this.filterRequest = this.options.filterRequest || this.filterRequest; //过滤请求参数
    this.request = this.options.request || this.request; //用户自定义请求参数
    this.response = $.extend(this.response, this.options.response) || this.response; //返回json格式
    this.data = this.options.data || this.data; //初始化指定该参数，则不会访问异步接口
    this.dataFormat = this.options.dataFormat || this.dataFormat; //用于用户配置的data数据格式，list：列表，  levelRelationship：层级关系，默认
    this.dataStyle = this.options.dataStyle || this.dataStyle; //用于用户配置layui通用的json数据风格,layuiStyle:layui风格，defaultStyle：默认风格
    this.errDataShow = (typeof (this.options.errDataShow) === "boolean") ? this.options.errDataShow : this.errDataShow; //是否在使用list模式递归数据出现错误时，显示错误信息
    this.withCredentials = (typeof (this.options.withCredentials) === "boolean") ? this.options.withCredentials : this.withCredentials; //是否允许跨域请求
    this.beforeSend = this.options.beforeSend || this.beforeSend; //异步加载之前的回调
    this.success = this.options.success || this.success; //时间线加载完毕后执行解析时间线之前的回调
    this.done = this.options.done || this.done; //时间线加载完毕后的回调
    this.formatter = $.extend(this.formatter, this.options.formatter)|| this.formatter; //数据过滤
    this.error = this.options.error || this.error; //异步加载异常回调
    this.complete = this.options.complete || this.complete; //异步加载完成回调
  };

  /**
   * @Desc:  重载时间线
   * @Param: options： dtree的所有属性的json对象
   */
  TimeLine.prototype.reload = function(options){
    var _this = this;
    _this.reloadSetting(options);
    _this.init();
  };

  /**
   * @Desc:  初始化时间线
   * @Param: callback： 异步加载完成之后的回调函数
   */
  TimeLine.prototype.init = function(){
    var _this = this;
    if (typeof _this !== "object") {
      layer.msg("时间线组件未成功加载，请检查配置", {icon:5});
      return ;
    }

    _this.template();
    _this.register();
    _this.compile();
    _this.bindEvent();
    if(this.tpl_step != -1) {
      _this.step(this.tpl_step);
    }
  };

  /**
   * @Desc:  判断在数据加载时是否存在错误数据，并是否打印错误数据
   * @Param:
   */
  TimeLine.prototype.msgErrData = function() {
    var _this = this;
    if(_this.errData.length > 0 && _this.errDataShow) {
      var title = "";
      for(var i=0; i<_this.errData.length; i++) {
        var edata = _this.errData[i];
        title += "数据：【"+edata[_this.response.title]+"】中时间线id和上一时间线id值一致！ \n";
      }
      layer.msg(title, {icon:2,time:5000});
    }
    // 显示之后，将错误数据制空
    _this.errData = [];
  };

  /**
   * @Desc: 获取传递出去的参数，根据defaultRequest、request和node拼出发出请求的参数
   * @Param: nodes：需要传递出去的参数
   */
  TimeLine.prototype.getRequestParam = function(item){
    var _this = this;
    var request = _this.request,
        defaultRequestNames = _this.defaultRequest,
        _item = item || _this.timelineItem,
        requestParam = {};

    // 先拼用户自定义的，在拼树生成的，这样的话用户可以自定义当树未生成时的节点的初始值
    for ( var key in request) {
      requestParam[key] = request[key];
    }
    for ( var key in defaultRequestNames) {
      var paramName = defaultRequestNames[key];
      var paramValue = _item[key];
      if(typeof paramValue === "boolean"){
        requestParam[paramName] = paramValue;
      }else {
        if(paramValue){
          requestParam[paramName] = paramValue;
        }
      }
    }
    return requestParam;
  };

  /**
   * @Desc:  获取filterParam过滤后的requestParam
   * @Param: requestParam：请求参数
   */
  TimeLine.prototype.getFilterRequestParam = function(requestParam){
    var _this = this;
    var filterRequest = _this.filterRequest;
    return event.cloneObj(requestParam, filterRequest);
  };

  /**
   * @Desc: 绑定浏览器事件
   */
  TimeLine.prototype.bindEvent = function(){
    var _this = this;

    // 按钮事件
    var btnClick = {
      step: function($dom){
        var id = $dom.attr('id');
        _this.step(id);
      },
      confirm: function($dom){
        var id = _this.nextBtnId($dom);
        layer.alert(id-1, {title: '确认', offset: 't', icon:1});
        _this.step(id);
      },
      add: function($dom){
        layer.alert(_this.prevBtnId($dom), {title: '添加', offset: 't', icon:4});
      },
      edit: function($dom){
        layer.alert(_this.nextBtnId($dom), {title: '编辑', offset: 't', icon:3});
      },
      del: function($dom){
        layer.alert(_this.currBtnId($dom), {title: '删除', offset: 't', icon:2});
      },
      jump: function($dom){
        layer.alert(_this.currBtnId($dom), {title: '跳转', offset: 't', icon:5});
      }
    };

    // 绑定时间线图标点击事件，点击时前进到当前节点
    this.elem_dom.off('click', '.' + TIMELINE_ITEM).on('click', '.' + TIMELINE_ITEM, this.tpl_event?this.tpl_event:function(event) {
      event.stopPropagation();//阻止 click 事件冒泡到父元素：
      btnClick['step'].call(_this, $(this));
    });

    // 绑定时间线节点按钮点击事件，点击节点按钮组时触发相应事件
    this.elem_dom.off('click', '.' + TIMELINE_BTN).on('click', '.' + TIMELINE_BTN, function (event) {
      event.stopPropagation();//阻止 click 事件冒泡到父元素：
      var method = $(this).data('method');
      btnClick[method] ? btnClick[method].call(_this, $(this)) : '';
    });
  };

  /**
   * @Desc:  解绑浏览器事件
   */
  TimeLine.prototype.unbindEvent = function(){
    // 本身事件解绑
    this.elem_dom.unbind();
  };

  /**
   * @Desc: 被解析的单个数据对象
   * @param data
   * @returns {{checkArr: (function(): []), last: (function(*): *), data: (function(): *), level: (function(): *|string), fmtTitle: fmtTitle, basicData: (function(): string), title: (function(): *), ficonClass: (function(): *|string), parentId: (function(): *), iconClass: (function(): *|string), spread: (function(*): *), treeId: (function(): *), hide: (function(): *), children: (function(): *|*[]), disabled: (function(): *), recordData: (function(): string)}}
   */
  TimeLine.prototype.parseData = function(data) {
    return {
      axis: function(){
        return data[this.response.axis] || -1;
      },
      date: function(){
        return data[this.response.date] || new Date();
      },
      title: function(){
        return data[this.response.title] || "";
      },
      contents: function(){
        return data[this.response.contents] || [];
      },
      items: function(){
        return data[this.response.items] || [];
      },
      block: function(){
        return data[this.response.block] || "";
      },
      submit: function(){
        return data[this.response.submit] || false;
      },
      tag: function(){
        return data[this.response.tag] || null;
      },
      data: function(){
        return data;
      }
    }
  };

  /**
   * @Desc: 数据格式化
   * @Param: html： 需要格式化的数据
   * @returns {string}
   */
  TimeLine.prototype.escape = function(html){
    return event.escape(html);
  };

  /**
   * @Desc: 格式化数据转回正常数据
   * @Param: str： 需要转回的数据
   */
  TimeLine.prototype.unescape = function(str){
    return event.unescape(str);
  };

  /**
   * @Desc: json序列化   key=value&key1=value1
   * @param first
   * @param param
   * @returns {string}
   */
  TimeLine.prototype.serialize = function(first, param){
    return AjaxHelper.serialize(first, param);
  };

  /**
   * @Desc: 获取模板
   * @returns {*}
   */
  TimeLine.prototype.template = function(){
    var tpl_html = '';
    var tpl_url = this.tpl_url;
    var tpl_id = this.tpl_id;

    if(tpl_url.length > 0) {
      $.ajax({
        url: tpl_url,
        async: false,
        success: function (res) {
          var content = $($.parseHTML(res));
          var tpl_dom = content.filter("#" + tpl_id);
          tpl_html = tpl_dom.html();
        },
        error: function (res) {
          layer.alert('获取模板文件，<br>异步加载失败，<br> 直接引用本地文件！', {icon: 4, title: 'Ajax'});
        }
      });
    }

    if(tpl_html.length > 0) {
      this.tpl_html = tpl_html;
    }

    return tpl_html;
  };

  /**
   * @Desc: 编译模板
   */
  TimeLine.prototype.compile = function(){
    var tpl_data = [];
    var tpl_ajax = this.tpl_ajax;

    if(tpl_ajax.length > 0) {
      $.ajax({
        url: tpl_ajax,
        async: false,
        type: 'post',
        dataType: 'json',
        contentType: 'application/json;charset=utf-8',
        success: function (res) {
          tpl_data = res;
        },
        error: function (res) {
          layer.alert('获取模板数据，<br>异步加载失败，<br> 直接编译本地数据！', {icon: 4, title: 'Ajax'});
        }
      });
    }

    if(tpl_data.length == 0) {
      tpl_data = this.tpl_data;
    }

    var tpl_html = this.tpl_html;
    var handlebars = Handlebars.compile(tpl_html);
    var html = handlebars(tpl_data);
    this.elem_dom.html(html);
    this.tpl_data = tpl_data;
  };

  /**
   * @Desc: 注册Handlebars.Helper
   */
  TimeLine.prototype.register = function(){
    //注册一个list链表遍历的Helper
    Handlebars.registerHelper('list', function(items, options) {
      var out = "<ul>";

      for(var i=0, l=items.length; i<l; i++) {
        out = out + "<li>" + options.fn(items[i]) + "</li> " ;       /*options.fn相当于一个编译的函数*/
      }

      return out + "</ul>";
    });

    //注册一个比较大小的Helper
    Handlebars.registerHelper("_if",function(v1, op, v2, options) {
      if(eval(v1+op+v2)) {
        //满足添加继续执行
        return options.fn(this);
      } else {
        //不满足条件执行{{else}}部分
        return options.inverse(this);
      }
    });
  };

  /**
   * @Desc: 设置步长
   * @param itemId
   */
  TimeLine.prototype.step = function(itemId){
    var tpl_data = this.tpl_data;
    for (var i = 0; i < tpl_data.length; i++) {
      if (tpl_data[i].id < itemId) tpl_data[i].axis = 1;
      if (tpl_data[i].id == itemId) tpl_data[i].axis = 0;
      if (tpl_data[i].id > itemId) tpl_data[i].axis = -1;
    }

    var tpl_html = this.tpl_html;
    var handlebars = Handlebars.compile(tpl_html);
    var html = handlebars(tpl_data);
    this.elem_dom.html(html);
    this.tpl_data = tpl_data;
  };

  /**
   * @Desc: 数据条数
   * @returns {*}
   */
  TimeLine.prototype.size = function(){
    return this.tpl_data.length;
  };

  /**
   * @Desc: 获取当前TimeLine item id
   * @param $item
   * @returns {{}|*}
   */
  TimeLine.prototype.currBtnId = function($item){
    var $div = $item.parent('div');
    if(event.domExist($div)) {
      var $div1 = $div.parent('div');
      if(event.domExist($div1)) {
        var $li = $div1.parent('li');
        return $li?$li.attr('id'):-1;
      }
      var $li = $div.parent('li');
      return $li?$li.attr('id'):-1;
    }

    return -1;
  };

  /**
   * @Desc: 获取下一TimeLine item id
   * @param $item
   * @returns {{}|*}
   */
  TimeLine.prototype.nextBtnId = function($item){
    var $div = $item.parent('div');
    if(event.domExist($div)) {
      var $div1 = $div.parent('div');
      if(event.domExist($div1)) {
        var $li = $div1.parent('li');
        if(event.domExist($li)) {
          $li = $li.next();
          return $li?$li.attr('id'):-1;
        }
      }

      var $li = $div.parent('li');
      $li = $li.next();
      return $li?$li.attr('id'):-1;
    }

    return -1;
  };

  /**
   * @Desc: 获取上一TimeLine item id
   * @param $item
   * @returns {{}|*}
   */
  TimeLine.prototype.prevBtnId = function($item){
    var $div = $item.parent('div');
    if(event.domExist($div)) {
      var $div1 = $div.parent('div');
      if(event.domExist($div1)) {
        var $li = $div1.parent('li');
        if(event.domExist($li)) {
          $li = $li.prev();
          return $li?$li.attr('id'):-1;
        }
      }

      var $li = $div.parent('li');
      $li = $li.prev();
      return $li?$li.attr('id'):-1;
    }

    return -1;
  };

  /**
   * @Desc: 获取data
   * @returns {{}|*}
   */
  TimeLine.prototype.data = function(){
    return this.tpl_data;
  };

  /**
   * @Desc: 根据tag获取itemId
   * @param tag
   * @returns {{}|*}
   */
  TimeLine.prototype.id = function(tag){
    var tpl_data = this.tpl_data;
    for(i=0; i<tpl_data.length; i++) {
      if(tpl_data[i].tag == tag) {
        return tpl_data[i].id;
      }
    }
    return -1;
  };

  /**
   * @Desc: 根据id获取item
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.item = function(itemId){
    var tpl_data = this.tpl_data;
    for(i=0; i<tpl_data.length; i++) {
      if(tpl_data[i].id == itemId) {
        return tpl_data[i];
      }
    }
    return {};
  };

  /**
   * @Desc: 任务状态
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.axis = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("axis")) {
      return _this.item(itemId).axis;
    }

    return -1;
  };

  /**
   * @Desc: 任务日期
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.date = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("date")) {
      return _this.item(itemId).date;
    }

    return new Date();
  };

  /**
   * @Desc: 任务标题
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.title = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("title")) {
      return _this.item(itemId).title;
    }

    return '';
  };

  /**
   * @Desc: 任务内容
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.contents = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("contents")) {
      return _this.item(itemId).contents;
    }

    return [];
  };

  /**
   * @Desc: 内容子项
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.items = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("items")) {
      return _this.item(itemId).items;
    }

    return [];
  };

  /**
   * @Desc: 块状文本
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.block = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("block")) {
      return _this.item(itemId).block;
    }

    return '';
  };

  /**
   * @Desc: 任务工具栏
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.submit = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("submit")) {
      return _this.item(itemId).submit;
    }

    return false;
  };

  /**
   * @Desc: 任务数据
   * @param itemId
   * @returns {{}|*}
   */
  TimeLine.prototype.tag = function(itemId){
    var _this = this;
    if(_this.item(itemId).hasOwnProperty("tag")) {
      return _this.item(itemId).tag;
    }

    return [];
  };

  //外部调用
  var timeline = {
    set: function(options){ //设置全局属性
      if(typeof options !== 'undefined') {
        $.extend(OPTIONS, options);
      }
    },
    render: function(options){  // 渲染时间线
      var id = event.getElemId(options);
      if(id == "") {
        layer.msg("页面中未找到绑定id", {icon:5});
      } else {
        var _this = TimeLines[id];
        if(typeof _this === 'object'){
          _this.unbindEvent();
        }
        // 创建树
        _this = new TimeLine();
        // 创建时间线
        _this.setting(options);
        _this.init();
        // 添加到时间线数组中去
        TimeLines[id] = _this;

        return _this;
      }

      return null;
    },
    reload: function (timeLine, options) {  // 重载时间线
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return;
      }
      timeLine.reload(options);
    },
    on: function (events, callback) {  // 绑定事件
      if(events.indexOf("'") > 0){
        events = events.replace(/'/g,"");
      }
      if(events.indexOf('"') > 0) {
        events = events.replace(/"/g,"");
      }

      return layui.onevent.call(this, MOD_NAME, events, callback);
    },
    step: function (timeLine, itemId) {  // 移动时间线
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return;
      }
      timeLine.step(itemId);
    },
    size: function (timeLine) {  // 时间线步长
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return 0;
      }
      return timeLine.size();
    },
    data: function (timeLine) {  // 时间线步长
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return [];
      }
      return timeLine.data();
    },
    id: function (timeLine, tag) {  // 时间线id
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return -1;
      }
      return timeLine.itemId(tag);
    },
    item: function (timeLine, itemId) {  // 根据id获取item
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return {};
      }
      return timeLine.item(itemId);
    },
    axis: function (timeLine, itemId) {  // 任务状态
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return -1;
      }
      return timeLine.axis(itemId);
    },
    date: function (timeLine, itemId) {  // 任务日期
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return new Date();
      }
      return timeLine.date(itemId);
    },
    title: function (timeLine, itemId) {  // 任务标题
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return '';
      }
      return timeLine.title(itemId);
    },
    contents: function (timeLine, itemId) {  // 任务内容
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return [];
      }
      return timeLine.contents(itemId);
    },
    items: function (timeLine, itemId) {  // 内容子项
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return [];
      }
      return timeLine.items(itemId);
    },
    block: function (timeLine, itemId) {  // 块状文本
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return '';
      }
      return timeLine.block(itemId);
    },
    submit: function (timeLine, itemId) {  // 任务工具栏
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return false;
      }
      return timeLine.submit(itemId);
    },
    tag: function (timeLine, itemId) {  // 任务工具栏
      if(typeof timeLine === "string"){
        timeLine = TimeLines[timeLine];
      }
      if(typeof timeLine === "undefined"){
        layer.msg("方法获取失败，请检查ID或对象传递是否正确",{icon:2});
        return [];
      }
      return timeLine.tag(itemId);
    },
    escape: function(html){  // 字符串格式化
      return event.escape(html);
    },
    unescape: function(str){  // 字符串反格式化
      return event.unescape(str);
    },
    serialize: function(first, param) {  // 序列化JSON对象
      return AjaxHelper.serialize(first, param);
    },
    version: function(){  //获取版本号
      return VERSION;
    }
  };

  exports(MOD_NAME, timeline);
});