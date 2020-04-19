<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>预定信息</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"kefangxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("yudingren",(String)request.getSession().getAttribute("username"),"kefangxinxi");
  String fangjianhao="";
  	String kefangleixing="";
  	String jiage="";
  	
  fangjianhao=(String)mlbdq.get("fangjianhao");
  	kefangleixing=(String)mlbdq.get("kefangleixing");
  	jiage=(String)mlbdq.get("jiage");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="yudingxinxi_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"yudingxinxi",ext,true,false,""); 
%>

  <body >
 <form  action="yudingxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加预定信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">房间号：</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelfangjianhao' /></td></tr><script language="javascript">document.form1.fangjianhao.value='<%=fangjianhao%>';</script>
		<tr><td  width="200">客房类型：</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelkefangleixing' /></td></tr><script language="javascript">document.form1.kefangleixing.value='<%=kefangleixing%>';</script>
		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';</script>
		<tr><td width="200">入住日期：</td><td><input name='ruzhuriqi' type='text' id='ruzhuriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">预定人：</td><td><input name='yudingren' type='text' id='yudingren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var fangjianhaoobj = document.getElementById("fangjianhao"); if(fangjianhaoobj.value==""){document.getElementById("clabelfangjianhao").innerHTML="&nbsp;&nbsp;<font color=red>请输入房间号</font>";return false;}else{document.getElementById("clabelfangjianhao").innerHTML="  "; } 
	var kefangleixingobj = document.getElementById("kefangleixing"); if(kefangleixingobj.value==""){document.getElementById("clabelkefangleixing").innerHTML="&nbsp;&nbsp;<font color=red>请输入客房类型</font>";return false;}else{document.getElementById("clabelkefangleixing").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


