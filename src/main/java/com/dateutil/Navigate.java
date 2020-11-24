package com.dateutil;

import java.sql.*;

/**
 * 翻页导航栏
 * @author skey
 * @version 3.0
 */
public class Navigate
{
	private ResultSet _rs = null;// 结果集
	private int _pageSize = 10;// 设置一页显示记录数目
	private int _currentPage = 1;// 当前页数
	private int _totalPage = 1;// 总页数
	private int _totalRecord = 0;// 总记录数目
	private String _toolBar = "";// 导航栏
	private int _lineNumber = 5;// 显示在(...1 2 3 4 5 6...)中数字的个数
	private String _toURLPage = "#";// 跳转的页面名字
	private String _currentPageName = "currentPage";// 当前页的参数名,默认为currentPage
	private String _toolBarFormName = "jumpPageFormName";// 导航栏的form名,jumpPageFormName+number
	private int i = 0;// 内部计数变量 如jumpPageFormName0,jumpPageFormName1 ...
	private String _toolBarHiddenField = "";// 表单隐藏字段
	private String _toolBarHiddenFieldHyperlink = "";// 超链接字段
	private String _btnFirstText = "首页";// 显示"首页"字样
	private String _btnPrevText = "上页";// 显示"上页"字样
	private String _btnLineFrontText = "...";// 显示前一个"..."字样
	private String _btnLineBackText = "...";// 显示后一个"..."字样
	private String _btnNextText = "下页";// 显示"下页"字样
	private String _btnLastText = "尾页";// 显示"尾页"字样
	private String _btnGOText = "GO";// 显示"GO"字样
	private int _btnJumpTextSize = 2;// 文本框长度

	public Navigate()// 初始化对象
	{
	}

	/**
	 * 设置显示在(... 1 2 3 4 5 ...)中数字的个数,默认为5个
	 * @param num int 小于等于1则为1,小于等于0没有显示意义
	 */
	public void setLineNumber(int num)
	{
		_lineNumber = num;
		if (_lineNumber <= 1) {
			_lineNumber = 1;
		}
	}

	/**
	 * 设置跳转的页面
	 * @param name 默认为#,如index.jsp
	 */
	public void setURLPage(String name)
	{
		_toURLPage = name;
	}

	/**
	 * 设置当前页的表单名字
	 * @param name 默认为currentPage
	 */
	public void setCurrentPageName(String name)
	{
		_currentPageName = name;
	}

	/**
	 * 设置导航栏GO按钮的form名字，实际名为name+数字,如name1,name2...
	 * @param name
	 */
	public void setToolBarFormName(String name)
	{
		_toolBarFormName = name;
	}

	/**
	 * 取得一页显示条目数目
	 * @return
	 */
	public int getPageSize()
	{
		return _pageSize;
	}

	/**
	 * 取得当前页数
	 * @return
	 */
	public int getCurrentPage()
	{
		return _currentPage;
	}

	/**
	 * 取得最未页页数
	 * @return int
	 */
	public int getTotalPage()
	{
		return _totalPage;
	}

	/**
	 * 取得全部记录条目数目
	 * @return
	 */
	public int getTotalRecord()
	{
		return _totalRecord;
	}

	/**
	 * 添加隐藏字段
	 * @param hiddenName
	 * @param hiddenValue
	 */
	public void addHiddenField(String hiddenName, String hiddenValue)
	{
		_toolBarHiddenField += "<input type='hidden' name='" + hiddenName + "' value='"
				+ hiddenValue + "' />" + "\n";
		_toolBarHiddenFieldHyperlink += "&" + hiddenName + "=" + hiddenValue;
	}

	/**
	 * 设置首页按钮显示字样
	 * @param name
	 */
	public void setBtnFirstText(String name)
	{
		_btnFirstText = name;
	}

	/**
	 * 设置上页按钮显示字样
	 * @param name
	 */
	public void setBtnPrevText(String name)
	{
		_btnPrevText = name;
	}

