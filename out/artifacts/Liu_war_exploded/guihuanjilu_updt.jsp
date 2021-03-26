<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>归还记录</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"guihuanjilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"guihuanjilu"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="guihuanjilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改归还记录:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>类型：</td><td><input name='leixing' type='text' id='leixing' value='<%= mmm.get("leixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='<%= mmm.get("mingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>品牌：</td><td><input name='pinpai' type='text' id='pinpai' value='<%= mmm.get("pinpai")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>租金：</td><td><input name='zujin' type='text' id='zujin' value='<%= mmm.get("zujin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>所在站点：</td><td><input name='suozaizhandian' type='text' id='suozaizhandian' value='<%= mmm.get("suozaizhandian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>归还人：</td><td><input name='guihuanren' type='text' id='guihuanren' value='<%= mmm.get("guihuanren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>租赁时间：</td><td><input name='zulinshijian' type='text' id='zulinshijian' value='<%= mmm.get("zulinshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>归还时间：</td><td><input name='guihuanshijian' type='text' id='guihuanshijian' value='<%= mmm.get("guihuanshijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>租赁天数：</td><td><input name='zulintianshu' type='text' id='zulintianshu' value='<%= mmm.get("zulintianshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>金额：</td><td><input name='jine' type='text' id='jine' value='<%= mmm.get("jine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


