<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��ס��Ϣ</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"yudingxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("ruzhuren",(String)request.getSession().getAttribute("username"),"yudingxinxi");
  String fangjianhao="";
  	String kefangleixing="";
  	String jiage="";
  	String ruzhuriqi="";
	String yudingren="";
  	
  fangjianhao=(String)mlbdq.get("fangjianhao");
  	kefangleixing=(String)mlbdq.get("kefangleixing");
  	jiage=(String)mlbdq.get("jiage");
  	ruzhuriqi=(String)mlbdq.get("ruzhuriqi");
	yudingren=(String)mlbdq.get("yudingren");

   %>
<script language="javascript">

function gow()
{
	document.location.href="ruzhuxinxi_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
double zongjinej=0;zongjinej=Float.valueOf(request.getParameter("jiage")).floatValue()*Float.valueOf(request.getParameter("zhusutianshu")).floatValue();


ext.put("zongjine",zongjinej);
String sql="update yudingxinxi set issh='��' where fangjianhao='"+request.getParameter("fangjianhao")+"' and yudingren='"+request.getParameter("ruzhuren")+"' and ruzhuriqi='"+request.getParameter("ruzhuriqi")+"'";
	new CommDAO().commOper(sql); 

}

new CommDAO().insert(request,response,"ruzhuxinxi",ext,true,false,""); 
%>

  <body >
 <form  action="ruzhuxinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  �����ס��Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">����ţ�</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelfangjianhao' /></td></tr><script language="javascript">document.form1.fangjianhao.value='<%=fangjianhao%>';</script>
		<tr><td  width="200">�ͷ����ͣ�</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelkefangleixing' /></td></tr><script language="javascript">document.form1.kefangleixing.value='<%=kefangleixing%>';</script>
		<tr><td  width="200">�۸�</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';</script>
		<tr><td  width="200">��ס���ڣ�</td><td><input name='ruzhuriqi' type='text' id='ruzhuriqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.ruzhuriqi.value='<%=ruzhuriqi%>';</script>
		<tr><td  width="200">ס��������</td><td><input name='zhusutianshu' type='text' id='zhusutianshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelzhusutianshu' />����������</td></tr>
		<tr><td  width="200">�ܽ�</td><td> �������д��ϵͳ�Զ�����</td></tr>
		<tr><td  width="200">��ס�ˣ�</td><td><input name='ruzhuren' type='text' id='ruzhuren' onblur='' style='border:solid 1px #000000; color:#666666' value='' readonly="readonly" /></td></tr><script language="javascript">document.form1.ruzhuren.value='<%=yudingren%>';</script>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var fangjianhaoobj = document.getElementById("fangjianhao"); if(fangjianhaoobj.value==""){document.getElementById("clabelfangjianhao").innerHTML="&nbsp;&nbsp;<font color=red>�����뷿���</font>";return false;}else{document.getElementById("clabelfangjianhao").innerHTML="  "; } 
	var kefangleixingobj = document.getElementById("kefangleixing"); if(kefangleixingobj.value==""){document.getElementById("clabelkefangleixing").innerHTML="&nbsp;&nbsp;<font color=red>������ͷ�����</font>";return false;}else{document.getElementById("clabelkefangleixing").innerHTML="  "; } 
	var zhusutianshuobj = document.getElementById("zhusutianshu"); if(zhusutianshuobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(zhusutianshuobj.value)){document.getElementById("clabelzhusutianshu").innerHTML=""; }else{document.getElementById("clabelzhusutianshu").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


