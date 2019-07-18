<#assign ctx=req.contextPath />
<!DOCTYPE html>
<#--<html lang="en" class="ie8 no-js">
<html lang="en" class="ie9 no-js">
<html lang="en" class="no-js">-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>太龙智显终端管理</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- 样式 -->
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!--<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>--><!--对样式有些细微的修饰-->
    <link href="${ctx}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <!--<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>--><!--貌似没有影响-->

    <!--js-->
    <script src="${ctx}/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/bootstrap.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="${ctx}/static/js/excanvas.min.js"></script>
    <script src="${ctx}/static/js/respond.min.js"></script>
    <![endif]-->
    <script src="${ctx}/static/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery.uniform.min.js" type="text/javascript" ></script>
    <script src="${ctx}/static/js/app.js"></script>

    <link rel="shortcut icon" href="${ctx}/static/image/favicon.ico" /><!--logo-->

    <!--我自己的样式和js-->
    <script src="${ctx}/static/js/myjs/echarts.js"></script>
    <script src="${ctx}/static/js/myjs/my-echarts.js"></script>
</head>

<body class="page-header-fixed"><!--和page-container一起设置页面内容距离导航栏的高度-->

<div class="header navbar navbar-fixed-top"><!--navbar和navbar-fixed-top一起设置导航栏的级别，navbar-inberse应该没用-->
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="index.ftl">
                <img src="${ctx}/static/image/logo.jpg" alt="logo" title="首页"/>
            </a>

            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                <img src="${ctx}/static/image/menu-toggler.png" alt="目录" title="目录" /><!--页面缩小之后，左侧菜单栏的隐藏图标 -->
            </a>

            <ul class="nav pull-right"><!--导航栏信息显示	向右浮动-->
                <li class="dropdown" id="header_inbox_bar"><!--ID作用尚不明-->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-envelope"></i>
                        <span class="badge">5</span>
                    </a>
                    <ul class="dropdown-menu extended inbox"><!--dropdown-menu默认隐藏	extended下拉框的宽度		inbox分辨率变小之后离左边的距离-->
                        <li>
                            <p>You have 12 new messages</p>
                        </li>
                        <li>
                            <a href="news.html?a=view">
                                <span class="photo"><img src="${ctx}/static/image/avatar2.jpg" alt="" /></span>
                                <span class="subject"><!--去除无影响，设置默认值-->
										<span class="from">Lisa Wong</span>
										<span class="time">Just Now</span>
									</span>
                                <span class="message"><!--去除无影响，设置默认值-->
										Vivamus sed
									</span>
                            </a>
                        </li>
                        <li class="external"><!--小标签向右漂浮-->
                            <a href="news.html">See all messages <i class="m-icon-swapright"></i></a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><!--设设置字体样式-->
                        <img alt="" src="${ctx}/static/image/avatar1_small.jpg" />
                        <span class="username">太龙显示1号</span>
                        <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="account_information.html"><i class="icon-user"></i>我的资料</a></li>
                        <li><a href="news.html"><i class="icon-envelope"></i>收件箱（2）</a></li>
                        <li class="divider"></li>
                        <li><a href="lock.html"><i class="icon-lock"></i>锁屏</a></li>
                        <li><a href="login.html"><i class="icon-key"></i>登出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="page-container row-fluid">
    <div class="page-sidebar nav-collapse collapse"><!--page-sidebar小化菜单栏，固定位置		nav-ollapse左侧菜单栏显示  collapse作用尚不明确-->
        <ul class="page-sidebar-menu"><!--影响菜单栏的整体样式-->
            <li>
                <div class="sidebar-toggler hidden-phone"></div><!--大分辨率下，菜单栏的隐藏按钮-->
            </li>
            <li class="start active ">
                <a href="index.ftl">
                    <i class="icon-home"></i>
                    <span class="title">首页</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-cogs"></i>
                    <span class="title">终端管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="terminal.html">设备</a>
                    </li>
                    <li>
                        <a href="terminal_group.html">设备分组</a>
                    </li>
                    <li>
                        <a href="terminal_map_monitoring.html">地图监控</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-bookmark-empty"></i>
                    <span class="title">播放</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="play_media.html">媒体</a>
                    </li>
                    <li>
                        <a href="play_program.html">节目</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-table"></i>
                    <span class="title">系统管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="system_jurisdiction.html">权限</a>
                    </li>
                    <li>
                        <a href="system_audit.html">审核</a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            日志
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li><a href="system_log_custormer.html">用户日志</a></li>
                            <li><a href="system_log_operate.html">操作日志</a></li>
                            <li><a href="system_log_fault.html">故障日志</a></li>
                            <li><a href="system_log_warn.html">警告日志</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="system_monitoring.html">监控</a>
                    </li>
                    <li>
                        <a href="system_warn.html">报警</a>
                    </li>
                    <li>
                        <a href="system_logo.html">平台logo</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-briefcase"></i>
                    <span class="title">帮助</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="help_operational_process.html">
                            <i class="icon-time"></i>云平台操作流程
                        </a>
                    </li>
                    <li>
                        <a href="help_manual_download.html">
                            <i class="icon-cogs"></i>手册下载
                        </a>
                    </li>
                    <li>
                        <a href="help_about_system.html">
                            <i class="icon-comments"></i>关于系统
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-gift"></i>
                    <span class="title">服务</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="news.html">服务</a>
                    </li><!--你好？这修复液弄起我的脸上全是那种细皮-->
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-sitemap"></i>
                    <span class="title">客户管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="clientele.html">
                            客户
                        </a>
                    </li>
                    <li>
                        <a href="clientele.html">
                            分组
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="icon-folder-open"></i>
                    <span class="title">统计报表</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="statistics_produce.html">
                            <i class="icon-cogs"></i>
                            生产统计
                        </a>
                    </li>
                    <li>
                        <a href="statistics_region.html">
                            <i class="icon-globe"></i>
                            地理统计
                        </a>
                    </li>
                    <li>
                        <a href="statistics_sales.html">
                            <i class="icon-folder-open"></i>
                            销量统计
                        </a>
                    </li>
                    <li>
                        <a href="statistics_clientele.html">
                            <i class="icon-folder-open"></i>
                            客户量统计
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

    <div class="page-content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="color-panel hidden-phone">
                        <div class="color-mode-icons">2019年4月9号 下午19:21:56</div>
                    </div>

                    <h3 class="page-title">
                        太龙智显 <small>终端管理</small>
                    </h3>
                    <ul class="breadcrumb">
                        <li>
                            <i class="icon-home"></i>
                            <a href="index.ftl">首页</a>
                        </li>
                        <li class="pull-right no-text-shadow">
                            <div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="当前时间">
                                2019年4月9号 下午19:21:56
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div id="dashboard">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="portlet ">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-cogs"></i>消息提示</div>
                            </div>
                            <div class="portlet-body">
                                <div class="alert">
                                    <button class="close" data-dismiss="alert"></button>
                                    <strong>预警!</strong> 屏幕显示有问题········
                                </div>
                                <div class="alert alert-info" style="margin-top: -20px;">
                                    <button class="close" data-dismiss="alert"></button>
                                    <strong>消息!</strong> 你有新的任务········
                                </div>
                                <div class="alert alert-error" style="margin-top: -20px;">
                                    <button class="close" data-dismiss="alert"></button>
                                    <strong>警告!</strong> 人流量太大，气温过高······
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="portlet">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-lightbulb"></i>智能照明</div>
                            </div>
                            <div class="portlet box yellow">
                                <div class="portlet-title">
                                    <div class="caption"><i class="icon-cogs"></i>节能对比</div>
                                </div>
                                <div class="portlet-body">
                                    <div class="alert alert-block alert-warning fade in">
                                        <div id="myEchartsSave" style="width: 100%;height: 290px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="portlet">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-rss"></i>公共WiFi</div>
                            </div>
                            <div class="portlet box blue">
                                <div class="portlet-title">
                                    <div class="caption"><i class="icon-cogs"></i>联网对比</div>
                                </div>
                                <div class="portlet-body">
                                    <div class="alert alert-block alert-warning fade in">
                                        <div id="myEchartsWIFI" style="width: 100%;height: 290px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="portlet">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-globe"></i>环境监测</div>
                            </div>
                            <div class="portlet box light-grey">
                                <div class="portlet-title">
                                    <div class="caption"><i class="icon-cogs"></i>环境监控</div>
                                </div>
                                <div class="portlet-body">
                                    <div class="alert alert-block alert-warning fade in">
                                        展示环境监控返回的数据
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="portlet">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-warning-sign"></i>人群预警</div>
                            </div>
                            <div class="portlet box red">
                                <div class="portlet-title">
                                    <div class="caption"><i class="icon-cogs"></i>人群预警</div>
                                </div>
                                <div class="portlet-body">
                                    <div class="alert alert-block alert-warning fade in">
                                        人流量过大预警
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 页脚 -->
<div class="footer">
    <div class="footer-inner">
        2017 &copy; Tecnon Smart Display Technology Shenzhen Co.,Ltd.
    </div>
    <div class="footer-tools">
			<span class="go-top">
				<i class="icon-angle-up"></i>
			</span>
    </div>
</div>

<script>
    jQuery(document).ready(function() {
        App.init(); // initlayout and core plugins 初始化布局和核心插件
    });
</script>
</body>
</html>


<!--
注：此处记录这页面上要注意的东西
	（1）img标签有两个属性分别是alt和title。
	alt：实质作用是当图片无法正确显示的时候起到文本替代作用【在IE6的时候起到作用相当于title】
	title：鼠标滑过的时候显示提示文字。
	为了用户体验，在一些图片上加上此属性，如：<img src="图片路径" alt="logo" title="首页"/>
	（2）data-toggle与data-target的作用。
	Bootstrap为一些元素都绑定上了事件，而终止了连接默认行为。
	data-toggle：指以什么事件触发
	data-target：指事件的目标
	【一起使用代表data-target所指的原色以data-toggle指定的形式显示】
-->