<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�˶���¼��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"tuidingjilu");
     %>
  �˶���¼��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>����ţ�</td><td width='39%'><%=m.get("fangjianhao")%></td><td width='11%'>�ͷ����ͣ�</td><td width='39%'><%=m.get("kefangleixing")%></td></tr><tr><td width='11%'>�۸�</td><td width='39%'><%=m.get("jiage")%></td><td width='11%'>��ס���ڣ�</td><td width='39%'><%=m.get("ruzhuriqi")%></td></tr><tr><td width='11%'>�˶����ڣ�</td><td width='39%'><%=m.get("tuidingriqi")%></td><td width='11%'>�˶��ˣ�</td><td width='39%'><%=m.get("tuidingren")%></td></tr><tr><td width='11%'>�˶�ԭ��</td><td width='39%'><%=m.get("tuidingyuanyin")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


