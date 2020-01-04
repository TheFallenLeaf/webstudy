<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>主页</title>
	<!-- 导入css样式表 -->
	<link rel="stylesheet" href="assets/layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<!-- 页面头部 -->
		<div class="layui-header">
			<!-- logo -->
			<div class="layui-logo">
				多气合采匹配性软件系统
			</div>
			<!-- 头部导航 -->
				<!-- 头部左侧导航，显示菜单栏 -->
			<ul class="layui-nav layui-layout-left" 
			style="margin-left: 30px">
		      <li class="layui-nav-item">
		        <a href="javascript:;">文件</a>
		        <dl class="layui-nav-child">
		          <dd><a href="">新建项目</a></dd>
		          <dd><a href="">打开项目</a></dd>
		          <dd><a href="">关闭项目</a></dd>
		          <dd><a href="">保存</a></dd>
		          <dd><a href="">另存为</a></dd>
		          <dd><a href="">项目设置</a></dd>
		        </dl>
		      </li>
		      <li class="layui-nav-item">
		        <a href="javascript:;">偏好设置</a>
		        <dl class="layui-nav-child">
		          <dd><a href="">单位制</a></dd>
		          <dd><a href=""></a></dd>
		          <dd><a href=""></a></dd>
		          <dd><a href=""></a></dd>
		        </dl>
		      </li>
		      <li class="layui-nav-item">
		        <a href="javascript:;">Help</a>
		        <dl class="layui-nav-child">
		          <dd><a href="">更新</a></dd>
		          <dd><a href="">关于</a></dd>
		          <dd><a href="">使用说明</a></dd>
		          <dd><a href="">联系我们</a></dd>
		        </dl>
		      </li>
			</ul>
				<!-- 头部右侧导航，显示用户登录信息 -->
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
					<!-- 显示用户 -->
					<a href="javascript:;">
						tanyao
					</a>
					<!-- 用户选项 -->
			        <dl class="layui-nav-child">
			          <dd><a href="">基本资料</a></dd>
			          <dd><a href="">其他设置</a></dd>
			        </dl>
				</li>
				<li class="layui-nav-item"><a href="">退出</a></li>
			</ul>
		</div>

		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
		    <div class="layui-side-scroll">
		      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
		        <li class="layui-nav-item layui-nav-itemed">
		          <a class="" href="javascript:;">管网建模</a>
		          <dl class="layui-nav-child">
		          	<dd><a href="javascript:;">绘制管网</a></dd>	
		            <dd><a href="javascript:;">导入流体</a></dd>
		            <dd><a href="javascript:;">导入设备</a></dd>
		            <dd><a href="javascript:;">参数设置</a></dd>
		          </dl>
		        </li>
		        <li class="layui-nav-item">
		          <a href="javascript:;">气波引射器</a>
		          <dl class="layui-nav-child">
		            <dd><a href="javascript:;">添加设备</a></dd>
		            <dd><a href="javascript:;">查看设备</a></dd>
		            <dd><a href="javascript:;">设备设置</a></dd>
		          </dl>
		        </li>
		        <li class="layui-nav-item">
		          <a href="javascript:;">运行模拟</a>
		          <dl class="layui-nav-child">
		            <dd><a href="javascript:;">输入检查</a></dd>
		            <dd><a href="javascript:;">运行</a></dd>
		          </dl>
		        </li>
		        <li class="layui-nav-item">
		          <a href="javascript:;">查看结果</a>
		          <dl class="layui-nav-child">
		          	<dd><a href="javascript:;">输出设置</a></dd>
		            <dd><a href="javascript:;">导出报告</a></dd>
		            <dd><a href="javascript:;">输出图表</a></dd>
		          </dl>
		        </li>
		      </ul>
		    </div>
		  </div>

		 <div class="layui-body">
		    <!-- 内容主体区域 -->
		    <div style="padding: 15px;font-size: 20px;">内容显示区域</div>
		 </div>

		<!-- 底部固定区域 -->
		<div class="layui-footer">
			© CUP CopyRight - 底部固定区域
		</div>
	</div>
	<script src="assets/layui/layui.js"></script>
	<script>
	layui.use('element', function(){
	  var element = layui.element;
	});
	</script>
</body>
</html>