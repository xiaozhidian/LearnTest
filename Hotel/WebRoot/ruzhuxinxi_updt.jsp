<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>入住信息</title>
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
new CommDAO().update(request,response,"ruzhuxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"ruzhuxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="ruzhuxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改入住信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>房间号：</td><td><input name='fangjianhao' type='text' id='fangjianhao' value='<%= mmm.get("fangjianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>客房类型：</td><td><input name='kefangleixing' type='text' id='kefangleixing' value='<%= mmm.get("kefangleixing")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>入住日期：</td><td><input name='ruzhuriqi' type='text' id='ruzhuriqi' value='<%= mmm.get("ruzhuriqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>住宿天数：</td><td><input name='zhusutianshu' type='text' id='zhusutianshu' value='<%= mmm.get("zhusutianshu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>总金额：</td><td><input name='zongjine' type='text' id='zongjine' value='<%= mmm.get("zongjine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>入住人：</td><td><input name='ruzhuren' type='text' id='ruzhuren' value='<%= mmm.get("ruzhuren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


