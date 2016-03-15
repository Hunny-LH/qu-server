<%@ page language="java"  isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.duanqu.common.DuanquConfig" %>

<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>趣拍1.0后台管理中心</title>
<link href="css/admin20130619.css" rel="stylesheet" type="text/css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script src="js/jquery.artDialog.js?skin=blue"></script>
<script type="text/javascript" src="js/common.js"></script>
</head>
<body>
<script type="text/javascript">	
var ts="${message}";
<c:if test="${message!=null}">
art.dialog(ts,function(){}).time(0.5);
</c:if>



function deleteTs(uid){
	if(confirm("你确定取消该推荐好友吗?")){
		form1.action="user.do?method=deleteHotUser&uid="+uid;
		form1.submit();
	}
}



function query(index){
	if(index!=undefined){
		var patrn=/^[1-9][0-9]*$/;
		if(!patrn.exec(index)){
			form1.page.value=1;
		}else{
			form1.page.value=index;
		}
	}
	form1.action="user.do?method=tsList";
	form1.submit();	
}

</script>


<div id="Main">
  <div id="Top"> <span>${userSession.fullname}，你好！<a href="#">退出登录</a>
    <p><b class="s1">皮肤1</b><b class="s2">皮肤1</b><b class="s3">皮肤1</b><b class="s4">皮肤1</b></p>
    </span>
    <h2>趣拍1.0后台管理中心</h2>
  </div>
  <div id="Content">
     <%@ include file="left.jsp"%>
    <div id="Right" class="clearfix">
      <div class="position">当前位置： 用户管理 > 用户列表</div>
      <div class="content">
        <div class="tab"> <a href="user.do?method=list" >用户列表</a> <a href="user.do?method=tsList"  >推荐用户列表</a> <a href="user.do?method=tsHotList" class="on">推荐热门列表</a><a href="user.do?method=pushMessageHistory">推送历史记录</a> </div>
        
           <form  method="post" name="form1">
           
          <div class="table-list">
            <div class="pd8"></div>
            <table width="100%" cellspacing="0" style="table-layout:word-wrap:break-word;word-break:break-all">
              <thead>
                <tr>
                  <th width="50">&nbsp;</th>
                  <th width="98"><div class="w80">头像</div></th>
                  <th width="98"><div class="w80">昵称</div></th>
                  <th width="178"><div class="w160">排序位置</div></th>
                  <th width="98" align="center"><div class="w160"><a href="#">推荐时间▲</a></div></th>
                  <th width="366" align="center"><div class="w120">操作</div></th>
                </tr>
              </thead>
              <tbody>
              
              <c:forEach items="${vo.objList}" var="item">
                <tr>
                  <td align="center"><input type="checkbox" value="<c:out value="${item.uid}"/>" id="newslist-<c:out value="${item.uid}"/>" name="uidList"></td>
                  <td ><span class="imgpreview"><img src="<%= DuanquConfig.getAliyunAvatarDomain()%>${item.avatarUrl}" width="35" class="preview" bimg="<%= DuanquConfig.getAliyunAvatarDomain()%>${item.avatarUrl}"></span></td>
                  <td  align="center"><a href="#" charset="hz-4006606-1000631" target="_blank">${item.nickName}</a></td>
                  <td align="center"><span class="time">${item.orderNum}</span></td>
                  <td align="center"><span class="time">${fn:substring(item.createTime,0,19)} </span></td>
                  <td align="center"><a href="###" onclick="deleteTs(${item.uid})" >取消推荐</a></td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
            <div class="pd8 clearfix">
                <%@ include file="page.jsp"%>       
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
