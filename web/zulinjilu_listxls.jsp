<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=zulinjilu.xls");
%>
<html>
  <head>
    <title>租赁记录</title>
  </head>

  <body >
  <p>已有租赁记录列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>类型</td>    <td bgcolor='#CCFFFF'>名称</td>    <td bgcolor='#CCFFFF'>品牌</td>    <td bgcolor='#CCFFFF'>租金</td>    <td bgcolor='#CCFFFF'>所在站点</td>    <td bgcolor='#CCFFFF'>租赁人</td>    <td bgcolor='#CCFFFF' width='65' align='center'>租赁时间</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "zulinjilu_list.jsp?1=1"; 
    String sql =  "select * from zulinjilu where 1=1";
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
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("leixing") %></td>    <td><%=map.get("mingcheng") %></td>    <td><%=map.get("pinpai") %></td>    <td><%=map.get("zujin") %></td>    <td><%=map.get("suozaizhandian") %></td>    <td><%=map.get("zulinren") %></td>    <td><%=map.get("zulinshijian") %></td>    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=zulinjilu" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

