<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>退订记录</title>
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
new CommDAO().update(request,response,"tuidingjilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"tuidingjilu"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="tuidingjilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改退订记录:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>房间号：</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='<%= mmm.get("fangjianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>客房类型：</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='<%= mmm.get("kefangleixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>入住日期：</td><td><input name='ruzhuriqi' type='text' id='ruzhuriqi' value='<%= mmm.get("ruzhuriqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>退订日期：</td><td><input name='tuidingriqi' type='text' id='tuidingriqi' value='<%= mmm.get("tuidingriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>退订人：</td><td><input name='tuidingren' type='text' id='tuidingren' value='<%= mmm.get("tuidingren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>退订原因：</td><td><textarea name='tuidingyuanyin' cols='50' rows='5' id='tuidingyuanyin' style='border:solid 1px #000000; color:#666666'><%=mmm.get("tuidingyuanyin")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


