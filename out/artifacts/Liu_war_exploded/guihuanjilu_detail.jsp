<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>归还记录详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"guihuanjilu");
     %>
  归还记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>类型：</td><td width='39%'><%=m.get("leixing")%></td></tr><tr><td width='11%'>名称：</td><td width='39%'><%=m.get("mingcheng")%></td><td width='11%'>品牌：</td><td width='39%'><%=m.get("pinpai")%></td></tr><tr><td width='11%'>租金：</td><td width='39%'><%=m.get("zujin")%></td><td width='11%'>所在站点：</td><td width='39%'><%=m.get("suozaizhandian")%></td></tr><tr><td width='11%'>归还人：</td><td width='39%'><%=m.get("guihuanren")%></td><td width='11%'>租赁时间：</td><td width='39%'><%=m.get("zulinshijian")%></td></tr><tr><td width='11%'>归还时间：</td><td width='39%'><%=m.get("guihuanshijian")%></td><td width='11%'>租赁天数：</td><td width='39%'><%=m.get("zulintianshu")%></td></tr><tr><td width='11%'>金额：</td><td width='39%'><%=m.get("jine")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


