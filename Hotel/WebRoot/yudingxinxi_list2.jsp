<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Ԥ����Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����Ԥ����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ����ţ�<input name="fangjianhao" type="text" id="fangjianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �ͷ����ͣ�<input name="kefangleixing" type="text" id="kefangleixing" style='border:solid 1px #000000; color:#666666' size="12" />  ��ס���ڣ�<input name="ruzhuriqi1" type="text" id="ruzhuriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="ruzhuriqi2" type="text" id="ruzhuriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  Ԥ���ˣ�<input name="yudingren" type="text" id="yudingren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td width="271" bgcolor='#CCFFFF'>�����</td>
    <td width="345" bgcolor='#CCFFFF'>�ͷ�����</td>
    <td width="196" bgcolor='#CCFFFF'>�۸�</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>��ס����</td>
    <td width="135" bgcolor='#CCFFFF'>Ԥ����</td>
    <td bgcolor='#CCFFFF' width='125' align='center'>�Ѿ���ס</td>
    <td width="154" align="center" bgcolor="CCFFFF">Ԥ��ʱ��</td>
    <td width="137" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"yudingxinxi"); 
    String url = "yudingxinxi_list2.jsp?1=1"; 
    String sql =  "select * from yudingxinxi where yudingren='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("fangjianhao")=="" ||request.getParameter("fangjianhao")==null ){}else{sql=sql+" and fangjianhao like '%"+request.getParameter("fangjianhao")+"%'";}
if(request.getParameter("kefangleixing")=="" ||request.getParameter("kefangleixing")==null ){}else{sql=sql+" and kefangleixing like '%"+request.getParameter("kefangleixing")+"%'";}
if (request.getParameter("ruzhuriqi1")==""  ||request.getParameter("ruzhuriqi1")==null ) {}else{sql=sql+" and ruzhuriqi >= '"+request.getParameter("ruzhuriqi1")+"'";}
if (request.getParameter("ruzhuriqi2")==""  ||request.getParameter("ruzhuriqi2")==null ) {}else {sql=sql+" and ruzhuriqi <= '"+request.getParameter("ruzhuriqi2")+"'";}
if(request.getParameter("yudingren")=="" ||request.getParameter("yudingren")==null ){}else{sql=sql+" and yudingren like '%"+request.getParameter("yudingren")+"%'";}
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
    <td><%=map.get("fangjianhao") %></td>
 <td><%=map.get("kefangleixing") %></td>
 <td><%=map.get("jiage") %></td>
 <td><%=map.get("ruzhuriqi") %></td>
 <td><%=map.get("yudingren") %></td>
 
 <td width='125' align='center'><%=map.get("issh")%></td>
    <td width="154" align="center"><%=map.get("addtime") %></td>
    <td width="137" align="center"><a href="tuidingjilu_add.jsp?id=<%=map.get("id")%>">�ͷ��˶�</a> <a href="yudingxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
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

