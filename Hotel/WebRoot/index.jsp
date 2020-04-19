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
    <td colspan="2">  <%@ include file="qttop.jsp"%>
		
	</td>
  </tr>
  <tr>
    <td width="163" valign="top" >

 <%@ include file="qtleft.jsp"%>
</td>
    <td width="813" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td height="44" background="qtimages/index_r4_c8.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="8%">&nbsp;</td>
              <td width="92%" class="red STYLE2">系统简介</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td class="boder" height="180"><table width="98%" 
                  border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td width="487" height="200" valign="top" >
             
        <table width="97%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#67B41A" class="newsline" style="border-collapse:collapse">
          <tr>
            <td height="104"><% HashMap m11 = new CommDAO().getmaps("leibie","系统简介","dx");out.print(Info.ensubStr(m11.get("content"),285)); %></td>
          </tr>
        </table>
        </td>
      <td width="13">&nbsp;</td>
      <td width="249" align="center" valign="middle">
	 <%=new CommDAO().DynamicImage("",6,254,184) %>
	  </td>
    </tr>
  </tbody>
</table>
</td>
        </tr>
        <tr>
          <td valign="top" height="9"><img 
                  src="qtimages/index_r19_c8.jpg" width="320" /> </td>
        </tr>
        <tr>
          <td height="3"></td>
        </tr>
        <tr>
          <td background="qtimages/index_r52_c8.jpg" 
                  height="53"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="8%">&nbsp;</td>
              <td width="92%" ><a href="news.jsp?lb=旅游资讯"><font class="STYLE2">旅游资讯</font></a></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="130" valign="top" class="boder"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                         <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='旅游资讯' order by id desc ",1,7)){
	
     %>
						<tr height="25">
              <td width="15" align="center" class="newslist"><img src="qtimages/1.jpg" width="7" height="7"  /></td>
              <td  class="newslist"><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),36)%></a></td>
              <td width="100" class="newslist"><%=map.get("addtime").toString().substring(0,10) %></td>
            </tr>
			 <%
							}
							%>
                        
                      </table></td>
        </tr>
        <tr>
          <td><img height="9" src="qtimages/index_r19_c8.jpg" 
                  width="320" /></td>
        </tr>
        <tr>
          <td height="3"></td>
        </tr>
        <tr>
          <td><table cellspacing="0" cellpadding="0" width="100%" border="0">
              <tbody>
                <tr>
                  <td width="387" valign="top"><table cellspacing="0" cellpadding="0" width="387" border="0">
                      <tbody>
                        <tr>
                          <td width="387" height="40" background="qtimages/index_r22_c8.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="15%">&nbsp;</td>
                              <td width="85%" class="red STYLE2"><a href="news.jsp?lb=优惠信息"><font class="STYLE2">优惠信息</font></a></td>
                            </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td class="boder" valign="top" height="131"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                                                      
													  <%
                                for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='优惠信息' order by id desc",1,6)){
								%>
													    <tr height="25">
                              <td width="7%" align="center" class="newslist"><img src="qtimages/1.jpg" width="7" height="7"  /></td>
                              <td width="93%" class="newslist"><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),28)%></a></td>
                              </tr>
                                                        <%
							}
							%>
                                                      </table></td>
                        </tr>
                        <tr>
                          <td background="qtimages/index_r29_c8.jpg" 
                            height="10"></td>
                        </tr>
                      </tbody>
                  </table></td>
                  <td width="5"></td>
                  <td width="400" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="387" height="40" background="qtimages/index_r22_c14.jpg"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="16%">&nbsp;</td>
                            <td width="84%" class="red STYLE2"><a href="news.jsp?lb=酒店制度"><font class="STYLE2">酒店制度</font></a></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td class="boder" valign="top" height="131"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="newsline">
                          <%
                                for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='酒店制度' order by id desc",1,6)){
								%>
                          <tr height="25">
                            <td width="7%" align="center" class="newslist"><img src="qtimages/1.jpg" width="7" height="7"  /></td>
                            <td width="93%" class="newslist"><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),28)%></a></td>
                          </tr>
                          <%
							}
							%>
                        </table></td>
                      </tr>
                      <tr>
                        <td background="qtimages/index_r29_c8.jpg" 
                            height="10"></td>
                      </tr>
					  
                    </tbody>
                  </table></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
		 
        <tr>
          <td background="qtimages/index_r52_c8.jpg" 
                  height="53"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="8%">&nbsp;</td>
              <td width="92%" class="red STYLE2">客房推荐</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="130" valign="top" class="boder">
		  
		  <div style="margin:0px;">
                  <div id="demo"  style="float:left; overflow:hidden">
                    <div id="indemo">
                      <div id="demo1">
                        <div id="dbgdtp">
				<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                      <%
        for(HashMap m:new CommDAO().select("select * from kefangxinxi order by id desc",1,8)){
         %>
	    <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" id="product">
	        <tr align="center">
	          <td>
              <div  style=" margin-left:13px; width:150px; height:120px; border:1px #CCC solid; padding:2px; background:#FFF">
              <a href="kefangxinxidetail.jsp?id=<%=m.get("id") %>" target=""><img src="<%=m.get("zhaopian") %>" border="0" title="<%=m.get("fangjianhao") %>"  height="120" width="150"/></a></div></td>
	        </tr>
	        <tr align="center">
	          <td ><a href="" 
	          			target="">
	          		<%=m.get("fangjianhao") %>
	          	</a></td>
	        </tr>
	       
       
	      </table></td>
          <%} %>
                  </tr>
                </table>
				
				 </div>
                      </div>
                      <div id="demo2"></div>
                    </div>
                  </div>
                  
                  
                  
                  
	       <script language="javascript"> 
			var speed=20;
			var tab=document.getElementById("demo"); 
			var tab1=document.getElementById("demo1"); 
			var tab2=document.getElementById("demo2"); 
			tab2.innerHTML=tab1.innerHTML; 
			function Marquee(){ 
			if(tab2.offsetWidth-tab.scrollLeft<=0) 
			tab.scrollLeft-=tab1.offsetWidth 
			else{ 
			tab.scrollLeft++; 
			} 
			} 
			var MyMar=setInterval(Marquee,speed); 
			tab.onmouseover=function() {clearInterval(MyMar)}; 
			tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)}; 
			</script>
       
                  <style type="text/css">
<!--
#dbgdtp {float:left;  margin:0px; }
#demo {overflow:hidden; width: 780px; }
#demo1 {float: left; }
#demo2 {float: left; }
#indemo {float: left; width: 1500%; }
-->
</style>

		  </td>
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