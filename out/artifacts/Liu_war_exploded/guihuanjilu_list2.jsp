<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>归还记录</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有归还记录列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  类型：<input name="leixing" type="text" id="leixing" style='border:solid 1px #000000; color:#666666' size="12" />  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>类型</td>    <td bgcolor='#CCFFFF'>名称</td>    <td bgcolor='#CCFFFF'>品牌</td>    <td bgcolor='#CCFFFF'>租金</td>    <td bgcolor='#CCFFFF'>所在站点</td>    <td bgcolor='#CCFFFF'>归还人</td>    <td bgcolor='#CCFFFF'>租赁时间</td>    <td bgcolor='#CCFFFF' width='65' align='center'>归还时间</td>    <td bgcolor='#CCFFFF'>租赁天数</td>    <td bgcolor='#CCFFFF'>金额</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"guihuanjilu"); 
    String url = "guihuanjilu_list2.jsp?1=1"; 
    String sql =  "select * from guihuanjilu where guihuanren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("leixing")=="" ||request.getParameter("leixing")==null ){}else{sql=sql+" and leixing like '%"+request.getParameter("leixing")+"%'";}if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}
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
    <td><%=map.get("bianhao") %></td> <td><%=map.get("leixing") %></td> <td><%=map.get("mingcheng") %></td> <td><%=map.get("pinpai") %></td> <td><%=map.get("zujin") %></td> <td><%=map.get("suozaizhandian") %></td> <td><%=map.get("guihuanren") %></td> <td><%=map.get("zulinshijian") %></td> <td><%=map.get("guihuanshijian") %></td> <td><%=map.get("zulintianshu") %></td> <td><%=map.get("jine") %></td> 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="guihuanjilu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="guihuanjilu_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="guihuanjilu_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
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

