// document.write("script language='javascript' src='b.js'></script");
// var new_element = document.createElement("script");
// new_element.setAttribute("type","text/javascript");
// new_element.setAttribute("src","${pageContext.request.contextPath}/res/js/check.js");
// document.body.appendChild(new_element);

//获取url中的参数 escape 和unescape
//此处要注意，escape会将&符号也进行编码，因此需要和接收方统一，是先unescape再截取参数，还是先截取参数再unescape。
//escape 的结果是：message=%u7EE7%u7EED%u7533%u8BF7
function unescapeUrlParam(param) {
	var reg = new RegExp("(^|&)" + param + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	var r = window.location.search.substr(1).match(reg); //匹配目标参数
	if(r != null) return unescape(r[2]); //unescape参数内容。
	return null; //返回参数值
}
//获取url中的参数 encodeURI 和 decodeURI
//encodeURI  的结果是：message=%E7%BB%A7%E7%BB%AD%E7%94%B3%E8%AF%B7
function decodeUrlParam(param) {
	var reg = new RegExp("(^|&)" + param + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	var r = window.location.search.substr(1).match(reg); //匹配目标参数
	if(r != null) return decodeURI(r[2]); //decodeURI参数内容。
	return null; //返回参数值
}
function getUrlParam(param) {
	var query = window.location.search.substring(1);
	var vars = query.split("&");
	for (var i=0;i<vars.length;i++) {
		var pair = vars[i].split("=");
		if(pair[0] == param){
			return decodeURI(pair[1]);
		}
	}
	return(false);
}
function isDate(date){
	if (date==""){
		return true;
	}
	year=date.substr(0,4);
	//转换月份
	if(date.indexOf('-',0)!=-1){
		separate="-";
	}else{
		if(date.indexOf('/',0)!=-1){
			separate="/";
		}else{
			return true;
		}
	}
	area=date.indexOf(separate,0);
	month=date.substr(area+1,date.indexOf(separate,area+1)-(area+1));
	if(month.length<2){
		month="0"+month;
	}
	//转换日
	area=date.lastIndexOf(separate);
	day=date.substr(area+1,date.length-area-1);
	if(eval(day)<10){
		day="0"+eval(day);
	}
	_date=year+"-"+month+"-"+day;
	if(_date.length!=10){
		return true;
	}
	if(_date.substr(4,1)!="-"){
		return true;
	}
	if(_date.substr(7,1)!="-"){
		return true;
	}
	if(_date.substr(5,2)>"12"){
		return true;
	}
	if(_date.substr(8,2)>"31"){
		return true;
	}
	return false;
}
function isFormEmpty(form){
	for(i = 0; i < form.length;i++) {
		if(form.elements[i].value=="") {
			alert("表单信息不能为空");
			return false;
		}
	}
}
function checkBudget(form){
	if (form.ctId.value==""||isNaN(form.ctId.value)){
		form.ctId.focus();
		alert("请选择清单ID！");
		return false;
	}
	if (form.bgCode.value==""){
		alert("请输入定额编码！");
		form.bgCode.focus();
		return false;
	}
	if (form.bgName.value==""){
		alert("请输入细目名称！");
		form.bgName.focus();
		return false;
	}
}
function checkContract(form){
	if (form.ctCode.value==""){
		form.ctCode.focus();
		alert("请输入清单编码！");
		return false;
	}
	if (form.ctName.value==""){
		alert("请输入细目名称！");
		form.ctName.focus();
		return false;
	}
}
function checkGuidance(form){
	if (form.ctCode.value==""){
		form.ctCode.focus();
		alert("请输入清单编码！");
		return false;
	}
	if (form.bgCode.value==""){
		alert("请输入定额编码！");
		form.bgCode.focus();
		return false;
	}
	if (form.gdCode.value==""){
		alert("请输入指导价编码！");
		form.gdCode.focus();
		return false;
	}
	if (form.gdName.value==""){
		alert("请输入细目名称！");
		form.gdName.focus();
		return false;
	}
}
function checkLabour(form){
	if (form.lbName.value==""){
		form.lbName.focus();
		alert("请输入队伍名称！");
		return false;
	}
	if (form.lbLeader.value==""){
		alert("请输入队伍负责人！");
		form.lbLeader.focus();
		return false;
	}
}
function checkPartItem(form){
	if (form.piRootid.value==""||isNaN(form.piRootid.value)){
		alert("请输入根节点ID！");
		form.piRootid.focus();
		return false;
	}
	if (form.piLevel.value==""||isNaN(form.piLevel.value)){
		alert("请输入节点级别！");
		form.piLevel.focus();
		return false;
	}
	if (form.piNode.value==""){
		alert("请输入节点名称！");
		form.piNode.focus();
		return false;
	}
}
function checkQuantity(form){
	if (form.piId.value==""||isNaN(form.piId.value)){
		form.piId.focus();
		alert("请选择节点ID！");
		return false;
	}
	if (form.lbId.value==""||isNaN(form.lbId.value)){
		alert("请选择劳务ID！");
		form.lbId.focus();
		return false;
	}
	if (form.ctId.value==""||isNaN(form.ctId.value)){
		alert("请选择清单ID！");
		form.ctId.focus();
		return false;
	}
	if (form.bgId.value==""||isNaN(form.bgId.value)){
		alert("请选择定额ID！");
		form.bgId.focus();
		return false;
	}
	if (form.qyName.value==""){
		alert("请输入项目名称！");
		form.qyName.focus();
		return false;
	}
	if (form.qyDate.value==""||isDate(form.qyDate.value)){
		alert("请输入施工日期！（如：1980-07-17）");form.qyDate.focus();return false;
	}
}