<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ס��Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"ruzhuxinxi");
     %>
  ��ס��Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>����ţ�</td><td width='39%'><%=m.get("fangjianhao")%></td><td width='11%'>�ͷ����ͣ�</td><td width='39%'><%=m.get("kefangleixing")%></td></tr><tr><td width='11%'>�۸�</td><td width='39%'><%=m.get("jiage")%></td><td width='11%'>��ס���ڣ�</td><td width='39%'><%=m.get("ruzhuriqi")%></td></tr><tr><td width='11%'>ס��������</td><td width='39%'><%=m.get("zhusutianshu")%></td><td width='11%'>�ܽ�</td><td width='39%'><%=m.get("zongjine")%></td></tr><tr><td width='11%'>��ס�ˣ�</td><td width='39%'><%=m.get("ruzhuren")%></td><td width='11%'>��ע��</td><td width='39%'><%=m.get("beizhu")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


