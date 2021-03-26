<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>租赁记录</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"zixingche");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("zulinren",(String)request.getSession().getAttribute("username"),"zixingche");
  String bianhao="";  	String leixing="";  	String mingcheng="";  	String pinpai="";  	String zujin="";  	String suozaizhandian="";  	
  bianhao=(String)mlbdq.get("bianhao");  	leixing=(String)mlbdq.get("leixing");  	mingcheng=(String)mlbdq.get("mingcheng");  	pinpai=(String)mlbdq.get("pinpai");  	zujin=(String)mlbdq.get("zujin");  	suozaizhandian=(String)mlbdq.get("suozaizhandian");  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="zulinjilu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"zulinjilu",ext,true,false,""); 
%>

  <body >
 <form  action="zulinjilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加租赁记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelbianhao' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script>		<tr><td  width="200">类型：</td><td><input name='leixing' type='text' id='leixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelleixing' /></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script>		<tr><td  width="200">名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script>		<tr><td  width="200">品牌：</td><td><input name='pinpai' type='text' id='pinpai' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.pinpai.value='<%=pinpai%>';</script>		<tr><td  width="200">租金：</td><td><input name='zujin' type='text' id='zujin' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zujin.value='<%=zujin%>';</script>		<tr><td  width="200">所在站点：</td><td><input name='suozaizhandian' type='text' id='suozaizhandian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.suozaizhandian.value='<%=suozaizhandian%>';</script>		<tr><td  width="200">租赁人：</td><td><input name='zulinren' type='text' id='zulinren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr><td width="200">租赁时间：</td><td><input name='zulinshijian' type='text' id='zulinshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var bianhaoobj = document.getElementById("bianhao"); if(bianhaoobj.value==""){document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入编号</font>";return false;}else{document.getElementById("clabelbianhao").innerHTML="  "; } 	var leixingobj = document.getElementById("leixing"); if(leixingobj.value==""){document.getElementById("clabelleixing").innerHTML="&nbsp;&nbsp;<font color=red>请输入类型</font>";return false;}else{document.getElementById("clabelleixing").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


