<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setTips.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script type="text/javascript">
      function refresh(){
      	//setTimeout(function(){window.top.location.reload();},2000);
      	//window.top.location.reload();
      }
   </script>
  </head>
  
  <body>
  
  <s:form action="tips/setTipsAction">
  	<s:hidden name="tips.tuserid" value="%{#parameters.userid}"></s:hidden>
  	<s:radio list="#{0:'不显示',1:'设定时间显示'}" value="%{#parameters.isshow}" label="是否显示小贴士" name="tips.tisshow"></s:radio>
  	<s:textfield name="tips.showtime" value="%{#parameters.showtime}"  label="设定显示时间（秒）"/>
  	<s:radio list="#{0:'不提醒',1:'提醒'}" label="是否显示提醒邮件" value="%{#parameters.showemail}"  name="tips.tshowemail"/>
  	<s:radio list="#{0:'不提醒',1:'提醒'}" label="是否显示提醒公告" value="%{#parameters.showpost}"  name="tips.tshowpost"/>
  	<s:submit value="提交" onclick="refresh();"/>
  	<s:reset value="重置"/>
  </s:form>
    
  </body>
</html>
