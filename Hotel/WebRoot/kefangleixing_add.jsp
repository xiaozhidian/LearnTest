<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�ͷ�����</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="kefangleixing_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"kefangleixing",ext,true,false,""); 
%>

  <body >
 <form  action="kefangleixing_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӿͷ�����:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�ͷ����ͣ�</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelkefangleixing' /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var kefangleixingobj = document.getElementById("kefangleixing"); if(kefangleixingobj.value==""){document.getElementById("clabelkefangleixing").innerHTML="&nbsp;&nbsp;<font color=red>������ͷ�����</font>";return false;}else{document.getElementById("clabelkefangleixing").innerHTML="  "; } 	var kefangleixingobj = document.getElementById("kefangleixing");  
if(kefangleixingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=kefangleixing&col=kefangleixing&value="+kefangleixingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelkefangleixing").innerHTML="&nbsp;&nbsp;<font color=red>�ͷ������Ѵ���</font>";  
return false;
}else{document.getElementById("clabelkefangleixing").innerHTML="  ";  
}  
} 	


return true;   
}   
popheight=450;
</script>  


