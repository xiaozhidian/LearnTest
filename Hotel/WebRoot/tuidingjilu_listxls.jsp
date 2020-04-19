<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=tuidingjilu.xls");
%>
<html>
  <head>
    <title>退订记录</title>
  </head>

  <body >
  <p>已有退订记录列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>房间号</td>    <td bgcolor='#CCFFFF'>客房类型</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>入住日期</td>    <td bgcolor='#CCFFFF' width='65' align='center'>退订日期</td>    <td bgcolor='#CCFFFF'>退订人</td>        <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "tuidingjilu_list.jsp?1=1"; 
    String sql =  "select * from tuidingjilu where 1=1";
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
    <td><%=map.get("fangjianhao") %></td>    <td><%=map.get("kefangleixing") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("ruzhuriqi") %></td>    <td><%=map.get("tuidingriqi") %></td>    <td><%=map.get("tuidingren") %></td>        <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=tuidingjilu" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
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

