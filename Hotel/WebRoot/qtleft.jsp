<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



			

<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
      <TBODY>
        <TR>
          <TD width="189" height="44" background="qtimages/index_r4_c1.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2">系统公告</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD class=introline height=111>
             
                <TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                  <TBODY>
                    <TR>
                      <TD align=left 
                        height=118><marquee border="0" direction="up" height="138" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="131%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><p>
	<% HashMap m1 = new CommDAO().getmaps("leibie","系统公告","dx");out.print(Info.ensubStr(m1.get("content"),185)); %></p></TD></TR></TBODY></TABLE></marquee></TD>
                    </TR>
                  </TBODY>
                </TABLE>          </TD>
        </TR>
        <TR>
          <TD vAlign=top height=11><IMG height=11 
                  src="qtimages/index_r13_c1.jpg" width=189></TD>
        </TR>
        <TR>
          <TD align=middle 
                background=qtimages/index_r16_c1.gif 
                  height=28>您当前IP：127.0.0.1</TD>
        </TR>
        <TR>
          <TD height=3></TD>
        </TR>
        <TR>
          <TD width="189" height="32" background="qtimages/index_r23_c1.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2 STYLE3">用户登陆</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD class="introline">          <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 <form action="jspmjdydxt0534?ac=login&a=a" method="post" name="f11" style="display: inline">
							                           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">

                                  <tr>
                                    <td width="15" height="28">&nbsp;</td>
                                    <td width="243" height="28">用户名:</td>
                                    <td width="396" height="28" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="28">&nbsp;</td>
                                    <td height="28">密码:</td>
                                    <td height="28" colspan="2"><input name="pwd1" type="password" id="pwd1"  style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="28">&nbsp;</td>
                                    <td height="28">权限:</td>
                                    <td height="28" colspan="2"><select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
										<option value="注册用户">注册用户</option>
                                    </select></td>
                                  </tr>
                                  <script type="text/javascript">
          
          
           function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
           </script>     
                                  <tr>
                                    <td height="38" align="center">&nbsp;</td>
                                    <td height="38" colspan="3" align="center"><input type="submit" name="Submit" value="登陆" class="hsgbutton" onclick="return checklog();" />
                                        <input type="reset" name="Submit2" value="重置" class="hsgbutton" /></td>
                                  </tr>
                              
                              </table>
		      </form>
							  <%}else{ %>
					<table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="31%" height="30">用户名</td>
                                  <td width="69%" height="30"><%=request.getSession().getAttribute("username")%> </td>
                                </tr>
                                <tr>
                                  <td height="30">权限</td>
                                  <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                                </tr>
                                <tr>
                                  <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                      <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                  </td>
                                </tr>
                              </table>
							     <%} %>
            </TD>
        </TR>
        
        <TR>
          <TD background=qtimages/index_r40_c1.jpg 
                height=8></TD>
        </TR>
        <TR>
          <TD align=middle 
                background=qtimages/index_r16_c1.gif 
                  height=28><iframe src="http://m.weather.com.cn/m/pn7/weather.htm?id=101210701T " width="176" height="20" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no"></iframe></TD>
        </TR>

		 <TR>
          <TD background=qtimages/index_r40_c1.jpg 
                height=8></TD>
        </TR>
        <TR>
          <TD width="189" height="44" background="qtimages/index_r4_c1.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2">站内搜索</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD class=introline height=111>
             
                <TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" 
                  border=0>
                  <TBODY>
                    <TR>
                      <TD align=left 
                        height=118><form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                            <table width="100%" height="17%" border="0" cellpadding="0" cellspacing="0">
                             
                                <tr>
                                  <td width="19%" height="30">标题</td>
                                  <td width="81%" height="30"><input name="keyword" type="text" id="keyword" size="12" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                                <tr>
                                  <td height="30">类别</td>
                                  <td height="30"><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                       <%
						    for(HashMap m:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=m.get("ss") %>"><%=m.get("ss") %></option>
							<%
							}
						   %>
                                    </select>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="30">&nbsp;</td>
                                  <td height="30"><input type="submit" name="Submit4" value="提交" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                             
                            </table>
                             </form></TD>
                    </TR>
                  </TBODY>
                </TABLE>          </TD>
        </TR>
        <TR>
          <TD vAlign=top height=11><IMG height=11 
                  src="qtimages/index_r13_c1.jpg" width=189></TD>
        </TR>
		<TR>
          <TD width="189" height="32" background="qtimages/index_r41_c1sz.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="32%">&nbsp;</td>
              <td width="68%" class="red STYLE2 STYLE3">友情连接</td>
            </tr>
          </table></TD>
        </TR>
        <TR>
          <TD vAlign=top background=qtimages/index_r41_c1.gif 
               ><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <%
    for(HashMap map:new CommDAO().select("select * from youqinglianjie order by id desc",1,8)){
     %>
                                  <tr>
                                    <td width="12%" height="25" align="center"><span class="STYLE2"><img src="qtimages/1.jpg" /></span></td>
                                    <td width="20%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhanmingcheng") %></a></td>
                                    <td width="68%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhi") %></a></td>
                                  </tr>
								  <%
								  }
								  %>
                            </table></TD>
        </TR>
        <TR>
          <TD align=middle><IMG height=11 
                  src="qtimages/index_r13_c1.jpg" width=189></TD>
        </TR>
      </TBODY>
    </TABLE>
	
