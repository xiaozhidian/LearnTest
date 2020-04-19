<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>入住信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有入住信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  房间号：<input name="fangjianhao" type="text" id="fangjianhao" style='border:solid 1px #000000; color:#666666' size="12" />  客房类型：<input name="kefangleixing" type="text" id="kefangleixing" style='border:solid 1px #000000; color:#666666' size="12" />  入住日期：<input name="ruzhuriqi" type="text" id="ruzhuriqi" style='border:solid 1px #000000; color:#666666' size="12" />  入住人：<input name="ruzhuren" type="text" id="ruzhuren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='ruzhuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>房间号</td>
    <td bgcolor='#CCFFFF'>客房类型</td>
    <td bgcolor='#CCFFFF'>价格</td>
    <td bgcolor='#CCFFFF'>入住日期</td>
    <td bgcolor='#CCFFFF'>住宿天数</td>
    <td bgcolor='#CCFFFF'>总金额</td>
    <td bgcolor='#CCFFFF'>入住人</td>
    
    <!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	double zongjinez=0;
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"ruzhuxinxi"); 
    String url = "ruzhuxinxi_list.jsp?1=1"; 
    String sql =  "select * from ruzhuxinxi where 1=1";
	
if(request.getParameter("fangjianhao")=="" ||request.getParameter("fangjianhao")==null ){}else{sql=sql+" and fangjianhao like '%"+request.getParameter("fangjianhao")+"%'";}
if(request.getParameter("kefangleixing")=="" ||request.getParameter("kefangleixing")==null ){}else{sql=sql+" and kefangleixing like '%"+request.getParameter("kefangleixing")+"%'";}
if(request.getParameter("ruzhuriqi")=="" ||request.getParameter("ruzhuriqi")==null ){}else{sql=sql+" and ruzhuriqi like '%"+request.getParameter("ruzhuriqi")+"%'";}
if(request.getParameter("ruzhuren")=="" ||request.getParameter("ruzhuren")==null ){}else{sql=sql+" and ruzhuren like '%"+request.getParameter("ruzhuren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	zongjinez=zongjinez+Float.valueOf((String)map.get("zongjine")).floatValue();

//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("fangjianhao") %></td>
    <td><%=map.get("kefangleixing") %></td>
    <td><%=map.get("jiage") %></td>
    <td><%=map.get("ruzhuriqi") %></td>
    <td><%=map.get("zhusutianshu") %></td>
    <td><%=map.get("zongjine") %></td>
    <td><%=map.get("ruzhuren") %></td>
    
    <!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="ruzhuxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="ruzhuxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="ruzhuxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
共计总金额:<%=zongjinez%>； <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