	/**
	 * 设置显示前面...按钮显示字样 ... 1 2 3 4 5 ...
	 * @param name
	 */
	public void setBtnLineFrontText(String name)
	{
		_btnLineFrontText = name;
	}

	/**
	 * 设置显示后面...按钮显示字样 ... 1 2 3 4 5 ...
	 * @param name
	 */
	public void setBtnLineBackText(String name)
	{
		_btnLineBackText = name;
	}

	/**
	 * 设置下页按钮显示字样
	 * @param name
	 */
	public void setBtnNextText(String name)
	{
		_btnNextText = name;
	}

	/**
	 * 设置尾页按钮显示字样
	 * @param name
	 */
	public void setBtnLastTextString(String name)
	{
		_btnLastText = name;
	}

	/**
	 * 设置跳转按钮GO显示字样
	 * @param name
	 */
	public void setBtnGOText(String name)
	{
		_btnGOText = name;
	}

	/**
	 * 设置跳转文本框长度
	 * @param jumpPageSize 显示size的大小
	 */
	public void setJumpTextSize(int jumpPageSize)
	{
		if (jumpPageSize <= 1) {
			_btnJumpTextSize = 1;
		} else {
			_btnJumpTextSize = jumpPageSize;
		}
	}

	private void setParam()
	{
		if (_pageSize < 1)
		{
			_pageSize = 1;
		}
		if (_totalRecord % _pageSize == 0) {// 计算总页数
			_totalPage = _totalRecord / _pageSize;// 偶数页
		} else {
			_totalPage = (int) Math.floor(_totalRecord / _pageSize) + 1;// 奇数页
		}
		if (_totalPage <= 0) {
			_totalPage = 1;
		}
		if (_currentPage > _totalPage) {
			_currentPage = _totalPage;
		}
		if (_currentPage < 1) {
			_currentPage = 1;
		}
	}

	/**
	 * 根据结果集设置分页与分页参数
	 * @param rs 结果集
	 * @param currentPage 当前页
	 * @param pageSize 一页记录条数
	 * @throws Exception
	 */
	public void setParam(java.sql.ResultSet rs, int currentPage, int pageSize) throws Exception
	{
		try
		{
			_currentPage = currentPage;// 设置当前页数
			_pageSize = pageSize;// 设置一页显示记录数目
			_rs = rs;
			if (_rs == null)// 如果结果集为空
			{
				_totalRecord = 0;
			}
			else
			{
				_totalRecord = getRsCount(_rs);// 设置当前总记录数目
			}
			setParam();// 设置参数
		}
		catch (Exception ex)
		{
		}
	}

	/**
	 * 直接设置分页参数
	 * @param totalRecord 结果总条数
	 * @param currentPage 当前页
	 * @param pageSize 一页记录条数
	 * @throws Exception
	 */
	public void setParam(int totalRecord, int currentPage, int pageSize) throws Exception
	{
		try
		{
			_currentPage = currentPage;// 设置当前页数
			_pageSize = pageSize;// 设置一页显示记录数目
			if (totalRecord <= 0)// 总数目不能为负
			{
				_totalRecord = 0;
			}
			else
			{
				_totalRecord = totalRecord;
			}
			setParam();// 设置参数
		}
		catch (Exception ex)
		{
		}
	}

	/**
	 * 获取记录集总数
	 */
	public int getRsCount(java.sql.ResultSet rs) throws Exception
	{
		try
		{
			if (rs == null)
			{
				return 0;
			}
			// int nowRow = rs.getRow();// 取得当前位置
			rs.last();// 将指针指向最后
			int intRowCount = rs.getRow();// 取得结果集总数
			// rs.absolute(nowRow);// 复原指针
			return intRowCount;// 返回结果集数目
		}
		catch (Exception ex)
		{
			return 0;
		}
	}

	/**
	 * 取得一个href值
	 * @param currentPage
	 * @return
	 */
	private String getHref(int currentPage)
	{
		return " href='" + _toURLPage + "?" + _currentPageName + "="
				+ Integer.toString(currentPage) + _toolBarHiddenFieldHyperlink + "'";
	}

