<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>德州学院信息管理学院</title>
   <jsp:include page="/include/includeCss.jsp"></jsp:include>
    <script>
        ;
        (function ($, undefined) {
            $.fn.slide = function (options) {
                var defaules = {
                    type1: 'mouseover',
                    type2: 'mouseout',
                    speed: 400,
                    element1: 'li',
                    element2: 'ul'
                };

                options = $.extend(defaules, options);

                $(this).each(function (index, el) {
                    $(this).find(options.element1).on(options.type1, function (event) {
                        event.preventDefault();
                        $(this).find(options.element2).stop().show(options.speed);
                    }).on(options.type2, function (event) {
                        event.preventDefault();
                        $(this).find(options.element2).stop().hide(options.speed);
                    });
                });

            }
        })(jQuery);

        $(document).ready(function () {
            $('#Carousel').carousel({
                interval: 3000,
                pause: 'hover'
            });


            $('.ppt-page').find('li').on('mouseover', function (event) {
                event.preventDefault();
                $('.ppt-page').find('li').removeClass('active');
                $(this).addClass('active');
                $('.ppt').hide();
                $('.ppt').eq($(this).index()).show();
            });

            $('.getup').getUp();

            $('#Nav').slide();
        });
    </script>

</head>

<body>
    <!--头部-->
    <div id="header" class="navbar-default" role="navigation">
        <div class="container-fluid banner">
            <div class="container banner-inner">
                <img src="img/logo4.png" alt="logo" class="img-responsive">
                <ul class="banner-list list-inline hidden-xs">
                    <li>
                        <a href="#">德州学院</a>
                    </li>
                    <li>
                        <a href="#">访问旧版</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav" id="Nav">
                    <li>
                        <a href="#">学院首页
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">学院概况
                            <span class="nav-slider"></span>
                            <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">学院简介</a>
                            </li>
                            <li>
                                <a href="#">领导班子</a>
                            </li>
                            <li>
                                <a href="#">机构设置</a>
                            </li>
                            <li>
                                <a href="#">师资队伍</a>
                            </li>
                            <li>
                                <a href="#">历任领导</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">教务教学
                            <span class="nav-slider"></span>
                            <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">科学研究</a>
                            </li>
                            <li>
                                <a href="#">师资队伍</a>
                            </li>
                            <li>
                                <a href="#">历任领导</a>
                            </li>
                            <li>
                                <a href="#">学院简介</a>
                            </li>
                            <li>
                                <a href="#">领导班子</a>
                            </li>
                            <li>
                                <a href="#">招生就业</a>
                            </li>
                            <li>
                                <a href="#">机构设置</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">科学研究
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                    <li>
                        <a href="#">招生就业
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                    <li>
                        <a href="#">党群建设
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                    <li>
                        <a href="#">学生工作
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">规章制度
                            <span class="nav-slider"></span>
                            <b class="caret"></b>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">学院简介</a>
                            </li>
                            <li>
                                <a href="#">领导班子</a>
                            </li>
                            <li>
                                <a href="#">机构设置</a>
                            </li>
                            <li>
                                <a href="#">师资队伍</a>
                            </li>
                            <li>
                                <a href="#">历任领导</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">校友风采
                            <span class="nav-slider"></span>
                        </a>

                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!--主体-->
    <div id="content" class="container-fluid">

        <!-- 返回首页 -->
        <div class="container" style="padding: 0 0;">

            <p>
                <a href="" class="back-index">&lt; 返回首页</a>
            </p>
        </div>


        <div class="container main-bg">

            <!-- 文章标题 -->
            <p>
                <h4 class="article-title">我校杰出校友、山东英才学院院长夏季亭应邀来校交流座谈 </h4>
            </p>

            <!-- 文章其它信息 -->
            <p class="article-info">
                <span>[</span>

                <abbr>作者:
                    <span class="author">这里放作者</span> | 时间:
                    <span class="time-year">这里放年份</span>
                    <span class="time-clock">这里放具体时间</span>
                </abbr>

                <span>]</span>
            </p>

            <!-- 文章正文 -->
            <div class="panel">
                <div class="panel-body">
                    <section class="article-content">
                        4月26日下午，德州学院杰出校友、历史与社会管理学院客座教授、山东英才学院院长夏季亭应邀来校交流座谈.
                        
                        　历史学院负责人介绍了本院专业设置、师资力量、学科建设、学生培养等情况。夏季亭校友介绍了英才学院创办历史与发展现状，以及内涵建设、特色专业创办、国家实验室建设的经验，并表示自己作为客座教授，将履职尽责，积极促进学生专业成长。双方共同表达了进一步加强交流合作、共同发展的良好意愿。
                        　　历史学院全体教师参加了交流活动。 　　夏季亭，1987年调到德州师专（德州学院前身）历史系，一直工作到1993年。期间曾被授予优秀教师、科技拨尖人才等荣誉称号，深得师生员工好评。1998年，夏季亭创办山东英才学院，现学校已发展成为全国在校生规模最大的民办高校，连续6年位居《中国民办大学排行榜》前三名。现为山东省人大代表、山东省教科文卫委员会副主任委员，享受国务院政府特殊津贴。被中共中央、国务院评为“全国先进工作者”，荣获“黄炎培杰出校长奖”、中国高等教育学会“学生喜爱的大学校长”，以及山东省“富民兴鲁劳动奖章”、“山东创业十杰”、“山东省优秀中国特色社会主义建设者”、“职业教育领军人物”等称号。
                    </section>
                </div>
            </div>

        </div>
    </div>




    <!--底部-->
    <div id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-l">
                        <ul class="list-inline footer-list">
                            <li>
                                <a href="#"> 实验中心</a>
                            </li>
                            <li>
                                <a href="#"> 专题教育</a>
                            </li>
                            <li>
                                <a href="#"> 工作流程</a>
                            </li>
                            <li>
                                <a href="#"> 办公电话</a>
                            </li>
                            <li>
                                <a href="#"> 学生管理系统</a>
                            </li>
                            <li>
                                <a href="#"> 教务系统</a>
                            </li>
                            <li>
                                <a href="#">《致远方的母亲》</a>
                            </li>
                            <li>
                                <a href="#"> 学院微信平台</a>
                            </li>

                        </ul>
                    </div>
                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-logo">
                        <img src="img/footer-logo.png" class="img-responsive" alt="logo">
                    </div>
                    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 footer-r text-center">
                        <img class="email" src="img/email.png" class="img-responsive" alt="email">
                        <p>书记信箱：dzxywfs@163.com </p>
                        <p>院长信箱：dzxylili@163.com</p>
                    </div>
                </div>
            </div>
            <div class="link text-center">
                <p class="link-p">友情链接：</p>
                <ul class="link-list list-inline">
                    <li>
                        <a href="#">教育网</a>
                    </li>
                    <li>
                        <a href="#">山东省教育厅</a>
                    </li>
                    <li>
                        <a href="#">研招网</a>
                    </li>
                    <li>
                        <a href="#">中国知网</a>
                    </li>
                    <li>
                        <a href="#">去大赛网</a>
                    </li>
                    <li>
                        <a href="#">我要自学网</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p class="address">德州学院信息管理学院 联系地址：德州学院信息管理学院 邮编：253023 电话：0534-8985842</p>
        </div>
    </div>
    <div class="getup">
        <span class="glyphicon glyphicon-chevron-up"></span>
        <div class="markup"></div>
    </div>
</body>

</html>