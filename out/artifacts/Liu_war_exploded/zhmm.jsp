<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>校园自行车租赁管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<BODY>

 <%
  String id=request.getParameter("id");
   new CommDAO().commOper("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
%>

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
                <TD width=817><span class="red"><strong>找回密码</strong></span></TD>
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
	
										
 String sql="select mima from yonghuzhuce  where yonghuming='"+request.getParameter("yonghuming")+"' and  youxiang='"+request.getParameter("youxiang")+"' ";
  //RS_result=connDbBean.executeQuery(sql);
 // out.print(sql);
    //out.print(sql);
//	out.close();
//int i=0;
  for(HashMap map:new CommDAO().select(sql,1,1)){
 // i++;  
  List list = new CommDAO().select("select  * from yonghuzhuce  where yonghuming='"+request.getParameter("yonghuming")+"'  and  youxiang='"+request.getParameter("youxiang")+"'");			   
				                			   			
			            // if( map.get("zaoshangshangkeshijian")!="")
		//Response.Write("<script>javascript:alert('您已经上班签到过了111，请不要重复');location.href='qingdao.asp';</script>")				   
				       out.print("<script>javascript:alert('您的密码是："+map.get("mima")+"请妥善保管');location.href='index.jsp';</script>");
					    out.close();
				
				    }
					
					
					out.print("<script>javascript:alert('对不起你的用户名或邮箱错误');location.href='index.jsp';</script>");
					
					}
					
					
					
			
					%>
		  
		  
		  
		  
		   <form  action="zhmm.jsp?f=f"  method="post" name="form1"  onsubmit="return checkform();">
		  <table width="41%" height="126" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="9DC9FF" style="border-collapse:collapse">
            <tr>
              <td colspan="2"><div align="center">找回密码</div></td>
            </tr>
            <tr>
              <td>用户名</td>
              <td><input name="yonghuming" type="text" id="yonghuming" />
                  <input name="addnew" type="hidden" id="addnew" value="1"></td>
            </tr>
            <tr>
              <td>邮箱：</td>
              <td><input name="youxiang" type="text" id="youxiang" /></td>
            </tr>
            <tr>
              <td colspan="2" align="center"><input type="submit" name="Submit" value="确定" onClick="return check()" />                <input type="reset" name="Submit2" value="重置" /></td>
              </tr>
          </table>
		   </form></TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%></BODY></HTML>
