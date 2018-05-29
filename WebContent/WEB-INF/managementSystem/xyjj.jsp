<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title></title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <jsp:include page="include/includeCss.jsp"></jsp:include>
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
			<jsp:include page="include/includeLeftNav.jsp"></jsp:include>

            <div class="span9">
                <ol class="breadcrumb">
                    <li>
                        <a href="#">网站管理系统</a>
                    </li>
                    <li>
                        <a href="#">网站栏目管理</a>
                    </li>
                    <li class="active">学院概况</li>
                </ol>
                <div class="btn-toolbar">
                    <button class="btn btn-primary">
                        <i class="icon-plus"></i> 发布新闻</button>
                </div>
                <div class="well">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>标题</th>
                                <th>作者</th>
                                <th>时间</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td>Tompson</td>
                                <td>the_mark7</td>
                                <td>
                                    <a href="user.html" title="编辑">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal" title="删除">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Ashley</td>
                                <td>Jacobs</td>
                                <td>ash11927</td>
                                <td>
                                    <a href="user.html">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Audrey</td>
                                <td>Ann</td>
                                <td>audann84</td>
                                <td>
                                    <a href="user.html">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>John</td>
                                <td>Robinson</td>
                                <td>jr5527</td>
                                <td>
                                    <a href="user.html">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Aaron</td>
                                <td>Butler</td>
                                <td>aaron_butler</td>
                                <td>
                                    <a href="user.html">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Chris</td>
                                <td>Albert</td>
                                <td>cab79</td>
                                <td>
                                    <a href="user.html">
                                        <i class="icon-pencil"></i>
                                    </a>
                                    <a href="#myModal" role="button" data-toggle="modal">
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pagination">
                    <ul>
                        <li>
                            <a href="#">Prev</a>
                        </li>
                        <li>
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">Next</a>
                        </li>
                    </ul>
                </div>

                <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 id="myModalLabel">Delete Confirmation</h3>
                    </div>
                    <div class="modal-body">
                        <p class="error-text">
                            <i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
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
        <script src="lib/bootstrap/js/bootstrap.js"></script>













</body>

</html>