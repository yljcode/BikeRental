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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
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
                <TD width=817><span class="red"><strong>自行车</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		  
		  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  类型：<%=Info.getselect("leixing","cheliangleixing","leixing"," 1=1 ")%>  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='zixingchelisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>
    <td bgcolor='#CCFFFF'>类型</td>
    <td bgcolor='#CCFFFF'>名称</td>
    <td bgcolor='#CCFFFF'>品牌</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>图片</td>
    <td bgcolor='#CCFFFF'>租金</td>
    <td bgcolor='#CCFFFF'>所在站点</td>
    <td bgcolor='#CCFFFF'>车辆状态</td>
     <td bgcolor='#CCFFFF' width='80' align='center'>是否已出租</td>
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"zixingche"); 
    String url = "zixingchelist.jsp?issh='是'"; 
    String sql =  "select * from zixingche where 1=1";
	
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("leixing")=="" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+request.getParameter("leixing")+"%'";}
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td><td><%=map.get("leixing") %></td><td><%=map.get("mingcheng") %></td><td><%=map.get("pinpai") %></td><td width='90'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("zujin") %></td><td><%=map.get("suozaizhandian") %></td><td><%=map.get("cheliangzhuangtai") %></td>
      <td width='80' align='center'><%=map.get("issh")%></a></td>
    <td width="30" align="center"> <a href="zixingchedetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }						
						
						
						
		  </TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
<!-- dfexnxxiaxng -->
</BODY></HTML>

<!--suxilxatxihuxan-->
