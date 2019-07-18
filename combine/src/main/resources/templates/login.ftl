<#assign ctx=req.contextPath />
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<#--<html lang="zh-CN">-->

<head>
    <meta charset="utf-8" />
    <title>太龙智显终端管理系统</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <#--<base id="base" href="${base}">-->

    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${ctx}/static/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/login.css" rel="stylesheet" type="text/css"/>

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
    <script src="${ctx}/static/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/app.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/login.js" type="text/javascript"></script>

    <link rel="shortcut icon" href="${ctx}/static/image/favicon.ico" />
</head>
<body class="login">
<#---->
    <div class="logo">
        <img src="${ctx}/static/image/logo_big.jpg" alt="" />
    </div>

    <div class="content">
        <!--登录表单-->
        <form id="" class="login-form" action="${ctx}/user/login" method="post"><#--   action="index.ftl"-->
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">账号</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-user"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="账号" name="unumber"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">密码</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-lock"></i>
                        <input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" name="upwd"/>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <label class="checkbox">
                    <input type="checkbox" name="remember" value="1"/> 记住密码
                </label>
                <button type="submit" class="btn green pull-right">
                    登录 <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
            <div class="forget-password">
                <h4>忘记密码？</h4>
                <p>
                    不用担心，您可以 <a href="javascript:;" class="" id="forget-password">重置密码</a>
                </p>
            </div>
            <div class="create-account">
                <p>
                    还没有账号?&nbsp;
                    <a href="javascript:;" id="register-btn" class="">注册一个账号</a>
                </p>
            </div>
        </form>

        <!--忘记密码表单 -->
        <form class="forget-form" action="index.ftl">
            <h3 class="">忘记密码?</h3>
            <p>输入您的电子邮箱，重置密码</p>
            <div class="control-group">
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-envelope"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email" />
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <button type="button" id="back-btn" class="btn">
                    <i class="m-icon-swapleft"></i> 返回
                </button>
                <button type="submit" class="btn green pull-right">
                    提交 <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>

        <!--注册表单 -->
        <form class="register-form" action="index.ftl">
            <h3 class="">注册</h3>
            <p>在下面输入您的账户信息：</p>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">姓名</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-user"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="姓名" name="username"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">密码</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-lock"></i>
                        <input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="密码" name="password"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">确认密码</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-ok"></i>
                        <input class="m-wrap placeholder-no-fix" type="password" placeholder="确认密码" name="rpassword"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">邮箱</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-envelope"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="邮箱" name="email"/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <input type="checkbox" style="z-index: 10000;"/>
                    <label class="checkbox">
                        本人同意 <a href="#">服务条框</a> 和 <a href="#">隐私策略</a>
                    </label>
                    <div id="register_tnc_error"></div>
                </div>
            </div>
            <div class="form-actions">
                <button id="register-back-btn" type="button" class="btn">
                    <i class="m-icon-swapleft"></i>  返回
                </button>
                <button type="submit" id="register-submit-btn" class="btn green pull-right">
                    注册 <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>
    </div>

    <div class="copyright">
        2017 &copy; Tecnon Smart Display Technology Shenzhen Co.,Ltd.
    </div>

    <script>
        jQuery(document).ready(function() {
            App.init();
            Login.init();
        });
    </script>
</body>
</html>
