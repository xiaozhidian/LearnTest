<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>��ס��Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>������ס��Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ţ�<input name="fangjianhao" type="text" id="fangjianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �ͷ����ͣ�<input name="kefangleixing" type="text" id="kefangleixing" style='border:solid 1px #000000; color:#666666' size="12" />  ��ס���ڣ�<input name="ruzhuriqi" type="text" id="ruzhuriqi" style='border:solid 1px #000000; color:#666666' size="12" />  ��ס�ˣ�<input name="ruzhuren" type="text" id="ruzhuren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='ruzhuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�����</td>
    <td bgcolor='#CCFFFF'>�ͷ�����</td>
    <td bgcolor='#CCFFFF'>�۸�</td>
    <td bgcolor='#CCFFFF'>��ס����</td>
    <td bgcolor='#CCFFFF'>ס������</td>
    <td bgcolor='#CCFFFF'>�ܽ��</td>
    <td bgcolor='#CCFFFF'>��ס��</td>
    
    <!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
    <td width="60" align="center"><a href="ruzhuxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="ruzhuxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="ruzhuxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�����ܽ��:<%=zongjinez%>�� <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