	/**
	 * 返回一个连接到第currentPage页的连接
	 * @param currentPage
	 * @param showText
	 * @param isNotShow disabled值
	 * @return
	 */
	private String getHyperlink(int currentPage, String showText, boolean isNotShow)
	{
		String btnStr = "<a";
		if (isNotShow)
		{
			btnStr += " disabled='true'";
		}
		else
		{
			btnStr += getHref(currentPage);
		}
		btnStr += "><font color=\"#0000ff\">" + showText + "</font></a>&nbsp;\n";
		return btnStr;
	}

	/**
	 * 返回一个连接到第currentPage页的连接
	 * @param currentPage
	 * @param showText
	 * @return String
	 */
	private String getHyperlink(int currentPage, String showText)
	{
		return getHyperlink(currentPage, showText, false);
	}

	private String getLineNumberHyperlink(int startPage, int endPage, int currentPage)
	{
		String btnA = "";
		int _counti = 0;// 用于循环
		for (_counti = startPage; _counti <= endPage; _counti++)
		{
			String _countiStr = (String) (Integer.toString(_counti));
			if (currentPage != _counti) {
				btnA += getHyperlink(_counti, _countiStr);
			} else {
				btnA += getHyperlink(_counti, _countiStr, true);
			}
		}
		return btnA;
	}

	// *****************************************************************
	// 导航栏内容
	/**
	 * 取得"共n条记录"
	 * @return String
	 */
	public String getCountLable()
	{
		return "共" + (String) (Integer.toString(_totalRecord)) + "条记录&nbsp;\n";
	}

	/**
	 * 取得"第a/b页"
	 * @return String
	 */
	public String getInformationLable()
	{
		return "第" + (String) (Integer.toString(_currentPage)) + "/"
				+ (String) (Integer.toString(_totalPage)) + "页&nbsp;\n";
	}

	/**
	 * 取得"首页"超链接
	 * @return String
	 */
	public String getFirstHyperlink()
	{
		return getHyperlink(1, _btnFirstText, (_currentPage == 1));
	}

	/**
	 * 取得"上页"超链接
	 * @return String
	 */
	public String getPreviousHyperlink()
	{
		return getHyperlink((_currentPage - 1), _btnPrevText, (_currentPage == 1));
	}

	/**
	 * 取得"下页"超链接
	 * @return String
	 */
	public String getNextHyperlink()
	{
		return getHyperlink((_currentPage + 1), _btnNextText,
				(_currentPage == _totalPage || _totalPage == 1));
	}

	/**
	 * 取得"尾页"超链接
	 * @return String
	 */
	public String getLastHyperlink()
	{
		return getHyperlink(_totalPage, _btnLastText,
				(_currentPage == _totalPage || _totalPage == 1));
	}

	/**
	 * 取得"... 1 2 3 4 5 ..."超链接
	 * @return String
	 */
	public String getLineHyperlink()
	{
		return getButtonNumberLine(_btnLineFrontText, _btnLineBackText);
	}

	/**
	 * 取得"跳到第[]页 GO"
	 * @return String
	 */
	public String getButtonGO()
	{
		return getButtonGO(true, _btnGOText, _btnJumpTextSize, (_totalPage == 1));
	}

	// *****************************************************************
	/**
	 * 取得"... 1 2 3 4 5 ..."
	 * @param frontText 替代前一个"..."
	 * @param backText 替代后一个"..."
	 * @return
	 */
	private String getButtonNumberLine(String frontText, String backText)
	{
		String btnLine = "";
		String frontStr = "";
		String centerStr = "";
		String backStr = "";
		// 计算要开始显示的页数
		int _starti = 0;
		_starti = (((int) Math.floor((_currentPage - 1) / _lineNumber)) * _lineNumber) + 1;
		// 计算要显示的最后页数
		int _endi = 0;
		if ((_totalPage - _starti + 1) <= _lineNumber) {// 已经到最后一页了
			_endi = _totalPage;
		} else {
			_endi = _starti + _lineNumber - 1;
		}
		centerStr = getLineNumberHyperlink(_starti, _endi, _currentPage);
		// 是否要显示前面的...
		if (_starti > 1)// 前面的...
		{
			frontStr = getHyperlink((_starti - 1), frontText);
		}
		// 是否要显示后面的...
		if (_endi < _totalPage)// 后面的...
		{
			backStr = getHyperlink((_endi + 1), backText);
		}
		btnLine = frontStr + centerStr + backStr;
		return btnLine;
	}

