<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�˵�</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE2 {color: #43860c; font-size: 12px; }

a:link {font-size:12px; text-decoration:none; color:#43860c;}
a:visited {font-size:12px; text-decoration:none; color:#43860c;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
-->
</style>

</head>

<body>
<table width="177" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed">
      <tr>
        <td height="26" background="images/main_21.gif">&nbsp;</td>
      </tr>
      
      <tr>
        <td  style="line-height:4px; background:url(images/main_38.gif)">&nbsp;</td>
      </tr>
      <tr>
        <td><SCRIPT LANGUAGE="JavaScript" SRC="js/treemenu.js"></SCRIPT>



<SCRIPT LANGUAGE='JavaScript'>
foldersTree = gFldr('<DIV CLASS=fldrroot><b>ϵͳ�����б�</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>����Ա�ʺŹ���</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=yhzhgl.jsp target=main>����Ա�ʺŹ���</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=yonghuzhuce_list.jsp target=main>ע���Ա����</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=mod.jsp target=main>�޸�����</a>', '', 'images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>������Ѷ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=������Ѷ target=main>���������Ѷ</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=������Ѷ target=main>��ѯ������Ѷ</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�ͷ����͹���</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=kefangleixing_add.jsp target=main>��ӿͷ�����</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=kefangleixing_list.jsp target=main>��ѯ�ͷ�����</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�ͷ���Ϣ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=kefangxinxi_add.jsp target=main>��ӿͷ���Ϣ</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=kefangxinxi_list.jsp target=main>��ѯ�ͷ���Ϣ</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�ͷ�Ԥ������</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=yudingxinxi_list.jsp target=main>�ͷ�Ԥ�����</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�ͷ��˶�����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=tuidingjilu_list.jsp target=main>�ͷ��˶����</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>��ס��Ϣ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=yudingxinxi_list3.jsp target=main>��ס��Ϣ���</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=ruzhuxinxi_list.jsp target=main>��ס��Ϣ��ѯ</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�Ż���Ϣ����</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=�Ż���Ϣ target=main>����Ż���Ϣ</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=�Ż���Ϣ target=main>��ѯ�Ż���Ϣ</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>�Ƶ��ƶȹ���</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=�Ƶ��ƶ� target=main>��ӾƵ��ƶ�</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=�Ƶ��ƶ� target=main>��ѯ�Ƶ��ƶ�</a>', '', 'images/editinfo.gif'));



Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>ϵͳ����</DIV>', ''));

insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=ϵͳ���� target=main>ϵͳ�������</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=ϵͳ��� target=main>ϵͳ������</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=liuyanban_list.jsp target=main>���Թ���</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=youqinglianjie_add.jsp target=main>�����������</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=youqinglianjie_list.jsp target=main>��ѯ��������</a>', '', 'images/editinfo.gif'));
//insDoc(foldersTree, gLnk(1, '<a href=mod.jsp target=main>�޸�����</a>', '', 'images/pwd.GIF'));
insDoc(foldersTree, gLnk(1, '�˳�', 'logout.jsp', 'images/exit.gif'));
initializeDocument(0);</SCRIPT>
</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
