<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<html>
<head>
<title>酒店预定系统</title>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>


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
                <td width="78%" class="red STYLE2">在线留言</td>
                <td width="14%" ><a href="lyb.jsp"><font class="red STYLE2">我要留言</font></a></td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td height="766" valign="top" class="boder"><% 
    String url = "lyblist.jsp?1=1"; 
    String sql =  "select * from liuyanban  order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,4,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6EA6C1" class="tb">
              <!--DWLayoutTable-->
              <tr>
                <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=map.get("xingbie") %>.gif border=0> </td>
                <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=map.get("addtime") %> &nbsp;</td>
              </tr>
              <tr>
                <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=map.get("neirong") %></td>
              </tr>
              <tr>
                <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=map.get("cheng") %> &nbsp; &nbsp;电话：<%=map.get("dianhua") %>&nbsp;&nbsp;邮 箱:<%=map.get("youxiang") %> &nbsp; QQ:<%=map.get("QQ") %>&nbsp; &nbsp; </td>
              </tr>
              <tr>
                <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=map.get("huifuneirong") %></td>
              </tr>
            </table>
            <%} %>
${page.info } </td>
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
</body>
</html>