<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>老师后台管理</title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/layui/css/layui.css">
  <script src="<%=request.getContextPath() %>/static/jquery-easyui-1.3.5/jquery.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">老师后台管理</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">用户管理</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">课程管理</a></dd>
          <dd><a href="">成绩管理</a></dd>
          <dd><a href="">评价管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          ${id }
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="<%=request.getContextPath() %>/logout.do">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:$('#iframe').attr('src','');">用户管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:$('#iframe').attr('src','<%=request.getContextPath() %>/teacher/student_list.do');">学生</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">课程管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">成绩管理</a></li>
        <li class="layui-nav-item"><a href="">评价管理</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <iframe id="iframe" src=""
      frameborder="0" width="100%" scrolling="no" height="100%">
      <p>您的浏览器不支持  iframe 标签。</p>
    </iframe>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    Academic-Teaching-Affair-Management-System
  </div>
</div>
<script src="<%=request.getContextPath() %>/static/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>