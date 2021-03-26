<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>站点管理员</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有站点管理员列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='zhandianguanliyuan_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>用户名</td>    <td bgcolor='#CCFFFF'>密码</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>邮箱</td>    <td bgcolor='#CCFFFF'>联系手机</td>    <td bgcolor='#CCFFFF'>租赁站点</td>    <td bgcolor='#CCFFFF'>地址</td>        
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"zhandianguanliyuan"); 
    String url = "zhandianguanliyuan_list.jsp?1=1"; 
    String sql =  "select * from zhandianguanliyuan where 1=1";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
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
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("youxiang") %></td>    <td><%=map.get("lianxishouji") %></td>    <td><%=map.get("zulinzhandian") %></td>    <td><%=map.get("dizhi") %></td>        
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="zhandianguanliyuan_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="zhandianguanliyuan_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="zhandianguanliyuan_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
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

