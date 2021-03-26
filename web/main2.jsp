<%@ page language="java"  pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>校园自行车租赁系统</title>
    <script language="javascript" type="text/javascript">
        function G(id) {
            return document.getElementById(id);
        }
        var status = 1;
        function switchSysBar() {
            if (1 == status) {
                status = 0;
                G("switchPoint").innerHTML = '<img src="images/left.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "none";
            }
            else {
                status = 1;
                G("switchPoint").innerHTML = '<img src="images/right.gif" style="margin:0 2px">';
                G("frmTitle").style.display = "";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="images/houtai.css" />
</head>
<body>

    <table cellpadding="0" cellspacing="0" class="table">
        <tr>
            <td colspan="2" class="top_menu">
                <div style="font-family:宋体; color:#006633;WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE:30px ; margin-top:5pt">
            <div >&nbsp;&nbsp;校园自行车租赁系统</div>
        </div>            </td>
        </tr>
        <tr>
          <td id="frmTitle" style="width: 182px;">&nbsp;</td>
            <td style="width: 100%" valign="top">
                <table width="100%" cellpadding="0" cellspacing="0" style="height: 100%;">
                    <tr>
                        <td>
                            <div class="menu">
                                <div class="wenzi">
                                    <a href="sy2.jsp" target="frmright" class="a1">显示桌面</a><em>|</em><a
                                        href="yhzhgl.jsp" target="frmright" class="a1">系统用户管理</a><em>|</em>                                </div>
								
                               <div class="wenzi2">
									当前日期：<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%>
                                    <a href="index.jsp" target="_parent">
                                        返回前台</a> <a href="logout.jsp" target="_parent">
                                        退出</a></div>
                            </div>                        </td>
                    </tr>
                    <tr>
                        <td style="height:100%" valign="top" id="tdframe">
                            <iframe frameborder="0" id="frmright" name="frmright" scrolling="auto" src="sy2.jsp"
                                style="margin: 0; visibility: inherit; width: 100%; height:100%; z-index:1" onload="InitBulletin()" >                            </iframe>                        </td>
                    </tr>
                </table>            </td>
        </tr>
    </table>
    </form>
  
</body>
</html>
