<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/layui/css/layui.css"  media="all">
  <script src="<%=request.getContextPath() %>/static/jquery-easyui-1.3.5/jquery.min.js"></script>
</head>
<body style="margin: 15px;">  
 
<div class="demoTable">
  <span>分数列表：</span>
  <div class="layui-inline">
    <label>分数</label>
    <div class="layui-input-inline">
      <input type="text" id="s_score" class="layui-input">
    </div>
  </div>
  <div class="layui-inline">
    <label>学期</label>
    <div class="layui-input-inline">
      <input type="text" id="s_term" class="layui-input">
    </div>
  </div>
  <button class="layui-btn" data-type="searchScore">搜索列表</button>
  <button class="layui-btn" data-type="refreshScore">还原默认</button>
</div>
 
<table class="layui-table" lay-data="{height:471, limit: 10, url:'<%=request.getContextPath() %>/student/select_score_list.do', where: {studentId: '${id }'}, page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{field:'studentId', width:100, sort: true}">学生id</th>
      <th lay-data="{field:'studentName', width:100, sort: true}">学生姓名</th>
      <th lay-data="{field:'courseId', width:100, sort: true}">课程id</th>
      <th lay-data="{field:'courseName', width:100, sort: true}">课程名字</th>
      <th lay-data="{field:'term', width:100, sort: true}">学期</th>
      <th lay-data="{field:'score', width:250, sort: true}">分数</th>
      <th lay-data="{fixed: 'right', width:160, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>

<script src="<%=request.getContextPath() %>/static/layui/layui.js" charset="utf-8"></script>

<script>

layui.use('table', function(){
  var table = layui.table;

  var $ = layui.$, active = {
    refreshScore: function(){
        table.reload('idTest', {
          url: '<%=request.getContextPath() %>/student/select_score_list.do'
          ,where: {studentId: '${id }'} //设定异步数据接口的额外参数
        });
      },
      searchScore: function(){
        table.reload('idTest', {
          url: '<%=request.getContextPath() %>/student/select_score_list.do'
          ,where: {
              studentId: '${id }',
              courseId: $("#s_courseId").val(),
              score: $("#s_score").val(),
                term:$("#s_term").val()
          } //设定异步数据接口的额外参数
        });
      }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});

</script>

</body>
</html>