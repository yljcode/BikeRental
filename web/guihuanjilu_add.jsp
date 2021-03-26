<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>归还记录</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"zulinjilu");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("guihuanren",(String)request.getSession().getAttribute("username"),"zulinjilu");
  String bianhao="";
  	String leixing="";
  	String mingcheng="";
  	String pinpai="";
  	String zujin="";
  	String suozaizhandian="";
  	String zulinshijian="";
  	
  bianhao=(String)mlbdq.get("bianhao");
  	leixing=(String)mlbdq.get("leixing");
  	mingcheng=(String)mlbdq.get("mingcheng");
  	pinpai=(String)mlbdq.get("pinpai");
  	zujin=(String)mlbdq.get("zujin");
  	suozaizhandian=(String)mlbdq.get("suozaizhandian");
  	zulinshijian=(String)mlbdq.get("zulinshijian");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="guihuanjilu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
int tianshu=Info.dayToday(request.getParameter("zulinshijian"),request.getParameter("guihuanshijian"))+1;
ext.put("zulintianshu",tianshu); 
double jinej=0;jinej=Float.valueOf(request.getParameter("zujin")).floatValue()*Float.valueOf(tianshu).floatValue();
//youshenhe


int i=(int)jinej;
//out.print(i);

//youzhifu




ext.put("jine",jinej);




String sql="update zulinjilu set issh='是' where id='"+request.getParameter("id")+"'";
new CommDAO().commOper(sql);

sql="update zixingche set issh='是' where bianhao='"+request.getParameter("bianhao")+"'";
new CommDAO().commOper(sql);

	
	
	
	String sql2="update yonghuzhuce set yue=yue-'"+i+"' where yonghuming='"+request.getSession().getAttribute("username")+"'";
	//out.print(sql2);
	new CommDAO().commOper(sql2); 
	
	 

}
new CommDAO().insert(request,response,"guihuanjilu",ext,true,false,""); 
%>

  <body >
 <form  action="guihuanjilu_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加归还记录:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelbianhao' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=bianhao%>';</script>
		<tr><td  width="200">类型：</td><td><input name='leixing' type='text' id='leixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelleixing' /></td></tr><script language="javascript">document.form1.leixing.value='<%=leixing%>';</script>
		<tr><td  width="200">名称：</td><td><input name='mingcheng' type='text' id='mingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.mingcheng.value='<%=mingcheng%>';</script>
		<tr><td  width="200">品牌：</td><td><input name='pinpai' type='text' id='pinpai' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.pinpai.value='<%=pinpai%>';</script>
		<tr><td  width="200">租金：</td><td><input name='zujin' type='text' id='zujin' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zujin.value='<%=zujin%>';</script>
		<tr><td  width="200">所在站点：</td><td><input name='suozaizhandian' type='text' id='suozaizhandian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.suozaizhandian.value='<%=suozaizhandian%>';</script>
		<tr><td  width="200">归还人：</td><td><input name='guihuanren' type='text' id='guihuanren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">租赁时间：</td><td><input name='zulinshijian' type='text' id='zulinshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zulinshijian.value='<%=zulinshijian%>';</script>
		<tr><td width="200">归还时间：</td><td><input name='guihuanshijian' type='text' id='guihuanshijian' value='<%=Info.getdayStr()%>' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">租赁天数：</td><td>此项不必填写，系统自动计算&nbsp;<label id='clabelzulintianshu' />必需数字型</td></tr>
		<tr><td  width="200">金额：</td><td> 此项不必填写，系统自动计算</td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var bianhaoobj = document.getElementById("bianhao"); if(bianhaoobj.value==""){document.getElementById("clabelbianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入编号</font>";return false;}else{document.getElementById("clabelbianhao").innerHTML="  "; } 
	var leixingobj = document.getElementById("leixing"); if(leixingobj.value==""){document.getElementById("clabelleixing").innerHTML="&nbsp;&nbsp;<font color=red>请输入类型</font>";return false;}else{document.getElementById("clabelleixing").innerHTML="  "; } 
	var zulintianshuobj = document.getElementById("zulintianshu"); if(zulintianshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(zulintianshuobj.value)){document.getElementById("clabelzulintianshu").innerHTML=""; }else{document.getElementById("clabelzulintianshu").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