	private String getButtonGO(boolean isShowValue, String showButtonText, int textSize,
							   boolean readText)
	{
		i++;
		String _formP = Integer.toString(i);
		if (textSize <= 0) {
			textSize = 2;
		}
		String btnGO = "";
		String currPage = Integer.toString(_currentPage);
		btnGO = "<form name='" + _toolBarFormName + _formP + "' method='post' action='"
				+ _toURLPage + "' style='display:inline'>\n";
		btnGO += "跳到第<input type='text' value='";
		if (isShowValue) {
			btnGO += currPage;
		}
		btnGO += "' name='" + _currentPageName + "' size='" + Integer.toString(textSize) + "' ";
		if (readText)
		{
			btnGO += " readonly='true'";
		}
		btnGO += "/>页\n";
		btnGO += "<input type='submit' name='submit' value='" + showButtonText + "'";
		// if (_totalPage == 1){_toolBar += " disabled='true'";}else{
		btnGO += " onClick=\"javascript:"
				+ "v=document."
				+ _toolBarFormName
				+ _formP
				+ "."
				+ _currentPageName
				+ ".value;"
				+ "if(v.indexOf('.')==-1 && v.indexOf('-')==-1 && v!='' && !isNaN(v) && v!=0 && v!="
				+ currPage + ")" + "{return true;}return false;\"";
		// }
		btnGO += " />\n" + _toolBarHiddenField + "</form>\n";
		return btnGO;
	}

	/**
	 * 返回导航栏,需先设置setURLPage(URLPage)
	 * @param isCount 是否显示 共n条记录
	 * @param isInformation 是否显示 第a/b页
//	 * @param isNavigator 是否显示 首页 上页 下页 尾页
	 * @param isJumpPage 是否显示 跳到第[]页 GO
	 * @param isCount 是否显示 共n条记录
	 * @param isInformation 是否显示 第a/b页
	 * @param isFirst 是否显示 首页
	 * @param isPrev 是否显示 上页
	 * @param isLine 是否显示 ... 1 2 3 4 5 ... 设置setLineNumber(int 5)默认为5
	 * @param isNext 是否显示 下页
	 * @param isLast 是否显示 尾页
	 * @param isJumpPage 是否显示 跳到第[]页 GO
	 * @return String
	 */
	public String getToolBar(boolean isCount, boolean isInformation, boolean isFirst,
							 boolean isPrev, boolean isLine, boolean isNext, boolean isLast, boolean isJumpPage)
	{
		// *************************
		// _toolBar开头
		_toolBar = "\n\n" + "<table width='100%' border='0' cellpadding='0' cellspacing='0'>\n"
				+ "<tr align='right'>\n" + "<td valign='bottom' align='right' nowrap='true'>\n";
		//
		if (isCount) {// ***********共n条记录***********// n总记录条数
			_toolBar += getCountLable();
		}
		if (isInformation) {// ***********第a/b页***********// a当前页数,b总页数
			_toolBar += getInformationLable();
		}
		if (isFirst) {// ***********首页***********
			_toolBar += getFirstHyperlink();
		}
		if (isPrev) {// ***********上页***********
			_toolBar += getPreviousHyperlink();
		}
		if (isLine) {// *********** ... 1 2 3 4 5 ... ***********
			_toolBar += getLineHyperlink();
		}
		if (isNext) {// ***********下页***********
			_toolBar += getNextHyperlink();
		}
		if (isLast) {// ***********尾页***********
			_toolBar += getLastHyperlink();
		}
		if (isJumpPage) {// ***********跳到第[]页 GO***********
			_toolBar += getButtonGO();
		}
		// _toolBar结尾
		_toolBar += "</td>\n" + "</tr>\n" + "</table>" + "\n\n";
		return _toolBar;
	}

