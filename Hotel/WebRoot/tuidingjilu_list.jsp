<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�˶���¼</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>�����˶���¼�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ţ�<input name="fangjianhao" type="text" id="fangjianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �ͷ����ͣ�<input name="kefangleixing" type="text" id="kefangleixing" style='border:solid 1px #000000; color:#666666' size="12" />  �˶����ڣ�<input name="tuidingriqi1" type="text" id="tuidingriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="tuidingriqi2" type="text" id="tuidingriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  �˶��ˣ�<input name="tuidingren" type="text" id="tuidingren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='tuidingjilu_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�����</td>    <td bgcolor='#CCFFFF'>�ͷ�����</td>    <td bgcolor='#CCFFFF'>�۸�</td>    <td bgcolor='#CCFFFF'>��ס����</td>    <td bgcolor='#CCFFFF' width='65' align='center'>�˶�����</td>    <td bgcolor='#CCFFFF'>�˶���</td>        <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"tuidingjilu"); 
    String url = "tuidingjilu_list.jsp?1=1"; 
    String sql =  "select * from tuidingjilu where 1=1";
	if(request.getParameter("fangjianhao")=="" ||request.getParameter("fangjianhao")==null ){}else{sql=sql+" and fangjianhao like '%"+request.getParameter("fangjianhao")+"%'";}if(request.getParameter("kefangleixing")=="" ||request.getParameter("kefangleixing")==null ){}else{sql=sql+" and kefangleixing like '%"+request.getParameter("kefangleixing")+"%'";}if (request.getParameter("tuidingriqi1")==""  ||request.getParameter("tuidingriqi1")==null ) {}else{sql=sql+" and tuidingriqi >= '"+request.getParameter("tuidingriqi1")+"'";}if (request.getParameter("tuidingriqi2")==""  ||request.getParameter("tuidingriqi2")==null ) {}else {sql=sql+" and tuidingriqi <= '"+request.getParameter("tuidingriqi2")+"'";}if(request.getParameter("tuidingren")=="" ||request.getParameter("tuidingren")==null ){}else{sql=sql+" and tuidingren like '%"+request.getParameter("tuidingren")+"%'";}
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
    <td><%=map.get("fangjianhao") %></td>    <td><%=map.get("kefangleixing") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("ruzhuriqi") %></td>    <td><%=map.get("tuidingriqi") %></td>    <td><%=map.get("tuidingren") %></td>        <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=tuidingjilu" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="tuidingjilu_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="tuidingjilu_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="tuidingjilu_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
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

