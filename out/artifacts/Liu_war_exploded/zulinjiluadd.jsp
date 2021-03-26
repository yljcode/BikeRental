<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>租赁记录</TITLE>
<!--bixanjxiqxi-->
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"zixingche");
  String bianhao="";
  	String leixing="";
  	String mingcheng="";
  	String pinpai="";
  	String zujin="";
  	String suozaizhandian="";
  	
  bianhao=(String)mlbdq.get("bianhao");
  	leixing=(String)mlbdq.get("leixing");
  	mingcheng=(String)mlbdq.get("mingcheng");
  	pinpai=(String)mlbdq.get("pinpai");
  	zujin=(String)mlbdq.get("zujin");
  	suozaizhandian=(String)mlbdq.get("suozaizhandian");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var bianhaoobj = document.getElementById("bianhao"); if(bianhaoobj.value==""){document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入编号</font>";return false;}else{document.getElementById("clabelbianhao").innerHTML="  "; } 
	var leixingobj = document.getElementById("leixing"); if(leixingobj.value==""){document.getElementById("clabelleixing").innerHTML="&nbsp;&nbsp;<font color=red>请输入类型</font>";return false;}else{document.getElementById("clabelleixing").innerHTML="  "; } 
	
}
function gow()
{
	document.location.href="zulinjiluadd.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->

<BODY>


<%@ include file="qttop.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD vAlign=top width=230>
     <%@ include file="qtleft.jsp"%>
      </TD>
    <TD vAlign=top width=10>&nbsp;</TD>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=bottom height=40>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=50 height=40><IMG height=35 
                  src="qtimages/B0039.gif" 
                  width=30></TD>
                <TD width=817><span class="red"><strong>租赁记录</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		  
		 
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
ext.put("issh","否");


String sql="update zixingche set issh='是' where id='"+request.getParameter("id")+"'";
	new CommDAO().commOper(sql); 
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"zulinjilu",ext,true,false,"zixingchelist.jsp"); 
%>
   <form  action="zulinjiluadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelbianhao' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script>
		<tr><td  width="200">类型：</td><td><input name='leixing' type='text' id='leixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelleixing' /></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script>
		<tr><td  width="200">名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script>
		<tr><td  width="200">品牌：</td><td><input name='pinpai' type='text' id='pinpai' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.pinpai.value='<%=pinpai%>';</script>
		<tr><td  width="200">租金：</td><td><input name='zujin' type='text' id='zujin' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zujin.value='<%=zujin%>';</script>
		<tr><td  width="200">所在站点：</td><td><input name='suozaizhandian' type='text' id='suozaizhandian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.suozaizhandian.value='<%=suozaizhandian%>';</script>
		<tr><td  width="200">租赁人：</td><td><input name='zulinren' type='text' id='zulinren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td width="200">租赁时间：</td><td><input name='zulinshijian' type='text' id='zulinshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						
						
						
		  </TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
<!-- dfexnxxiaxng -->
</BODY></HTML>

<!--suxilxatxihuxan-->
