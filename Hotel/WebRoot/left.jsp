<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>菜单</title>
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
foldersTree = gFldr('<DIV CLASS=fldrroot><b>系统功能列表</b></DIV>','');

Class1 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>管理员帐号管理</DIV>', ''));
insDoc(Class1, gLnk(1, '<a href=yhzhgl.jsp target=main>管理员帐号管理</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=yonghuzhuce_list.jsp target=main>注册会员管理</a>', '', 'images/editinfo.gif'));
insDoc(Class1, gLnk(1, '<a href=mod.jsp target=main>修改密码</a>', '', 'images/editinfo.gif'));


Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>旅游资讯管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=旅游资讯 target=main>添加旅游资讯</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=旅游资讯 target=main>查询旅游资讯</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客房类型管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=kefangleixing_add.jsp target=main>添加客房类型</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=kefangleixing_list.jsp target=main>查询客房类型</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客房信息管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=kefangxinxi_add.jsp target=main>添加客房信息</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=kefangxinxi_list.jsp target=main>查询客房信息</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客房预定管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=yudingxinxi_list.jsp target=main>客房预定审核</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>客房退订管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=tuidingjilu_list.jsp target=main>客房退订审核</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>入住信息管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=yudingxinxi_list3.jsp target=main>入住信息添加</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=ruzhuxinxi_list.jsp target=main>入住信息查询</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>优惠信息管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=优惠信息 target=main>添加优惠信息</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=优惠信息 target=main>查询优惠信息</a>', '', 'images/editinfo.gif'));

Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>酒店制度管理</DIV>', ''));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_add.jsp?lb=酒店制度 target=main>添加酒店制度</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=xinwentongzhi_list.jsp?lb=酒店制度 target=main>查询酒店制度</a>', '', 'images/editinfo.gif'));



Class2 = insFldr(foldersTree, gFldr('<DIV CLASS=fldrroot>系统管理</DIV>', ''));

insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=系统公告 target=main>系统公告管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=dx.jsp?lb=系统简介 target=main>系统简介管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=liuyanban_list.jsp target=main>留言管理</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=youqinglianjie_add.jsp target=main>添加友情连接</a>', '', 'images/editinfo.gif'));
insDoc(Class2, gLnk(1, '<a href=youqinglianjie_list.jsp target=main>查询友情连接</a>', '', 'images/editinfo.gif'));
//insDoc(foldersTree, gLnk(1, '<a href=mod.jsp target=main>修改密码</a>', '', 'images/pwd.GIF'));
insDoc(foldersTree, gLnk(1, '退出', 'logout.jsp', 'images/exit.gif'));
initializeDocument(0);</SCRIPT>
</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
