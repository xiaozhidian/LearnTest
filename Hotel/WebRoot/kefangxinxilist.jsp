<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
<head>
<title>�ͷ���Ϣ</title>
<!--bixanjxiqxi-->
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<!--hxsglxiangdxongjxs-->
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="992" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><%@ include file="qttop.jsp"%></td>
  </tr>
  <tr>
    <td width="163" valign="top" >
 <%@ include file="qtleft.jsp"%></td>
    <td width="813" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td height="44" background="qtimages/index_r4_c8.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="0">

              <tr>
                <td width="8%">&nbsp;</td>
                <td width="92%" class="red STYLE2">�ͷ���Ϣ</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="766" valign="top" class="boder">
		  
		   <form name="form1" id="form1" method="post" action="">
   ����:  ����ţ�<input name="fangjianhao" type="text" id="fangjianhao" style='border:solid 1px #000000; color:#666666' size="12" />  �ͷ����ͣ�<%=Info.getselect("kefangleixing","kefangleixing","kefangleixing"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="�л���ͼ"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kefangxinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�����</td>    <td bgcolor='#CCFFFF'>�ͷ�����</td>    <td bgcolor='#CCFFFF'>�۸�</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>        
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"kefangxinxi"); 
    String url = "kefangxinxilist.jsp?1=1"; 
    String sql =  "select * from kefangxinxi where 1=1";
	if(request.getParameter("fangjianhao")=="" ||request.getParameter("fangjianhao")==null ){}else{sql=sql+" and fangjianhao like '%"+request.getParameter("fangjianhao")+"%'";}if(request.getParameter("kefangleixing")=="" ||request.getParameter("kefangleixing")==null ){}else{sql=sql+" and kefangleixing like '%"+request.getParameter("kefangleixing")+"%'";}
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
    <td><%=map.get("fangjianhao") %></td><td><%=map.get("kefangleixing") %></td><td><%=map.get("jiage") %></td><td width='90'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    
    <td width="30" align="center"> <a href="kefangxinxidetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }						
		  
		  
		  </td>
        </tr>
        <tr>
          <td valign="top" height="9"><img 
                  src="qtimages/index_r19_c8.jpg" width="320" /> </td>
        </tr>
        <tr>
          <td height="3"></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>

		
		<%@ include file="qtdown.jsp"%>	
		<!-- dfexnxxiaxng -->
</body>
</html>

<!--suxilxatxihuxan-->
