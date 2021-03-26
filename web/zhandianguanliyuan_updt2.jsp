<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>站点管理员</title>
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
new CommDAO().update(request,response,"zhandianguanliyuan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"zhandianguanliyuan"); 
%>
  <form  action="zhandianguanliyuan_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="f1"  onsubmit="return checkform();">
  修改站点管理员:
  <br><br>
  <%
  //lixanxdoxngcxhaxifxen
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>     <tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= mmm.get("youxiang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>联系手机：</td><td><input name='lianxishouji' type='text' id='lianxishouji' value='<%= mmm.get("lianxishouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>租赁站点：</td><td><%=Info.getselect("zulinzhandian","zhandianxinxi","zhandianming")%></td></tr><script language="javascript">document.form1.zulinzhandian.value='<%=mmm.get("zulinzhandian")%>';</script>     <tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' value='<%= mmm.get("dizhi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>个人介绍：</td><td><textarea name='gerenjieshao' cols='50' rows='5' id='gerenjieshao' style='border:solid 1px #000000; color:#666666'><%=mmm.get("gerenjieshao")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