	/**
	 * 返回导航栏,需先设置setURLPage(URLPage)
	 * @param isCount 是否显示 共n条记录
	 * @param isInformation 是否显示 第a/b页
//	 * @param isNavigator 是否显示 首页 上页 下页 尾页
	 * @param isJumpPage 是否显示 跳到第[]页 GO
	 * @return String
	 */
	public String getToolBar(boolean isCount, boolean isInformation, boolean isNavigate,
							 boolean isJumpPage)
	{
		if (isNavigate)
		{
			return getToolBar(isCount, isInformation, true, true, false, true, true, isJumpPage);
		}
		return getToolBar(isCount, isInformation, false, false, false, false, false, isJumpPage);
	}

	/**
	 * 返回导航栏,需先设置setURLPage(URLPage)
	 * @return String
	 */
	public String getToolBar()
	{
		return getToolBar(true, true, true, true);
	}

	/**
	 * 跳转到URLPage的导航栏
	 * @param URLPage
	 * @return String
	 */
	public String getToolBar(String URLPage)
	{
		setURLPage(URLPage);
		return getToolBar(true, true, true, true);
	}

	/**
	 * 返回完整的导航栏
	 * @return
	 */
	public String getToolBarAll()
	{
		return getToolBar(true, true, true, true, true, true, true, true);
	}
	/**
	 * <%<br>
	 * //index.jsp<br> // simple example<br>
	 * PageNavigate pn=new PageNavigate();<br>
	 * String pp=(String)request.getParameter("pp");<br>
	 * if(pp==null)pp="1";<br>
	 * int currentPageT=Integer.parseInt(pp);<br>
	 * int pageSizeT=6;<br>
	 * int totalRecordT=2947;<br>
	 * pn.setURLPage("index.jsp");// 必要<br>
	 * pn.setToolBarFormName("myformtest");// 不必要<br>
	 * pn.setCurrentPageName("pp");// 不必要<br>
	 * pn.addHiddenField("pageSize","10");// 添加隐藏字段,默认只保存当前页字段<br>
	 * pn.setParam(totalRecordT, currentPageT,pageSizeT);// 设置参数<br> //
	 * pn.setParam(rs,currentPage,pageSize);// 如果是结果集则用这个<br>
	 * out.print(pn.getToolBar("index.jsp"));// 如果执行pn.setURLPage("index.jsp");则不必要<br>
	 * out.print(pn.getToolBar(true,true,true,true));<br>
	 * out.print(pn.getToolBar(true,true,true,true,true,true,true,true));<br>
	 * pn.setBtnFirstText("第一页");// 不必要<br>
	 * pn.setBtnPrevText("上一页");// 不必要<br>
	 * pn.setLineNumber(10); pn.setBtnLineFrontText("前10页");// 不必要<br>
	 * pn.setBtnLineBackText("后10页");// 不必要<br>
	 * pn.setBtnNextText("下一页");// 不必要<br>
	 * pn.setBtnLastTextString("最后页");// 不必要<br>
	 * pn.setBtnGOText("跳页");// 不必要<br>
	 * pn.setJumpTextSize(3);// 不必要
	 * out.print(pn.getToolBar(true,true,true,true,true,true,true,true));<br>
	 * out.print(pn.getToolBarAll());<br>
	 * out.print(pn.getCountLable());// 返回"共n条记录"<br>
	 * out.print(pn.getInformationLable());// 返回"第a/b页"<br>
	 * out.print(pn.getFirstHyperlink());// 返回"首页"<br>
	 * out.print(pn.getPreviousHyperlink());// 返回"上页"<br>
	 * out.print(pn.getNextHyperlink());// 返回"下页"<br>
	 * out.print(pn.getLastHyperlink());// 返回"尾页"<br>
	 * out.print(pn.getLineHyperlink());// 返回"... 1 2 3 4 5 ..."<br>
	 * out.print(pn.getButtonGO());// 返回"跳到第[]页 GO"<br>%>
	 */
}