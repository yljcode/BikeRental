<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>自行车</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有自行车列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  类型：<%=Info.getselect("leixing","cheliangleixing","leixing"," 1=1 ")%>  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='zixingche_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
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
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"zixingche"); 
    String url = "zixingche_list.jsp?1=1"; 
    String sql =  "select * from zixingche where suozaizhandian='"+request.getSession().getAttribute("zd")+"' ";
	
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
    <td><%=map.get("bianhao") %></td>
    <td><%=map.get("leixing") %></td>
    <td><%=map.get("mingcheng") %></td>
    <td><%=map.get("pinpai") %></td>
    <td width='90'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("zujin") %></td>
    <td><%=map.get("suozaizhandian") %></td>
    <td><%=map.get("cheliangzhuangtai") %></td>
        <td width='80' align='center'><a href="hc.jsp?id=<%=map.get("bianhao")%>&yuan=<%=map.get("issh")%>&tablename=zixingche" onClick="return confirm('确定要执行此操作？');"><%=map.get("issh")%></a></a></td>

	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="zixingche_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="zixingche_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="zixingchedetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

