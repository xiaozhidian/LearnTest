<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 



<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
        <TBODY>
        <TR>
          <TD height=45 class=syfleft>
            <TABLE height=45 cellSpacing=0 cellPadding=0 width=100% border=0>
              <TBODY>
              <TR>
                <TD vAlign=middle background="qtimages/ssss.gif"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td >&nbsp;</td>
                    <td  ><a href="index.jsp"><font class="STYLE4">��ҳ</font></a></td>
                    <td  ><a href="news2.jsp?lb=������Ѷ"><font class="STYLE4">������Ѷ</font></a></td>
                    <td  ><a href="userreg.jsp"><font class="STYLE4">�û�ע��</font></a></td>
                    <td  ><a href="dx_detail.jsp?lb=ϵͳ���"><font class="STYLE4">ϵͳ���</font></a></td>
                    <td  ><a href="lyblist.jsp"><font class="STYLE4">��������</font></a></td>
                    <td  ><a href="kefangxinxilist.jsp"><font class="STYLE4">�Ƶ�Ԥ��</font></a></td>
					<td  ><a href="news3.jsp?lb=�Ż���Ϣ"><font class="STYLE4">�Ż���Ϣ</font></a></td>
					<td  ><a href="news.jsp?lb=�Ƶ��ƶ�"><font class="STYLE4">�Ƶ��ƶ�</font></a></td>
                    <td  ><a href="login.jsp"><font class="STYLE4">��̨����</font></a></td>
                  </tr>
                </table></TD>
              </TR></TBODY>
          </TABLE></TD>
        </TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
        <TBODY>
        <TR>
          <TD height=243 background="qtimages/qt.jpg" ><table width="70%" height="51" border="0" align="center">
            <tr>
              <td align="left"><div style="font-family:����; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 40pt; margin-top:5pt">
                  <div align="left" class="STYLE5">�Ƶ�Ԥ��ϵͳ</div>
              </div></td>
            </tr>
          </table></TD>
        </TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=993 align=center border=0>
  <TBODY>
  <TR>
    <TD width=4><IMG height=25 src="qtimages/top_menu_1.gif"></TD>
    <TD class=date style="FONT-SIZE: 12px" width=10 
    background=qtimages/top_menu_bg.gif><IMG height=7 
      src="qtimages/green_dot.gif" width=5> </TD>
    <TD class=date style="FONT-SIZE: 12px" width=676 
    background=qtimages/top_menu_bg.gif>
      <MARQUEE onmouseover=stop() onmouseout=start() scrollAmount=2 
      width=100%>
      ������ף���Ƶ�Ԥ��ϵͳ��ʽ��ͨ,��ӭ���ǰ����˼�ָ��,лл!!(�˴����ֿ���qttop.jsp���޸�)
      </MARQUEE></TD>
    <TD align=right width=255 
      background=qtimages/top_menu_bg.gif><SPAN style="COLOR: #038b0a">
      <SCRIPT language=javascript src="qtimages/date.js"></SCRIPT>
      </SPAN></TD>
    <TD width=5><IMG height=25 src="qtimages/top_menu_2.gif" 
    width=4></TD></TR></TBODY></TABLE>