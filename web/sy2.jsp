<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
 <%
 
 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
	
										
 String sql="select mima from zhandianguanliyuan  where yonghuming='"+request.getParameter("yonghuming")+"' and  youxiang='"+request.getParameter("youxiang")+"' ";
  //RS_result=connDbBean.executeQuery(sql);
 // out.print(sql);
    //out.print(sql);
//	out.close();
//int i=0;
  for(HashMap map:new CommDAO().select(sql,1,1)){
 // i++;  
  List list = new CommDAO().select("select  * from zhandianguanliyuan  where yonghuming='"+request.getParameter("yonghuming")+"'  and  youxiang='"+request.getParameter("youxiang")+"'");			   
				                			   			
			            // if( map.get("zaoshangshangkeshijian")!="")
		//Response.Write("<script>javascript:alert('您已经上班签到过了111，请不要重复');location.href='qingdao.asp';</script>")				   
				       out.print("<script>javascript:alert('您的密码是："+map.get("mima")+"请妥善保管');location.href='login.jsp';</script>");
					    out.close();
				
				    }
					
					
					out.print("<script>javascript:alert('对不起你的用户名或邮箱错误');location.href='login.jsp';</script>");
					
					}
					
					
					
			
					%>
 <BODY leftMargin=5 topMargin=5 rightMargin=5>
<table width="100%" height="210" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse:collapse">  
  <TBODY>
    <TR 
  align=middle bgColor=#ffffff>
      <td colspan="4" bgColor=#CADCEA>找回密码&nbsp;</td>
    </TR>
    <TR   align=middle 
  bgColor=#ffffff>
      <TD colspan="4" align="left" valign="bottom" >
	  
	  
	  
	  
	  
	  <form  action="zhzhmm.jsp?f=f" target="_parent"  method="post" name="form1"  onsubmit="return checkform();"><table width="41%" height="126" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="9DC9FF" style="border-collapse:collapse">
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
          <td colspan="2" align="center"><input type="submit" name="Submit" value="确定" onClick="return check()" />
              <input type="reset" name="Submit2" value="重置" /></td>
        </tr>
      </table> </form></TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp;</p>
<p>&nbsp;</p>
<P align=right>&nbsp;</P>
</BODY>
</html>

