<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>Ԥ����Ϣ</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"yudingxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yudingxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="yudingxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸�Ԥ����Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>����ţ�</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='<%= mmm.get("fangjianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�ͷ����ͣ�</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='<%= mmm.get("kefangleixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ס���ڣ�</td><td><input name='ruzhuriqi' type='text' id='ruzhuriqi' value='<%= mmm.get("ruzhuriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>Ԥ���ˣ�</td><td><input name='yudingren' type='text' id='yudingren' value='<%= mmm.get("yudingren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


