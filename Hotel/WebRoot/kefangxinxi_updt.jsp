<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ͷ���Ϣ</title>
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
new CommDAO().update(request,response,"kefangxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kefangxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="kefangxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ŀͷ���Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>����ţ�</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='<%= mmm.get("fangjianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�ͷ����ͣ�</td><td><%=Info.getselect("kefangleixing","kefangleixing","kefangleixing")%></td></tr><script language="javascript">document.form1.kefangleixing.value='<%=mmm.get("kefangleixing")%>';</script>     <tr><td>�۸�</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>������ʩ��</td><td><textarea name='peitaosheshi' cols='50' rows='5' id='peitaosheshi' style='border:solid 1px #000000; color:#666666'><%=mmm.get("peitaosheshi")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


