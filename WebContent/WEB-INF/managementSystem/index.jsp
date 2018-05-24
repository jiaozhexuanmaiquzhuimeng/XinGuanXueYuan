<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>信管网站后台管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.8.1.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

        .brand .first {
            color: #ccc;
            font-style: italic;
        }

        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<body>
    <!--<![endif]-->

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">

                    <li id="fat-menu" class="dropdown">
                        <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> 任广明
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">设置</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="sign-in.html">注销</a>
                            </li>
                        </ul>
                    </li>

                </ul>
                <a class="brand" href="index.html">
                    <span class="first">德州学院</span>
                    <span class="second">信息管理学院</span>
                </a>
            </div>
        </div>
    </div>


    <div class="container-fluid">

        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
                    <div class="nav-header" data-toggle="collapse" data-target="#column-menu">
                        <i class="icon-dashboard"></i>网站栏目管理</div>
                    
                        <!-- 动态菜单生成 -->
                        <ul id="column-menu" class="nav nav-list collapse in">
                            <li>
                                <a href="index.html">学院主页</a>
                            </li>
                            <li>
                                <a href="users.html">学院概况</a>
                            </li>
                            <li>
                                <a href="user.html">教务教学</a>
                            </li>
                            <li>
                                <a href="gallery.html">招生就业</a>
                            </li>
                            <li>
                                <a href="calendar.html">科研工作</a>
                            </li>
                            <li>
                                <a href="faq.html">学生管理</a>
                            </li>
                            <li>
                                <a href="help.html">党群建设</a>
                            </li>
                            <li>
                                <a href="help.html">人才引进</a>
                            </li>
                            <li>
                                <a href="help.html">校友风采</a>
                            </li>
    
                        </ul>

                        <div class="nav-header" data-toggle="collapse" data-target="#module-menu">
                            <i class="icon-dashboard"></i>首页版块管理</div>
                        
                            <!-- 动态菜单生成 -->
                            <ul id="module-menu" class="nav nav-list collapse in">
                                <li>
                                    <a href="index.html">最新动态</a>
                                </li>
                                <li>
                                    <a href="users.html">通知公告</a>
                                </li>
                                <li>
                                    <a href="user.html">党群工作</a>
                                </li>
        
                            </ul>
    


                    <div class="nav-header" data-toggle="collapse" data-target="#data-menu">
                        <i class="icon-briefcase"></i>资料库管理
                    </div>
                    <ul id="data-menu" class="nav nav-list collapse in">
                        <li>
                            <a href="sign-in.html">查看资料库</a>
                        </li>
                        <li>
                            <a href="sign-up.html">回收站</a>
                        </li>
                    </ul>

                    <div class="nav-header" data-toggle="collapse" data-target="#admin-menu">
                        <i class="icon-exclamation-sign"></i>管理员操作</div>
                    <ul id="admin-menu" class="nav nav-list collapse in">
                        <li>
                            <a href="403.html">查看留言板</a>
                        </li>
                       
                    </ul>
                </div>
            </div>
            
            <div class="span9">

               <!--  <div class="stats">
                    <p class="stat">
                        <span class="number">53</span>tickets</p>
                    <p class="stat">
                        <span class="number">27</span>tasks</p>
                    <p class="stat">
                        <span class="number">15</span>waiting</p>
                </div> -->
<!--                 <h2 class="page-title">最新发布</h2> -->

                <div class="row-fluid">
                    <div class="block">
                        <p class="block-heading" data-toggle="collapse" data-target="#chart-container">最新发布</p>
                        <div id="chart-container" class="block-body collapse in">
                            <div id="line-chart"></div>
                        </div>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#tablewidget">资源概况</div>
                        <div id="tablewidget" class="block-body collapse in">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Mark</td>
                                        <td>Tompson</td>
                                        <td>the_mark7</td>
                                    </tr>
                                    <tr>
                                        <td>Ashley</td>
                                        <td>Jacobs</td>
                                        <td>ash11927</td>
                                    </tr>
                                    <tr>
                                        <td>Audrey</td>
                                        <td>Ann</td>
                                        <td>audann84</td>
                                    </tr>
                                    <tr>
                                        <td>John</td>
                                        <td>Robinson</td>
                                        <td>jr5527</td>
                                    </tr>
                                    <tr>
                                        <td>Aaron</td>
                                        <td>Butler</td>
                                        <td>aaron_butler</td>
                                    </tr>
                                    <tr>
                                        <td>Chris</td>
                                        <td>Albert</td>
                                        <td>cab79</td>
                                    </tr>
                                </tbody>
                            </table>
                            <p>
                                <a href="users.html">More...</a>
                            </p>
                        </div>
                    </div>
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#widget1container">留言板</div>
                        <div id="widget1container" class="block-body collapse in">
                            <h2>Using Ruby?</h2>
                            <p>This template was developed with
                                <a href="http://middlemanapp.com/" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
                            <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't
                                have to waste your time doing it yourself!</p>
                            <p>The layout.erb file includes the header, footer, and side navigation and all of the views are
                                broken out into their own files.</p>
                            <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like you
                                would expect.</p>
                        </div>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#widget2container">操作日志
                            <span class="label label-warning">+10</span>
                        </div>
                        <div id="widget2container" class="block-body collapse in">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>
                                            <p>
                                                <i class="icon-user"></i> Mark Otto</p>
                                        </td>
                                        <td>
                                            <p>Amount: $1,247</p>
                                        </td>
                                        <td>
                                            <p>Date: 7/19/2012</p>
                                            <a href="#">View Transaction</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                                <i class="icon-user"></i> Audrey Ann</p>
                                        </td>
                                        <td>
                                            <p>Amount: $2,793</p>
                                        </td>
                                        <td>
                                            <p>Date: 7/12/2012</p>
                                            <a href="#">View Transaction</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                                <i class="icon-user"></i> Mark Tompson</p>
                                        </td>
                                        <td>
                                            <p>Amount: $2,349</p>
                                        </td>
                                        <td>
                                            <p>Date: 3/10/2012</p>
                                            <a href="#">View Transaction</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>
                                                <i class="icon-user"></i> Ashley Jacobs</p>
                                        </td>
                                        <td>
                                            <p>Amount: $1,192</p>
                                        </td>
                                        <td>
                                            <p>Date: 1/19/2012</p>
                                            <a href="#">View Transaction</a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="block span6">
                        <p class="block-heading">关于</p>
                        <div class="block-body">
                            <h2>Tip of the Day</h2>
                            <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio peanut
                                leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory shallot
                                winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram zucchini swiss
                                chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish beet greens
                                broccoli brussels sprout bitterleaf groundnut cress sweet pepper leek bok choy shallot celtuce
                                scallion chickpea radish pea sprouts.</p>
                            <p>
                                <a class="btn btn-primary btn-large">Learn more &raquo;</a>
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>	
</div>


        <footer>
            <hr>

            <p class="pull-right">德州学院
                <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">信息管理学院</a>
            </p>


            <p>&copy; 2018
                <a href="#"></a>
            </p>
        </footer>




        <!-- Le javascript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->


</body>

</html>