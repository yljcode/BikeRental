<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>自行车</TITLE>
<!--bixanjxiqxi-->
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"zixingche");
	//ldlbfz
     %>
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
                <TD width=817><span class="red"><strong>自行车</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		  
		 
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>编号：</td><td width='39%'><%=mqt.get("bianhao")%></td><td  rowspan=7 align=center><a href=<%=mqt.get("tupian")%> target=_blank><img src=<%=mqt.get("tupian")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>类型：</td><td width='39%'><%=mqt.get("leixing")%></td></tr><tr>
         <td width='11%' height=44>名称：</td><td width='39%'><%=mqt.get("mingcheng")%></td></tr><tr>
         <td width='11%' height=44>品牌：</td><td width='39%'><%=mqt.get("pinpai")%></td></tr><tr>
         
         <td width='11%' height=44>租金：</td><td width='39%'><%=mqt.get("zujin")%></td></tr><tr>
         <td width='11%' height=44>所在站点：</td><td width='39%'><%=mqt.get("suozaizhandian")%></td></tr><tr>
         <td width='11%' height=44>车辆状态：</td><td width='39%'><%=mqt.get("cheliangzhuangtai")%></td></tr><tr>
         <td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" />
<input type=button name=Submit53 value=租用 onClick="javascript:location.href='zulinjiluadd.jsp?id=<%=id%>';" 



<%
		
   if (mqt.get("issh").equals("是"))  
		{
		    %>
	disabled="disabled"
		<%
			}
				%>




/></td>
         </tr>
    
  </table>
						
						
						
		  </TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
<!-- dfexnxxiaxng -->
</BODY></HTML>

<!--suxilxatxihuxan-->
