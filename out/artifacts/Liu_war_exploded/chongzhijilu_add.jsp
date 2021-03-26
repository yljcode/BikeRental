<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>充值记录</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="chongzhijilu_add.jsp?id=<%=id%>&yonghuming="+document.form1.yonghuming.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan


String sql="update yonghuzhuce set yue=yue+"+request.getParameter("chongzhijine")+" where yonghuming='"+request.getParameter("yonghuming")+"'";
	new CommDAO().commOper(sql); 

}
new CommDAO().insert(request,response,"chongzhijilu",ext,true,false,""); 
%>

  <body >
 <form  action="chongzhijilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加充值记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>用户名：</td><td><%=Info.getselectsl("yonghuming","yonghuzhuce","yonghuming")%>&nbsp;*<label id='clabelyonghuming' /></td></tr>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">充值金额：</td><td><input name='chongzhijine' type='text' id='chongzhijine' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchongzhijine' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("yonghuming")==null || request.getParameter("yonghuming").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("yonghuming",request.getParameter("yonghuming"),"yonghuzhuce"); 
%>
<script language="javascript">
document.form1.yonghuming.value="<%=mmm.get("yonghuming")%>";
document.form1.xingming.value="<%=mmm.get("xingming")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var yonghumingobj = document.getElementById("yonghuming"); if(yonghumingobj.value==""){document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";return false;}else{document.getElementById("clabelyonghuming").innerHTML="  "; } 
	var chongzhijineobj = document.getElementById("chongzhijine"); if(chongzhijineobj.value==""){document.getElementById("clabelchongzhijine").innerHTML="&nbsp;&nbsp;<font color=red>请输入充值金额</font>";return false;}else{document.getElementById("clabelchongzhijine").innerHTML="  "; } 
	var chongzhijineobj = document.getElementById("chongzhijine"); if(chongzhijineobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(chongzhijineobj.value)){document.getElementById("clabelchongzhijine").innerHTML=""; }else{document.getElementById("clabelchongzhijine").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


