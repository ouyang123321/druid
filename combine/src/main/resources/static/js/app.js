/**
Core script to handle the entire layout and base functions
**/
var App = function () {

    // IE mode
    var isRTL = false;
    var isIE8 = false;
    var isIE9 = false;
    var isIE10 = false;

    var sidebarWidth = 225;
    var sidebarCollapsedWidth = 35;//侧边栏收拢宽度
    var responsiveHandlers = [];//响应处理程序
    // theme layout color set
    var layoutColorCodes = {
        'blue': '#4b8df8',
        'red': '#e02222',
        'green': '#35aa47',
        'purple': '#852b99',
        'grey': '#555555',
        'light-grey': '#fafafa',
        'yellow': '#ffb848'
    };

    var handleInit = function() {
        if ($('body').css('direction') === 'rtl') {//direction  值为rtl(文本方向：从右向左)   ltr(从左到右，默认)     inherit(规定应该从父元素继承direction属性的值)
            isRTL = true;
        }
        isIE8 = !! navigator.userAgent.match(/MSIE 8.0/);//浏览器判断  !!将后面的表达式转换成boolean类型的数据
        isIE9 = !! navigator.userAgent.match(/MSIE 9.0/);
        isIE10 = !! navigator.userAgent.match(/MSIE 10/);
        if (isIE10) {
            jQuery('html').addClass('ie10'); // detect IE10 version 检测浏览器10的版本
        }
    }

    var handleDesktopTabletContents = function () {//处理桌面平板的内容
        // loops all page elements with "responsive" class and applies classes for tablet mode使用“响应”类循环所有页面元素，并为tablet模式应用类
        // For metornic  1280px or less set as tablet mode to display the content properly为metornic 1280px或以下设置为平板模式，以正确显示内容
        if ($(window).width() <= 1280 || $('body').hasClass('page-boxed')) {//hasClass检查被选元素是否包含指定的class
            $(".responsive").each(function () {
                var forTablet = $(this).attr('data-tablet');//获取节点属性的值，相当于getAttribute(key)
                var forDesktop = $(this).attr('data-desktop');/*获取this的data-desktop属性的值*/
                if (forTablet) {
                    $(this).removeClass(forDesktop);/*桌面*/
                    $(this).addClass(forTablet);/*平板电脑*/
                }
            });
        }

        // loops all page elements with "responsive" class and applied classes for desktop mode使用“响应”类和桌面模式的应用类循环所有页面元素
        // For metornic  higher 1280px set as desktop mode to display the content properly对于metornic较高的1280px设置为桌面模式，以正确显示内容
        if ($(window).width() > 1280 && $('body').hasClass('page-boxed') === false) {
            $(".responsive").each(function () {
                var forTablet = $(this).attr('data-tablet');
                var forDesktop = $(this).attr('data-desktop');
                if (forTablet) {
                    $(this).removeClass(forTablet);
                    $(this).addClass(forDesktop);
                }
            });
        }
    }

    var handleSidebarState = function () {//菜单栏状态
        // remove sidebar toggler if window width smaller than 900(for table and phone mode)如果窗口宽度小于900(用于桌面和电话模式)，则删除侧栏切换器。
        if ($(window).width() < 980) {
            $('body').removeClass("page-sidebar-closed");
        }
    }

    var runResponsiveHandlers = function () {/*运行相应处理程序*/
        // reinitialize other subscribed elements重新初始化其他订阅的元素
        for (var i in responsiveHandlers) {//循环遍历对象的属性
            var each = responsiveHandlers[i];
            each.call();
        }
    }

    var handleResponsive = function () {/*响应处理*/
        handleTooltips();
        handleSidebarState();
        handleDesktopTabletContents();
        handleSidebarAndContentHeight();
        handleChoosenSelect();
        handleFixedSidebar();
        runResponsiveHandlers();
    }

    var handleResponsiveOnInit = function () {/*处理/手柄在调整大小时响应*/
        handleSidebarState();
        handleDesktopTabletContents();
        handleSidebarAndContentHeight();
    }

    var handleResponsiveOnResize = function () {
        var resize;
        if (isIE8) {
            var currheight;
            $(window).resize(function() {
                if(currheight == document.documentElement.clientHeight) {
                    return; //quite event since only body resized not window.相当的事件，因为只有身体大小调整，而不是窗口。
                }                
                if (resize) {
                    clearTimeout(resize);
                }   
                resize = setTimeout(function() {
                    handleResponsive();    
                }, 50); // wait 50ms until window resize finishes.      等待50毫秒，直到窗口大小调整完成。
                currheight = document.documentElement.clientHeight; // store last body client height存储最后的主体客户端高度
            });
        } else {
            $(window).resize(function() {
                if (resize) {
                    clearTimeout(resize);
                }   
                resize = setTimeout(function() {
                    console.log('resize');
                    handleResponsive();    
                }, 50); // wait 50ms until window resize finishes.
            });
        }   
    }

    //* BEGIN:CORE HANDLERS 开始:核心处理程序 *//
    // this function handles responsive layout on screen size resize or mobile device rotate.此功能处理屏幕大小调整或移动设备旋转上的响应式布局。
  
    var handleSidebarAndContentHeight = function () {   //处理侧边栏和内容的高度
        var content = $('.page-content');
        var sidebar = $('.page-sidebar');
        var body = $('body');
        var height;
        if (body.hasClass("page-footer-fixed") === true && body.hasClass("page-sidebar-fixed") === false) {
            var available_height = $(window).height() - $('.footer').height();
            if (content.height() <  available_height) {
                content.attr('style', 'min-height:' + available_height + 'px !important');
            }
        } else {
            if (body.hasClass('page-sidebar-fixed')) {
                height = _calculateFixedSidebarViewportHeight();
            } else {
                height = sidebar.height() + 20;
            }
            if (height >= content.height()) {
                content.attr('style', 'min-height:' + height + 'px !important');
            } 
        }          
    }

    var handleSidebarMenu = function () {   //处理侧边栏or工具条菜单
        jQuery('.page-sidebar').on('click', 'li > a', function (e) {
            if ($(this).next().hasClass('sub-menu') == false) {
                if ($('.btn-navbar').hasClass('collapsed') == false) {
                    $('.btn-navbar').click();
                }
                return;
            }
            var parent = $(this).parent().parent();
            parent.children('li.open').children('a').children('.arrow').removeClass('open');
            parent.children('li.open').children('.sub-menu').slideUp(200);
            parent.children('li.open').removeClass('open');
            var sub = jQuery(this).next();
            if (sub.is(":visible")) {
                jQuery('.arrow', jQuery(this)).removeClass("open");
                jQuery(this).parent().removeClass("open");
                sub.slideUp(200, function () {
                    handleSidebarAndContentHeight();
                });
            } else {
                jQuery('.arrow', jQuery(this)).addClass("open");
                jQuery(this).parent().addClass("open");
                sub.slideDown(200, function () {
                    handleSidebarAndContentHeight();
                });
            }
            e.preventDefault();
        });

        // handle ajax links    处理ajax链接
        jQuery('.page-sidebar').on('click', ' li > a.ajaxify', function (e) {
            e.preventDefault();
            App.scrollTop();
            var url = $(this).attr("href");
            var menuContainer = jQuery('.page-sidebar ul');
            var pageContent = $('.page-content');
            var pageContentBody = $('.page-content .page-content-body');
            menuContainer.children('li.active').removeClass('active');
            menuContainer.children('arrow.open').removeClass('open');
            $(this).parents('li').each(function () {
                    $(this).addClass('active');
                    $(this).children('a > span.arrow').addClass('open');
                });
            $(this).parents('li').addClass('active');
            App.blockUI(pageContent, false);
            $.post(url, {}, function (res) {
                    App.unblockUI(pageContent);
                    pageContentBody.html(res);
                    App.fixContentHeight(); // fix content height
                    App.initUniform(); // initialize uniform elements
            });
        });
    }

    var _calculateFixedSidebarViewportHeight = function () {//计算固定侧边栏视口高度
        var sidebarHeight = $(window).height() - $('.header').height() + 1;
        if ($('body').hasClass("page-footer-fixed")) {
            sidebarHeight = sidebarHeight - $('.footer').height();
        }
        return sidebarHeight;
    }

    var handleFixedSidebar = function () {     //处理固定侧边栏
        var menu = $('.page-sidebar-menu');
        if (menu.parent('.slimScrollDiv').size() === 1) { // destroy existing instance before updating the height   在更新高度之前销毁现有实例
            menu.slimScroll({
                destroy: true
            });
            menu.removeAttr('style');
            $('.page-sidebar').removeAttr('style');            
        }
        if ($('.page-sidebar-fixed').size() === 0) {
            handleSidebarAndContentHeight();
            return;
        }
        if ($(window).width() >= 980) {
            var sidebarHeight = _calculateFixedSidebarViewportHeight();
            menu.slimScroll({
                size: '7px',
                color: '#a1b2bd',
                opacity: .3,
                position: isRTL ? 'left' : ($('.page-sidebar-on-right').size() === 1 ? 'left' : 'right'),
                height: sidebarHeight,
                allowPageScroll: false,
                disableFadeOut: false
            });
            handleSidebarAndContentHeight();
        }
    }

    var handleFixedSidebarHoverable = function () {     //处理固定侧边栏可悬浮
        if ($('body').hasClass('page-sidebar-fixed') === false) {
            return;
        }
        $('.page-sidebar').off('mouseenter').on('mouseenter', function () {
            var body = $('body');
            if ((body.hasClass('page-sidebar-closed') === false || body.hasClass('page-sidebar-fixed') === false) || $(this).hasClass('page-sidebar-hovering')) {
                return;
            }
            body.removeClass('page-sidebar-closed').addClass('page-sidebar-hover-on');
            $(this).addClass('page-sidebar-hovering');                
            $(this).animate({
                width: sidebarWidth
            }, 400, '', function () {
                $(this).removeClass('page-sidebar-hovering');
            });
        });
        $('.page-sidebar').off('mouseleave').on('mouseleave', function () {
            var body = $('body');
            if ((body.hasClass('page-sidebar-hover-on') === false || body.hasClass('page-sidebar-fixed') === false) || $(this).hasClass('page-sidebar-hovering')) {
                return;
            }
            $(this).addClass('page-sidebar-hovering');
            $(this).animate({
                width: sidebarCollapsedWidth
            }, 400, '', function () {
                $('body').addClass('page-sidebar-closed').removeClass('page-sidebar-hover-on');
                $(this).removeClass('page-sidebar-hovering');
            });
        });
    }

    var handleSidebarToggler = function () {    //手柄边栏切换开关
        // handle sidebar show/hide     处理侧边栏显示/隐藏
        $('.page-sidebar').on('click', '.sidebar-toggler', function (e) {            
            var body = $('body');
            var sidebar = $('.page-sidebar');
            if ((body.hasClass("page-sidebar-hover-on") && body.hasClass('page-sidebar-fixed')) || sidebar.hasClass('page-sidebar-hovering')) {
                body.removeClass('page-sidebar-hover-on');
                sidebar.css('width', '').hide().show();
                e.stopPropagation();
                runResponsiveHandlers();
                return;
            }
            $(".sidebar-search", sidebar).removeClass("open");
            if (body.hasClass("page-sidebar-closed")) {
                body.removeClass("page-sidebar-closed");
                if (body.hasClass('page-sidebar-fixed')) {
                    sidebar.css('width', '');
                }
            } else {
                body.addClass("page-sidebar-closed");
            }
            runResponsiveHandlers();
        });

        // handle the search bar close      关闭搜索栏
        $('.page-sidebar').on('click', '.sidebar-search .remove', function (e) {
            e.preventDefault();
            $('.sidebar-search').removeClass("open");
        });

        // handle the search query submit on enter press处理回车键提交的搜索查询
        $('.page-sidebar').on('keypress', '.sidebar-search input', function (e) {
            if (e.which == 13) {
                window.location.href = "extra_search.html";
                return false; //<---- Add this line
            }
        });

        // handle the search submit处理搜索提交
        $('.sidebar-search .submit').on('click', function (e) {
            e.preventDefault();
            if ($('body').hasClass("page-sidebar-closed")) {
                if ($('.sidebar-search').hasClass('open') == false) {
                    if ($('.page-sidebar-fixed').size() === 1) {
                        $('.page-sidebar .sidebar-toggler').click(); //trigger sidebar toggle button
                    }
                    $('.sidebar-search').addClass("open");
                } else {
                    window.location.href = "extra_search.html";
                }
            } else {
                window.location.href = "extra_search.html";
            }
        });
    }

    var handleHorizontalMenu = function () {       //处理水平菜单
        //handle hor menu search form toggler click
        $('.header').on('click', '.hor-menu .hor-menu-search-form-toggler', function (e) {
            if ($(this).hasClass('hide')) {
                $(this).removeClass('hide');
                $('.header .hor-menu .search-form').hide();
            } else {
                $(this).addClass('hide');
                $('.header .hor-menu .search-form').show();
            }
            e.preventDefault();
        });

        //handle hor menu search button click处理水平菜单搜索表单切换点击
        $('.header').on('click', '.hor-menu .search-form .btn', function (e) {
            window.location.href = "extra_search.html";
            e.preventDefault();
        });

        //handle hor menu search form on enter press按Enter键处理hor菜单搜索表单
        $('.header').on('keypress', '.hor-menu .search-form input', function (e) {
            if (e.which == 13) {
                window.location.href = "extra_search.html";
                return false;
            }
        });
    }

    var handleGoTop = function () {   //手柄顶部
        /* set variables locally for increased performance */
        jQuery('.footer').on('click', '.go-top', function (e) {
            App.scrollTo();
            e.preventDefault();
        });
    }

    var handlePortletTools = function () {  //处理窗口工具
        jQuery('body').on('click', '.portlet .tools a.remove', function (e) {
            e.preventDefault();
            var removable = jQuery(this).parents(".portlet");
            if (removable.next().hasClass('portlet') || removable.prev().hasClass('portlet')) {
                jQuery(this).parents(".portlet").remove();
            } else {
                jQuery(this).parents(".portlet").parent().remove();
            }
        });

        jQuery('body').on('click', '.portlet .tools a.reload', function (e) {
            e.preventDefault();
            var el = jQuery(this).parents(".portlet");
            App.blockUI(el);
            window.setTimeout(function () {
                    App.unblockUI(el);
            }, 1000);
        });

        jQuery('body').on('click', '.portlet .tools .collapse, .portlet .tools .expand', function (e) {
            e.preventDefault();
            var el = jQuery(this).closest(".portlet").children(".portlet-body");
            if (jQuery(this).hasClass("collapse")) {
                jQuery(this).removeClass("collapse").addClass("expand");
                el.slideUp(200);
            } else {
                jQuery(this).removeClass("expand").addClass("collapse");
                el.slideDown(200);
            }
        });
    }

    var handleUniform = function () {  //统一手柄
        if (!jQuery().uniform) {
            return;
        }
        var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle, .star)");
        if (test.size() > 0) {
            test.each(function () {
                if ($(this).parents(".checker").size() == 0) {
                    $(this).show();
                    $(this).uniform();
                }
            });
        }
    }

    var handleAccordions = function () {
        $(".accordion").collapse().height('auto');
        var lastClicked;
        //add scrollable class name if you need scrollable panes
        jQuery('body').on('click', '.accordion.scrollable .accordion-toggle', function () {
            lastClicked = jQuery(this);
        }); //move to faq section
        jQuery('body').on('shown', '.accordion.scrollable', function () {
            jQuery('html,body').animate({
                scrollTop: lastClicked.offset().top - 150
            }, 'slow');
        });
    }

    var handleTabs = function () {     //手柄标签
        // function to fix left/right tab contents用于修复左右选项卡内容的函数
        var fixTabHeight = function(tab) {
            $(tab).each(function() {
                var content = $($($(this).attr("href")));
                var tab = $(this).parent().parent();
                if (tab.height() > content.height()) {
                    content.css('min-height', tab.height());    
                } 
            });            
        }
        // fix tab content on tab shown修复所示选项卡上的选项卡内容
        $('body').on('shown', '.nav.nav-tabs.tabs-left a[data-toggle="tab"], .nav.nav-tabs.tabs-right a[data-toggle="tab"]', function(){
            fixTabHeight($(this)); 
        });
        $('body').on('shown', '.nav.nav-tabs', function(){
            handleSidebarAndContentHeight();
        });
        //fix tab contents for left/right tabs修复左/右选项卡的选项卡内容
        fixTabHeight('.nav.nav-tabs.tabs-left > li.active > a[data-toggle="tab"], .nav.nav-tabs.tabs-right > li.active > a[data-toggle="tab"]');
        //activate tab if tab id provided in the URL 如果URL中提供了选项卡ID，则激活选项卡
        if(location.hash) {
            var tabid = location.hash.substr(1);
            $('a[href="#'+tabid+'"]').click();
        }
    }

    var handleScrollers = function () {/*手柄滚动条*/
        $('.scroller').each(function () {
            $(this).slimScroll({
                size: '7px',
                color: '#a1b2bd',
                position: isRTL ? 'left' : 'right',
                height: $(this).attr("data-height"),
                alwaysVisible: ($(this).attr("data-always-visible") == "1" ? true : false),
                railVisible: ($(this).attr("data-rail-visible") == "1" ? true : false),
                disableFadeOut: true
            });
        });
    }

    var handleTooltips = function () {/*处理工具提示*/
        if (App.isTouchDevice()) { // if touch device, some tooltips can be skipped in order to not conflict with click events如果是触摸设备，可以跳过一些工具提示，以避免与单击事件冲突。
            jQuery('.tooltips:not(.no-tooltip-on-touch-device)').tooltip();
        } else {
            jQuery('.tooltips').tooltip();
        }
    }

    var handleDropdowns = function () {/*处理下拉框列表*/
        $('body').on('click', '.dropdown-menu.hold-on-click', function(e){
            e.stopPropagation();
        })
    }

    var handlePopovers = function () {/*处理弹出窗口*/
        jQuery('.popovers').popover();
    }

    var handleChoosenSelect = function () {
        if (!jQuery().chosen) {
            return;
        }
        $(".chosen").each(function () {
            $(this).chosen({
                allow_single_deselect: $(this).attr("data-with-diselect") === "1" ? true : false
            });
        });
    }

    var handleFancybox = function () {/*手柄盒*/
        if (!jQuery.fancybox) {
            return;
        }
        if (jQuery(".fancybox-button").size() > 0) {
            jQuery(".fancybox-button").fancybox({
                groupAttr: 'data-rel',
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                helpers: {
                    title: {
                        type: 'inside'
                    }
                }
            });
        }
    }

    var handleTheme = function () {/*处理主题*/
        var panel = $('.color-panel');
        if ($('body').hasClass('page-boxed') == false) {
            $('.layout-option', panel).val("fluid");
        }
        $('.sidebar-option', panel).val("default");
        $('.header-option', panel).val("fixed");
        $('.footer-option', panel).val("default"); 
        //handle theme layout
        var resetLayout = function () {
            $("body").
                removeClass("page-boxed").
                removeClass("page-footer-fixed").
                removeClass("page-sidebar-fixed").
                removeClass("page-header-fixed");
            $('.header > .navbar-inner > .container').removeClass("container").addClass("container-fluid");
            if ($('.page-container').parent(".container").size() === 1) {
                $('.page-container').insertAfter('.header');
            } 
            if ($('.footer > .container').size() === 1) {
                $('.footer').html($('.footer > .container').html());                        
            } else if ($('.footer').parent(".container").size() === 1) {                        
                $('.footer').insertAfter('.page-container');
            }
            $('body > .container').remove();
        }

        var lastSelectedLayout = '';
        var setLayout = function () {
            var layoutOption = $('.layout-option', panel).val();
            var sidebarOption = $('.sidebar-option', panel).val();
            var headerOption = $('.header-option', panel).val();
            var footerOption = $('.footer-option', panel).val(); 
            if (sidebarOption == "fixed" && headerOption == "default") {
                alert('Default Header with Fixed Sidebar option is not supported. Proceed with Default Header with Default Sidebar.');
                $('.sidebar-option', panel).val("default");
                sidebarOption = 'default';
            }
            resetLayout(); // reset layout to default state将布局重置为默认状态
            if (layoutOption === "boxed") {
                $("body").addClass("page-boxed");
                // set header
                $('.header > .navbar-inner > .container-fluid').removeClass("container-fluid").addClass("container");
                var cont = $('.header').after('<div class="container"></div>');
                // set content
                $('.page-container').appendTo('body > .container');
                // set footer
                if (footerOption === 'fixed' || sidebarOption === 'default') {
                    $('.footer').html('<div class="container">'+$('.footer').html()+'</div>');
                } else {
                    $('.footer').appendTo('body > .container');
                }            
            }
            if (lastSelectedLayout != layoutOption) {
                //layout changed, run responsive handler:布局更改，运行响应处理程序
                runResponsiveHandlers();
            }
            lastSelectedLayout = layoutOption;
            //header
            if (headerOption === 'fixed') {
                $("body").addClass("page-header-fixed");
                $(".header").removeClass("navbar-static-top").addClass("navbar-fixed-top");
            } else {
                $("body").removeClass("page-header-fixed");
                $(".header").removeClass("navbar-fixed-top").addClass("navbar-static-top");
            }
            //sidebar
            if (sidebarOption === 'fixed') {
                $("body").addClass("page-sidebar-fixed");
            } else {
                $("body").removeClass("page-sidebar-fixed");
            }
            //footer
            if (footerOption === 'fixed') {
                $("body").addClass("page-footer-fixed");
            } else {
                $("body").removeClass("page-footer-fixed");
            }
            handleSidebarAndContentHeight(); // fix content height固定内容高度
            handleFixedSidebar(); // reinitialize fixed sidebar重新初始化固定边栏
            handleFixedSidebarHoverable(); // reinitialize fixed sidebar hover effect重新初始化固定边栏悬停效果
        }
        // handle theme colors处理主题颜色
        var setColor = function (color) {
            $('#style_color').attr("href", "assets/css/themes/" + color + ".css");
            $.cookie('style_color', color);                
        }
        $('.icon-color', panel).click(function () {
            $('.color-mode').show();
            $('.icon-color-close').show();
        });
        $('.icon-color-close', panel).click(function () {
            $('.color-mode').hide();
            $('.icon-color-close').hide();
        });
        $('li', panel).click(function () {
            var color = $(this).attr("data-style");
            setColor(color);
            $('.inline li', panel).removeClass("current");
            $(this).addClass("current");
        });
        $('.layout-option, .header-option, .sidebar-option, .footer-option', panel).change(setLayout);
    }

    var handleFixInputPlaceholderForIE = function () {/*处理IE的修复输入占位符*/
        //fix html5 placeholder attribute for ie7 & ie8修复IE7和IE8的HTML5占位符属性
        if (isIE8 || isIE9) { // ie7&ie8
            // this is html5 placeholder fix for inputs, inputs with placeholder-no-fix class will be skipped(e.g: we need this for password fields)
            /*这是输入的HTML5占位符修复，具有占位符的输入不跳过修复类*/
            jQuery('input[placeholder]:not(.placeholder-no-fix), textarea[placeholder]:not(.placeholder-no-fix)').each(function () {
                var input = jQuery(this);
                if(input.val()=='' && input.attr("placeholder") != '') {
                    input.addClass("placeholder").val(input.attr('placeholder'));
                }
                input.focus(function () {
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                    }
                });
                input.blur(function () {
                    if (input.val() == '' || input.val() == input.attr('placeholder')) {
                        input.val(input.attr('placeholder'));
                    }
                });
            });
        }
    }

    //* END:CORE HANDLERS *//
    return {
        //main function to initiate template pages  启动模板页面的主要功能
        init: function () {
            //IMPORTANT!!!: Do not modify the core handlers call order. 重要！！！！：不要修改核心处理程序调用顺序。
            //core handlers 核心处理器
            handleInit();
            handleResponsiveOnResize(); // set and handle responsive    设置和处理响应
            handleUniform();
            handleScrollers(); // handles slim scrolling contents   处理纤细的滚动内容
            handleResponsiveOnInit(); // handler responsive elements on page load       页面加载时处理程序响应的元素
            //layout handlers
            handleFixedSidebar(); // handles fixed sidebar menu     处理固定边栏菜单
            handleFixedSidebarHoverable(); // handles fixed sidebar on hover effect
            handleSidebarMenu(); // handles main menu
            handleHorizontalMenu(); // handles horizontal menu      处理悬停效果的固定侧边栏
            handleSidebarToggler(); // handles sidebar hide/show                隐藏/显示菜单栏
            handleFixInputPlaceholderForIE(); // fixes/enables html5 placeholder attribute for IE9, IE8     修复/启用IE9、IE8的HTML5占位符属性
            handleGoTop(); //handles scroll to top functionality in the footer 手柄滚动到页脚的顶部功能
            handleTheme(); // handles style customer tool   处理样式客户工具
            //ui component handlers     UI组件处理程序
            handlePortletTools(); // handles portlet action bar functionality(refresh, configure, toggle, remove)   处理portlet操作栏功能（刷新、配置、切换、删除） portlet：门户组件
            handleDropdowns(); // handle dropdowns  处理下拉列表
            handleTabs(); // handle tabs    处理标签
            handleTooltips(); // handle bootstrap tooltips  处理  提示
            handlePopovers(); // handles bootstrap popovers 处理  弹出窗口工具
            handleAccordions(); //handles accordions    手风琴
            handleChoosenSelect(); // handles bootstrap chosen dropdowns     处理  所选的下拉列表
            App.addResponsiveHandler(handleChoosenSelect); // reinitiate chosen dropdown on main content resize. disable this line if you don't really use chosen dropdowns.
            /*在主内容调整大小时重新启动所选下拉列表。如果您没有真正使用所选下拉列表，请禁用此行。*/
        },
        fixContentHeight: function () {
            handleSidebarAndContentHeight();
        },
        addResponsiveHandler: function (func) {
            responsiveHandlers.push(func);
        },
        // useful function to make equal height for contacts stand side by side     使触点高度相等的有用功能并排站立
        setEqualHeight: function (els) {
            var tallestEl = 0;
            els = jQuery(els);
            els.each(function () {
                var currentHeight = $(this).height();
                if (currentHeight > tallestEl) {
                    tallestColumn = currentHeight;
                }
            });
            els.height(tallestEl);
        },
        // wrapper function to scroll to an element     滚动到元素的包装函数
        scrollTo: function (el, offeset) {
            pos = el ? el.offset().top : 0;
            jQuery('html,body').animate({
                scrollTop: pos + (offeset ? offeset : 0)
            }, 'slow');
        },
        scrollTop: function () {
            App.scrollTo();
        },
        // wrapper function to  block element(indicate loading) 包装函数到块元素（指示加载）
        blockUI: function (el, centerY) {
            var el = jQuery(el);
            el.block({
                message: '<img src="./assets/img/ajax-loading.gif" align="">',
                centerY: centerY != undefined ? centerY : true,
                css: {
                    top: '10%',
                    border: 'none',
                    padding: '2px',
                    backgroundColor: 'none'
                },
                overlayCSS: {
                    backgroundColor: '#000',
                    opacity: 0.05,
                    cursor: 'wait'
                }
            });
        },
        // wrapper function to  un-block element(finish loading)        将函数包装到un块元素（完成加载）
        unblockUI: function (el) {
            jQuery(el).unblock({
                onUnblock: function () {
                    jQuery(el).removeAttr("style");
                }
            });
        },
        // initializes uniform elements     初始化统一元素
        initUniform: function (els) {

            if (els) {
                jQuery(els).each(function () {
                    if ($(this).parents(".checker").size() == 0) {
                        $(this).show();
                        $(this).uniform();
                    }
                });
            } else {
                handleUniform();
            }

        },
        // initializes choosen dropdowns    初始化Choosen下拉列表
        initChosenSelect: function (els) {
            $(els).chosen({
                allow_single_deselect: true
            });
        },
        initFancybox: function () {
            handleFancybox();
        },
        getActualVal: function (el) {
            var el = jQuery(el);
            if (el.val() === el.attr("placeholder")) {
                return "";
            }

            return el.val();
        },
        getURLParameter: function (paramName) {
            var searchString = window.location.search.substring(1),
                i, val, params = searchString.split("&");

            for (i = 0; i < params.length; i++) {
                val = params[i].split("=");
                if (val[0] == paramName) {
                    return unescape(val[1]);
                }
            }
            return null;
        },
        // check for device touch support   检查设备触摸支持
        isTouchDevice: function () {
            try {
                document.createEvent("TouchEvent");
                return true;
            } catch (e) {
                return false;
            }
        },
        isIE8: function () {
            return isIE8;
        },
        isRTL: function () {
            return isRTL;
        },
        getLayoutColorCode: function (name) {
            if (layoutColorCodes[name]) {
                return layoutColorCodes[name];
            } else {
                return '';
            }
        }
    };

}();