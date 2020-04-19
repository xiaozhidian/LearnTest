<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>退订记录详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"tuidingjilu");
     %>
  退订记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>房间号：</td><td width='39%'><%=m.get("fangjianhao")%></td><td width='11%'>客房类型：</td><td width='39%'><%=m.get("kefangleixing")%></td></tr><tr><td width='11%'>价格：</td><td width='39%'><%=m.get("jiage")%></td><td width='11%'>入住日期：</td><td width='39%'><%=m.get("ruzhuriqi")%></td></tr><tr><td width='11%'>退订日期：</td><td width='39%'><%=m.get("tuidingriqi")%></td><td width='11%'>退订人：</td><td width='39%'><%=m.get("tuidingren")%></td></tr><tr><td width='11%'>退订原因：</td><td width='39%'><%=m.get("tuidingyuanyin")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


