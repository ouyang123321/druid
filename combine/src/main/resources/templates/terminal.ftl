<#assign ctx=req.contextPath />
<!DOCTYPE html>
<html lang="en" class="ie8">
<html lang="en" class="ie9">
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>太龙智显终端管理</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <!--<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>-->
    <link href="${ctx}/static/css/style-non-responsive.css" rel="stylesheet" type="text/css"/><!--我自己加的，body上面的的样式在这个css里面-->
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/bootstrap-tree.css" /><!--树形结构，应该是我引入进来的-->

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
    <!--<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>-->
    <script src="${ctx}/static/js/app.js"></script>

    <script src="${ctx}/static/js/ui-tree.js"></script><!--我引入的-->
    <script src="${ctx}/static/js/bootstrap-tree.js"></script>

    <!--我自己的东西-->
    <link href="${ctx}/static/css/mystyle.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/account_info.css" rel="stylesheet" type="text/css"/>
    <script charset="utf-8" src="kindeditor/kindeditor-all-min.js"></script><!--富文本编辑器-->
    <script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>

    <!--logo-->
    <link rel="shortcut icon" href="${ctx}/static/image/favicon.ico" />

</head>

<body class="page-header-fixed page-sidebar-closed" style="min-width: 600px;!important;">

    <!-- 导航栏 -->
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="index.ftl">
                    <img src="${ctx}/static/image/logo.jpg" alt="logo" title="首页"/>
                </a>

                <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                    <img src="${ctx}/static/image/menu-toggler.png" alt="目录" title="目录" />
                </a>

                <ul class="nav pull-right">
                    <li class="dropdown" id="header_inbox_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-envelope"></i>
                            <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <li>
                                <p>You have 12 new messages</p>
                            </li>
                            <li>
                                <a href="news.html?a=view">
                                    <span class="photo"><img src="${ctx}/static/image/avatar2.jpg" alt="" /></span>
                                    <span class="subject">
                                            <span class="from">Lisa Wong</span>
                                            <span class="time">Just Now</span>
                                        </span>
                                    <span class="message">
                                            Vivamus sed
                                        </span>
                                </a>
                            </li>
                            <li class="external">
                                <a href="news.html">See all messages <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
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
        <div class="page-sidebar nav-collapse collapse">
            <ul class="page-sidebar-menu">
                <li>
                    <div class="sidebar-toggler hidden-phone"></div>
                </li>
                <li class="start">
                    <a href="index.ftl">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                    </a>
                </li>
                <li class="active">
                    <a href="javascript:;">
                        <i class="icon-cogs"></i>
                        <span class="title">终端管理</span>
                        <span class="arrow open"></span>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="active">
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
                        </li>
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
                        <ul class="breadcrumb">
                            <li>
                                <i class="icon-home"></i>
                                <a href="index.ftl">首页</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">终端</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li><a href="#">设备</a></li>
                        </ul>
                    </div>
                </div>

                <div class="row-fluid "><!--inbox-->
                    <div class="span12">
                        <div>
                            <div class=""><!--inbox-header-->
                                <div class="pull-left">
                                    <div class="btn-group">
                                        <select style="width: auto">
                                            <option value="">分组查询</option>
                                            <option value="深圳">深圳</option>
                                            <option value="广州">广州</option>
                                            <option value="上海">上海</option>
                                            <option value="北京">北京</option>
                                            <option value="南京">南京</option>
                                            <option value="杭州">杭州</option>
                                        </select>
                                        <button class="icon-search" style="width: 50px;height: 30px; border-width:1px;margin-left: 5px;">查询</button>
                                        <button class="icon-trash" style="width: 50px;height: 30px; border-width:1px;margin-left: 5px;">删除</button>
                                        <button class="icon-bell-alt" style="width: 50px;height: 30px; border-width:1px;margin-left: 5px;">删除</button>
                                    </div>
                                </div>
                                <form action="#" class="form-search">
                                    <div class="input-append pull-right">
                                        <input class="m-wrap" type="text" placeholder="Search Terminel">
                                        <button class="btn blue" type="button">Search</button>
                                    </div>
                                </form>
                            </div>
                            <div >
                                <table class="inbox-header table table-advance ">
                                    <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox">&nbsp;&nbsp;序列
                                        </th>
                                        <th>在线</th>
                                        <th>ID</th>
                                        <th>别名</th>
                                        <th>分组</th>
                                        <th>网络类型</th>
                                        <th>宽</th>
                                        <th>高</th>
                                        <th>详情</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td class="inbox-small-cells">
                                            <input type="checkbox" class="mail-checkbox">&nbsp;&nbsp;1
                                        </td>
                                        <td>YES</td>
                                        <td>y32340820481</td>
                                        <td>测试1号</td>
                                        <td>深圳</td>
                                        <td>WiFi</td>
                                        <td>1920</td>
                                        <td>1048</td>
                                        <td><a href="detail.html">>></a></td>
                                    </tr>
                                    <tr>
                                        <td class="inbox-small-cells">
                                            <input type="checkbox" class="mail-checkbox">&nbsp;&nbsp;2
                                        </td>
                                        <td>NO</td>
                                        <td>y32340820402</td>
                                        <td>测试2号</td>
                                        <td>深圳</td>
                                        <td>WiFi</td>
                                        <td>300</td>
                                        <td>240</td>
                                        <td><a href="detail.html">>></a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="mybody" style="margin-top: 80px;width: 100%;height: 100%;">
                            <div class="back">
                                <ul style="list-style: none" class=" mynav-tabs">
                                    <li><a href="#tab_but_01" data-toggle="tab"><button class="btn_selected"><i class="icon-screenshot"></i> 屏幕截图</button></a></li>
                                    <li><a href="#tab_but_02" data-toggle="tab"><button><i class="icon-envelope"></i> 实时消息</button></a></li><!---->
                                    <li><a href="#tab_but_03" data-toggle="tab"><button><i class="icon-tasks"></i> 节目任务</button></a></li><!--heng-->
                                    <li><a href="#tab_but_04" data-toggle="tab"><button><i class="icon-remove"></i> 删除节目</button></a></li>
                                    <li><a href="#tab_but_05" data-toggle="tab"><button><i class="icon-play-circle"></i> 定点投放</button></a></li>
                                    <li><a href="#tab_but_06" data-toggle="tab"><button><i class="icon-play"></i> 视屏直播</button></a></li>
                                    <li><a href="#tab_but_07" data-toggle="tab"><button><i class="icon-power-off"></i> 屏幕开关</button></a></li>
                                    <li><a href="#tab_but_08" data-toggle="tab"><button><i class="icon-lightbulb"></i> 屏幕亮度</button></a></li>
                                    <li><a href="#tab_but_09" data-toggle="tab"><button><i class="icon-volume-off"></i> 音量控制</button></a></li>
                                    <li><a href="#tab_but_10" data-toggle="tab"><button><i class="icon-reorder"></i> 更换分组</button></a></li>
                                    <li><a href="#tab_but_11" data-toggle="tab"><button><i class="icon-cog"></i> 参数配置</button></a></li>
                                    <li><a href="#tab_but_12" data-toggle="tab"><button><i class="icon-info-sign"></i> 硬件状态</button></a></li>
                                    <li><a href="#tab_but_13" data-toggle="tab"><button><i class="icon-warning-sign"></i> 报警开关</button></a></li><!---->
                                    <li><a href="#tab_but_14" data-toggle="tab"><button><i class="icon-upload-alt"></i> 在线更新</button></a></li><!--出现垂直滚轴，但是边框高度有问题，待解决-->
                                    <li><a href="#tab_but_15" data-toggle="tab"><button><i class="icon-refresh"></i> 重启系统</button></a></li>
                                    <li><a href="#tab_but_16" data-toggle="tab"><button><i class="icon-exchange"></i> 终端转让</button></a></li>
                                    <li><a href="#tab_but_17" data-toggle="tab"><button><i class="icon-file-alt"></i> 上传日志</button></a></li>
                                    <li><a href="#tab_but_18" data-toggle="tab"><button><i class="icon-pencil"></i> 加载HTML</button></a></li>
                                    <li><a href="#tab_but_19" data-toggle="tab"><button><i class="icon-facetime-video"></i> 视屏监控</button></a></li>
                                    <li><a href="#tab_but_20" data-toggle="tab"><button><i class=""></i> 视屏处理器</button></a></li><!---->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row-fluid inbox">
                    <div class="span12" style="border: solid 1px lightgray;">
                        <div class="tab-content" style="height: 460px; margin-top: 10px;margin-left: 10px; ">
                            <div class="tab-pane active" id="tab_but_01">
                                <a class="a1"><button class="screenshot"><i class="icon-camera"></i> 屏幕截图</button></a>
                                <a class="a2"><button class="screenshot2"><i class="icon-camera"></i> 摄像头截图</button></a>
                                <a class="a3"><button class="screenshot3"><i class="icon-camera"></i> 安卓全尺寸截图</button></a><br>
                                <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                    <h4>操作结果：</h4>
                                    123123<br>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_02">
                                实时消息
                                <div class="row-fluid">
                                    <div class="span5" style="font-size: 14px;">
                                        <div class="row-fluid">
                                            <div id="editor">
                                                <textarea id="kindeditor" name="body" style="width:100%;height:100%; visibility:hidden;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="span5">
                                        <div class="row-fluid">
                                            <h5 style="line-height: 20px">步进的间隔时间：<input style="height: 20px;">ms</h5>
                                            <h5 style="line-height: 20px">步进距离：<input style="height: 20px;">px</h5>
                                            <h5 style="line-height: 20px">垂直对齐：<input style="height: 20px;"></h5>
                                            <h5 style="line-height: 20px">移动方向：<input style="height: 20px;"></h5>
                                            <h5 style="line-height: 20px">限定：<input style="height: 20px;"></h5>
                                            <input type="submit" value="提交">
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_03"><!--发送节目-->
                                <input type="checkbox"> 定时执行任务&nbsp;&nbsp;<input><br>
                                <input type="checkbox"> 离线发送
                                <table style="width: 100%;" id="tmn_table1">
                                    <tr>
                                        <td><button class="icon-plus" id="tmn_send_btn1"></button></td>
                                        <td>发送</td>
                                        <td>名称</td>
                                        <td>创建时间</td>
                                        <td>创建者</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <button class="icon-edit"></button>
                                            <button class="icon-remove"></button>
                                        </td>
                                        <td><button class="icon-share"></button></td>
                                        <td>Clock01_Task</td>
                                        <td>2019-03-08 15:56:52</td>
                                        <td>tl3</td>
                                    </tr>
                                </table><!-----------------------------------	还没有弄好	--------------------------------------->
                                <div style="margin-left: 20px;display: none;" id="tmn_task">
                                    <div id="tmn_send_pro" class="select_pro_back">
                                        <div class="select_pro_cont">
                                            <div class="pro_cont_body">
                                                <table style="width: 100%;">
                                                    <thead>
                                                    <tr>
                                                        <th>选择</th>
                                                        <th>节目名</th>
                                                        <th>类型</th>
                                                        <th>宽</th>
                                                        <th>高</th>
                                                        <th>大小</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td><button class="icon-ok"></button></td>
                                                        <td>端午</td>
                                                        <td>简易</td>
                                                        <td>208</td>
                                                        <td>364</td>
                                                        <td>11.000MB</td>
                                                    </tr>
                                                    <tr style="border-top: solid 1px lightgrey;">
                                                        <td><button>1</button></td>
                                                        <td colspan="5"></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="pro_cont_footer">
                                                <button class="icon-remove" id="send_pro_close"></button>
                                                <button class="icon-save" id="send_pro_save"></button>
                                            </div>
                                        </div>
                                    </div>
                                    <h3>创建任务</h3>
                                    任务名<input>
                                    <table id="creat_trak" style="width: 100%;">
                                        <tr>
                                            <td><button class="icon-plus" id="tmn_send_btn2"></button></td>
                                            <td>节目名</td>
                                            <td>大小</td>
                                            <td>优先级</td>
                                            <td>重复次数</td>
                                            <td>日期范围</td>
                                            <td>时间范围</td>
                                            <td>指定星期</td>
                                        </tr>

                                        <!--<tr id="task_content" style="display: none;">

                                        </tr>-->
                                        <tr style="margin-top: 200px">
                                            <td>
                                                <button class="icon-remove" id=""></button>
                                                <button class="icon-download-alt"></button>
                                            </td>
                                            <td rowspan="7"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_04">
                                <button>删除任务，并清除节目数据</button>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                            2019/4/19 下午3:24:33<br>
                                            y30-a18-20762 (noname)
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_05">
                                <div class="my-portlet-body">
                                    <div>
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#tab_1_1" data-toggle="tab">发布任务</a></li>
                                            <li><a href="#tab_1_2" data-toggle="tab">开关</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_1_1">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    <input type="checkbox"> 定时执行任务&nbsp;&nbsp;<input><br>
                                                    <input type="checkbox"> 离线发送<br><br>
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>发送</td>
                                                            <td>名称</td>
                                                            <td>创建时间</td>
                                                            <td>创建者</td>
                                                        </tr>
                                                    </table>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
                                                                2019/4/19 下午3:24:33<br>
                                                                y30-a18-20762 (noname)
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="tab_1_2">
                                                <button>开</button>
                                                <button>关</button>
                                                <button class="icon-search">查询</button><br><br>
                                                <div class="row-fluid">
                                                    <div class="span12">
                                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                            <h4>操作结果：</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_06">
                                URL 	<br>
                                <input>		<br>
                                宽度 	<br>
                                <input>		<br>
                                高度 	<br>
                                <input>		<br>
                                <button>Start</button>
                                <button>Stop</button>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_07"><!-- **********************************************************************屏幕开关 -->
                                <div class="my-portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#screen_switch_hand" data-toggle="tab">手动</a></li>
                                        <li><a href="#screen_switch_timing" data-toggle="tab">定时</a></li>
                                        <li><a href="#screen_switch_search" data-toggle="tab">查询</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="screen_switch_hand">
                                            <button>开</button>
                                            <button>关</button>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="screen_switch_timing"><!--定时-->
                                            <table style="width: 100%;" id="sst">
                                                <tr>
                                                    <td><button class="icon-plus" id="sst_btn"></button></td>
                                                    <td>发送</td>
                                                    <td>名称</td>
                                                    <td>创建时间</td>
                                                    <td>创建者</td>
                                                </tr>
                                            </table>
                                            <div style="display: none;" id="sst_task">
                                                <h3>创建任务</h3>
                                                任务名<input>
                                                <table style="width: 100%;" id="sst_tab">
                                                    <tr>
                                                        <td><button class="icon-plus" onclick="addcols();"></button></td>
                                                        <td>日期范围</td>
                                                        <td>时间范围</td>
                                                        <td>指定星期</td>
                                                    </tr>
                                                    <!--<tr id="sst_task_content">
                                                        <td>
                                                            <button class="icon-edit"></button>
                                                            <button class="icon-remove"></button>
                                                        </td>
                                                        <td>永久</td>
                                                        <td>全天</td>
                                                        <td></td>
                                                    </tr>-->
                                                    <!--<tr colspan="4" style="width: 100%;">
                                                        <table style="display: none;width: 100%!important;" id="sst_task_content">
                                                            <tr>
                                                                <td>
                                                                    <button class="icon-edit"></button>
                                                                    <button class="icon-remove"></button>
                                                                </td>
                                                                <td>永久</td>
                                                                <td>全天</td>
                                                                <td></td>
                                                            </tr>
                                                        </table>
                                                    </tr>-->
                                                    <tr>
                                                        <td>
                                                            <button class="icon-trash"></button>
                                                            <button class="icon-arrow-down"></button>
                                                        </td>
                                                        <td rowspan="3"></td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="screen_switch_search">
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_08">
                                <div class="my-portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#screen_brightness_auto" data-toggle="tab">自动亮度</a></li>
                                        <li><a href="#screen_brightness_hand" data-toggle="tab">手动</a></li>
                                        <li><a href="#screen_brightness_timing" data-toggle="tab">定时</a></li>
                                        <li><a href="#screen_brightness_search" data-toggle="tab">查询</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="screen_brightness_auto">
                                            灵敏度：<input value="50">&nbsp;&nbsp;最小亮度:<input value="1">
                                            <button class="icon-cog">设置</button>
                                            <button class="icon-search">查询</button>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="screen_brightness_hand">
                                            <input value="8"> <button>提交</button><br>
                                            提示：1（最暗）~64（最亮），M90：1~256
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="screen_brightness_timing">
                                            <h3>创建任务</h3>
                                            任务名<input>&nbsp;&nbsp;默认亮度<input>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td><button class="icon-plus"></button></td>
                                                    <td>亮度</td>
                                                    <td>时间安排</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button class="icon-trash"></button>
                                                        <button class="icon-arrow-down"></button>
                                                    </td>
                                                    <td rowspan="2"></td>
                                                </tr>
                                            </table>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="screen_brightness_search">
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_09">
                                <div class="my-portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#volume_control_hand" data-toggle="tab">手动</a></li>
                                        <li><a href="#volume_control_timing" data-toggle="tab">定时</a></li>
                                        <li><a href="#volume_control_search" data-toggle="tab">查询</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="volume_control_hand">
                                            <input value="10"> <button>提交</button><br>
                                            提示：范围（0~15）
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="volume_control_timing">
                                            <h3>创建任务</h3>
                                            任务名<input>&nbsp;&nbsp;默认音量<input value="10">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td><button class="icon-plus"></button></td>
                                                    <td>音量</td>
                                                    <td>时间安排</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button class="icon-trash"></button>
                                                        <button class="icon-arrow-down"></button>
                                                    </td>
                                                    <td rowspan="2"></td>
                                                </tr>
                                            </table>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="volume_control_search">
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_10"><!--更换分组-->
                                <div class="row-fluid">
                                    <!--<div class="span6">
                                        <div class="portlet  grey">
                                            <div class=" fuelux">
                                                <ul class="tree" id="tree_1">
                                                    <li>
                                                        <a href="#" data-role="branch" class="tree-toggle" data-toggle="branch" data-value="Bootstrap_Tree">
                                                            全部
                                                        </a>
                                                        <ul class="branch in">
                                                            <li>
                                                                <a href="#" class="tree-toggle" data-toggle="branch" data-value="Bootstrap_Tree" id="nut1">
                                                                    未分组
                                                                </a>
                                                                <ul class="branch in">
                                                                    <li>
                                                                        <a href="#" class="tree-toggle closed" data-toggle="branch" data-value="Bootstrap_Tree" id="nut2">
                                                                            Finance
                                                                        </a>
                                                                        <ul class="branch">
                                                                            <li><a href="#" data-role="leaf"><i class="icon-suitcase"></i> Sale Revenue</a></li>
                                                                            <li><a href="#" data-role="leaf"><i class="icon-signal"></i> Promotions</a></li>
                                                                            <li><a href="#" data-role="leaf"><i class="icon-sitemap"></i> IPO</a></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li><a href="#" data-role="leaf"><i class="icon-signal"></i> ICT</a></li>
                                                                    <li><a href="#" data-role="leaf"><i class="icon-sitemap"></i> Human Resources</a></li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                <a href="#" class="tree-toggle closed" data-toggle="branch" data-value="Bootstrap_Tree" id="nut3">
                                                                    深圳
                                                                </a>
                                                                <ul class="branch">
                                                                    <li><a href="#" data-role="leaf"><i class="icon-glass"></i> Internal</a></li>
                                                                    <li><a href="#" data-role="leaf"><i class="icon-group"></i> Client Base</a></li>
                                                                    <li><a href="#" data-role="leaf"><i class="icon-retweet"></i> Product Base</a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>-->
                                    <ul style="list-style: none;">
                                        <li>湖南</li>
                                        <li>湖北</li>
                                        <li>广西</li>
                                        <li>
                                            广东
                                            <ul style="list-style:none;">
                                                <li>深圳</li>
                                                <li>东莞</li>
                                                <li>广州</li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_11"><!--参数配置-->
                                <div class="my-portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#parameter_set" data-toggle="tab">设置</a></li>
                                        <li><a href="#parameter_search" data-toggle="tab">查询</a></li>
                                        <li><a href="#parameter_lock" data-toggle="tab">锁定</a></li>
                                        <li><a href="#parameter_Synchronization_set" data-toggle="tab">同步设置</a></li>
                                        <li><a href="#parameter_background" data-toggle="tab">播放背景</a></li>
                                        <li><a href="#parameter_advanced" data-toggle="tab">高级</a></li>
                                        <li><a href="#parameter_backups" data-toggle="tab">备份</a></li>
                                        <li><a href="#parameter_recover" data-toggle="tab">恢复</a></li>
                                        <li><a href="#parameter_Emergency_text" data-toggle="tab">紧急文字</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="parameter_set">
                                            终端别名<input>&nbsp;;&nbsp;GPS坐标回报间隔(秒)<input>&nbsp;&nbsp;NTP服务器地址<input>&nbsp;&nbsp;
                                            时区
                                            <select>
                                                <option>--请选择--</option>
                                            </select><br>
                                            <button>提交</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_search">
                                            <button class="icon-search">查询</button>
                                            <button class="icon-search">查询GPS</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_lock">
                                            <button class="">锁定</button>
                                            <button class="">解锁</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_Synchronization_set">
                                            时间：方式1<input type="radio" name="time">&nbsp;&nbsp;
                                            方式2<input type="radio" name="time">&nbsp;&nbsp;
                                            方式3<input type="radio" name="time"><br>
                                            亮度：方式1<input type="radio" name="brightness">&nbsp;&nbsp;
                                            不做同步<input type="radio" name="brightness"><br>
                                            音量：方式1<input type="radio" name="volume">&nbsp;&nbsp;
                                            不做同步<input type="radio" name="volume"><br>
                                            屏幕开关：方式1<input type="radio" name="screen">&nbsp;&nbsp;
                                            不做同步<input type="radio" name="screen"><br>
                                            同步识别码<input><br>
                                            时间偏移量（毫秒）<input><br>
                                            <button class="">设置</button>
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_background">
                                            <button class="icon-plus"></button><br>
                                            URL<br>
                                            <input><br>
                                            <button class="">设置</button>
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_advanced">
                                            <input placeholder="服务器地址">
                                            <input placeholder="公司ID">
                                            <input placeholder="Realtime">
                                            <input placeholder="U盘节目的密码"><br>
                                            <button class="">提交</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_backups">
                                            <button class="">备份</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_recover"><!--这里的文件上传还存在问题，无法样式没调出来-->
                                            <input class="icon-upload" type="file" value="上传zip">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="parameter_Emergency_text">
                                            <textarea></textarea>
                                            <button class="">设置</button>
                                            <button class="icon-search">查询</button><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_12"><!--硬件状态-->
                                <button class="icon-search" onclick="hardwareState()">查询</button><br>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_13"><!--报警开关-->
                                <div class="my-portlet-body">
                                    <div class=""><!--BEGIN TABS  div部分的包围线条-->
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#alarm_switch_set" data-toggle="tab">设置</a></li>
                                            <li><a href="#alarm_switch_search" data-toggle="tab">查询</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="alarm_switch_set">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    请选择以下需要监控的项目：(请先验证邮箱，警报信息将会以邮件方式发给您。“修改个人信息”里可以修改及验证邮箱)
                                                    <table style="width: auto;line-height: 30px;">
                                                        <tr>
                                                            <td>监控项</td>
                                                            <td>已开启</td>
                                                            <td>上限</td>
                                                            <td>下限</td>
                                                        </tr>
                                                        <tr>
                                                            <td>温度</td>
                                                            <td><input type="checkbox"></td>
                                                            <td><input value="0">℃</td>
                                                            <td><input value="60">℃</td>
                                                        </tr>
                                                        <tr>
                                                            <td>湿度</td>
                                                            <td><input type="checkbox"></td>
                                                            <td><input value="0">%</td>
                                                            <td><input value="70">%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>卡电压</td>
                                                            <td><input type="checkbox"></td>
                                                            <td><input value="0">√</td>
                                                            <td><input value="5">√</td>
                                                        </tr>
                                                        <tr>
                                                            <td>外部电压1</td>
                                                            <td><input type="checkbox"></td>
                                                            <td><input value="0">√</td>
                                                            <td><input value="5">√</td>
                                                        </tr>
                                                        <tr>
                                                            <td>外部电压2</td>
                                                            <td><input type="checkbox"></td>
                                                            <td><input value="0">√</td>
                                                            <td><input value="5">√</td>
                                                        </tr>
                                                        <tr>
                                                            <td>门被打开</td>
                                                            <td><input type="checkbox"></td>
                                                            <td rowspan="2"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>有烟雾</td>
                                                            <td><input type="checkbox"></td>
                                                            <td rowspan="2"></td>
                                                        </tr>
                                                    </table><br>
                                                    <button class="">设置</button><br>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="alarm_switch_search">
                                                <button class="icon-search">查询</button><br><br>
                                                <div class="row-fluid">
                                                    <div class="span12">
                                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                            <h4>操作结果：</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_14"><!--在线更新-->
                                <div class="my-portlet-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#updating_online" data-toggle="tab">在线更新</a></li>
                                        <li><a href="#updating_unload" data-toggle="tab">卸载</a></li>
                                    </ul>
                                    <div class="tab-content" style="border: 1px solid green;height: 90%;">
                                        <div class="tab-pane active" id="updating_online">
                                            <div class="scroller"  data-always-visible="1" data-rail-visible="0"><!--滚动轴--><!--jquery slimscroll滚动条插件的用法-->
                                                <a>查看版本日志点击此处</a><br>
                                                您可以选择下列zip在线更新也可以下载后使用Ledset客户端更新<br>
                                                <table style="width: 100%;line-height: 30px;">
                                                    <tr>
                                                        <td>下载</td>
                                                        <td>在线更新</td>
                                                        <td>名称</td>
                                                        <td>大小</td>
                                                        <td>创建时间</td>
                                                    </tr>
                                                    <tr>
                                                        <td><button class="icon-download"></button></td>
                                                        <td><button class=""></button></td>
                                                        <td>SystemCore_v5.1.3_T17专用.zip</td>
                                                        <td>5830KB</td>
                                                        <td>2019-04-12 10:01:21</td>
                                                    </tr>
                                                </table><br>
                                                <div class="row-fluid">
                                                    <div class="span12">
                                                        <div style="width: 100%; height: 100%!important; background-color: #FFF2DA">
                                                            <h4>操作结果：</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="updating_unload">
                                            <button class="icon-search">查询</button><br><br>
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                        <h4>操作结果：</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_15"><!--重启系统-->
                                <button class="icon-search">重启系统</button><br>
                                定时重启<br>
                                定时重启功能从CardSystem-v3.5.3起被支持<br>
                                <input>&nbsp;&nbsp;<button>设置</button>&nbsp;&nbsp;<button>查询</button><br>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_16"><!--终端转让-->
                                <div class="my-portlet-body">
                                    <div class=""><!--BEGIN TABS  div部分的包围线条-->
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#makerOver_allow" data-toggle="tab">允许转让</a></li>
                                            <li><a href="#makerOver__receive" data-toggle="tab">接收转让</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="makerOver_allow">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    使用本功能前，请升级conn-9.7.1。本功能不支持跨服务器转让。
                                                    若需要更换服务器地址，请使用Ledset2.0。使用方式：选择控制卡，点击“允许转让”，并告知被转让公司转让ID。被转让公司登陆账号，在“接收转让”界面输入转让ID。<br>
                                                    <button>允许转让</button>
                                                    <button>取消转让</button>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="makerOver__receive">
                                                <input placeholder="转让ID"><button>接收转让</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_17"><!--上传日志-->
                                <div class="my-portlet-body">
                                    <div class=""><!--BEGIN TABS  div部分的包围线条-->
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#log_set" data-toggle="tab">设置</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="log_set">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    本功能依赖于XixunPlayer-v7.7.80以上版本，可以让终端定时上传播放日志到服务器，并且当开启“服务”里的“定期发送播放日志邮件”功能后，服务器将会周期性地向指定用户发送播放日志邮件。
                                                    注：服务器只会保存2个月内的播放记录。<br>
                                                    上传间隔（分钟）<input value="60">
                                                    <button>提交</button>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_18"><!--记载HTML-->
                                <input><button>二次开发</button><br>
                                本功能从 conn-9.5.4 起支持，用于在其他的显示内容之上覆盖一层HTML内容<br>
                                <input><button>加载HTML</button><br>
                                <div class="row-fluid">
                                    <div class="span12">
                                        <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                            <h4>操作结果：</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_but_19"><!--视频监控-->
                                <button>视频监控</button>
                            </div>
                            <div class="tab-pane" id="tab_but_20"><!--视频处理器-->
                                <div class="my-portlet-body">
                                    <div class=""><!--BEGIN TABS  div部分的包围线条-->
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#videoProcessor_hand" data-toggle="tab">手动</a></li>
                                            <li><a href="#videoProcessor_timing" data-toggle="tab">定时</a></li>
                                            <li><a href="#videoProcessor_search" data-toggle="tab">查询</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="videoProcessor_hand">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    视频处理模式<input value="1"><button>提交</button><br>
                                                    提示&nbsp;&nbsp;模式取值范围:1 到 5。 从 CardSystem-4.7.16 以上版本支持
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="videoProcessor_timing">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    <h3>创建任务</h3>
                                                    任务名<input>&nbsp;&nbsp;默认的视屏处理模式<input value="1">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td><button class="icon-plus"></button></td>
                                                            <td>视频处理模式</td>
                                                            <td>时间安排</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <button class="icon-trash"></button>
                                                            </td>
                                                            <td><input value="2"></td>
                                                            <td>
                                                                <table style="width: 100%;">
                                                                    <tr>
                                                                        <td><button class="icon-plus"></button></td>
                                                                        <td>日期范围</td>
                                                                        <td>时间范围</td>
                                                                        <td>指定星期</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <button class="icon-trash"></button>
                                                                            <button class="icon-arrow-down"></button>
                                                                        </td>
                                                                        <td>永久</td>
                                                                        <td>全天</td>
                                                                        <td>星期一</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr style="margin-top: 200px">
                                                            <td>
                                                                <button class="icon-remove"></button>
                                                                <button class="icon-download-alt"></button>
                                                            </td>
                                                            <td rowspan="2"></td>
                                                        </tr>
                                                    </table>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="videoProcessor_search">
                                                <div class="scroller" data-always-visible="1" data-rail-visible="0">
                                                    <button>查询</button><br>
                                                    <div class="row-fluid">
                                                        <div class="span12">
                                                            <div style="width: 100%; height: 100%; background-color: #FFF2DA">
                                                                <h4>操作结果：</h4>
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
            App.init();
            UITree.init();
            var editor;
            KindEditor.ready(function(K) {
                editor = K.create('#kindeditor');
            });
        });
        $(function () {
            /*var btn1=document.getElementById("term_btn1");
            btn1.setPressed(true);*/
            $("ul li button").click(function () {
                $("ul li button").each(function () {
                    $(this).removeClass("btn_selected");
                });
                $(this).addClass("btn_selected");
            });
            $("#tmn_send_btn1").click(function () {/*	发送节目		*/
                document.getElementById("tmn_table1").style.display="none";
                document.getElementById("tmn_task").style.display="block";
            });
            $("#tmn_send_btn2").click(function () {
                /*document.getElementById("task_content").style.display="inline-block";*/
                document.getElementById("tmn_send_pro").style.display="block";
            });
            $("#send_pro_close").click(function () {
                document.getElementById("tmn_send_pro").style.display="none";
            });
            $("#send_pro_save").click(function () {
                var tab=document.getElementById("creat_trak");
                var rowLenth=tab.rows.length;
                var row=tab.insertRow(rowLenth-1);
                /*var cellLength=rowLenth.cells.length;*/
                /*for(var i = 0;i <= cellLength;i++){
                    var cell
                }*/
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                var cell4=row.insertCell(3);
                var cell5=row.insertCell(4);
                var cell6=row.insertCell(5);
                var cell7=row.insertCell(6);
                var cell8=row.insertCell(7);

                cell1.innerHTML="<button class=\"icon-trash\"></button><button class=\"icon-arrow-down\"></button>";
                cell2.innerHTML = "208x364tl";
                cell3.innerHTML = "11.212MB";
                cell4.innerHTML = "1";
                cell5.innerHTML = "<input value=\"1\">";
                cell6.innerHTML = "<input value=\"全天\">";
                cell7.innerHTML = "<input value=\"永久\">";
                cell8.innerHTML = "";

                document.getElementById("tmn_send_pro").style.display="none";

                /*document.getElementById("task_content").style.display="block";*/	//原本是点击之后显示一列的但是样式有问题，所以点击之后想办法让它增加一列
                /*
                <td>
                    <button class="icon-trash"></button>
                    <button class="icon-arrow-down"></button>
                </td>
                <td>208x364tl</td>
                <td>11.212MB</td>
                <td>1</td>
                <td><input value="1"></td>
                <td>全天</td>
                <td>永久</td>
                <td></td>
                */
            });
            /*$("#sst_task_btn").click(function () {
                document.getElementById("sst_task_cont").style.display="inline-block";
            });*/

            /*	屏幕开关		*/
            $("#sst_btn").click(function () {
                document.getElementById("sst").style.display="none";
                document.getElementById("sst_task").style.display="block";
            });
        });
        function addcols(){
            var tab=document.getElementById("sst_tab");
            var rows=tab.rows.length;
            /*var cells=tab.rows.item(0).cells.length;
            alert("表格现有行数："+rows+",没行列数："+cells);*/
            var row=tab.insertRow(rows-1);
            var cell1=row.insertCell(0);
            var cell2=row.insertCell(1);
            var cell3=row.insertCell(2);
            var cell4=row.insertCell(3);


            cell1.innerHTML = "<button class=\"icon-edit\"></button>&nbsp;<button class=\"icon-remove\" onclick=\"javascript:if(confirm('您确定要删除吗！')){;$(this).hide();}\"></button>";
            cell2.innerHTML = "永久";
            cell3.innerHTML = "全天";
            cell4.innerHTML = "";
        }
    </script>
    <script type="text/javascript">
        function hardwareState() {
            alert("家居安静安静");
        }
    </script>
</body>
</html>
