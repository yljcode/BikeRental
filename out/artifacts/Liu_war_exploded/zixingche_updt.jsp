<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>自行车</title>
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
new CommDAO().update(request,response,"zixingche",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"zixingche"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="zixingche_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改自行车:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>类型：</td><td><%=Info.getselect("leixing","cheliangleixing","leixing")%></td></tr><script language="javascript">document.form1.leixing.value='<%=mmm.get("leixing")%>';</script>
     <tr><td>名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='<%= mmm.get("mingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>品牌：</td><td><input name='pinpai' type='text' id='pinpai' value='<%= mmm.get("pinpai")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>租金：</td><td><input name='zujin' type='text' id='zujin' value='<%= mmm.get("zujin")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>所在站点：</td><td><%=Info.getselect("suozaizhandian","zhandianxinxi","zhandianming")%></td></tr><script language="javascript">document.form1.suozaizhandian.value='<%=mmm.get("suozaizhandian")%>';</script>
     <tr><td>车辆状态：</td><td><select name='cheliangzhuangtai' id='cheliangzhuangtai'><option value="正常">正常</option><option value="车辆报废">车辆报废</option><option value="车辆保修">车辆保修</option><option value="丢失">丢失</option></select></td></tr><script language="javascript">document.form1.cheliangzhuangtai.value='<%=mmm.get("cheliangzhuangtai")%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


