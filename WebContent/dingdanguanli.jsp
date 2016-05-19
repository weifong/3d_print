<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="Parameter.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>订单管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/dingdanguanli.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.patch.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
   <%@include file="share.jsp"%>
    <!-- 页面主体 -->
    <div class="container wrap wrapper">
        <h1>&nbsp;</h1>
        <section class="cart_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="cart_list table-responsive">
                            <table class="table_cart">
                                <thead>
                                    <tr>
                                        <th class="product col-xs-2">产品</th>
                                        <th class="description col-xs-4">描述</th>
                                        <th class="unit_price">单价(元)</th>
                                        <th>数量</th>
                                        <th>总价</th>
                                        <th>状态</th>
                                        <th class=" col-xs-1">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="product_img ">
                                            <a href="#"><img src="img/11.png" alt="cart"></a>
                                        </td>
                                        <td class="product_des">
                                            <h3>这里是订单描述</h3>
                                            <p> 下单时间：2016-4-26 21:17:52</p>
                                            <p>材料：黄金五百克</p>
                                        </td>
                                        <td class="u_price">$120</td>
                                        <td class="p_quantity">
                                            <div class="pp_quantity">
                                                6
                                            </div>
                                        </td>
                                        <td class="p_value">$120</td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-warning  btn-block">等待付款</button>
                                            <p><a href="">删除订单</a></p>
                                        </td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-success  btn-block">立即付款</button>
                                            <p><a href="">找人代付</a></p>
                                            <p><a href="">取消订单</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product_img">
                                            <a href="#"><img src="img/11.png" alt="cart"></a>
                                        </td>
                                        <td class="product_des">
                                            <h3>ACCUMSAN ELIT</h3>
                                            <p>这里是产品描述 </p>
                                        </td>
                                        <td class="u_price">$120</td>
                                        <td class="p_quantity">
                                            <div class="pp_quantity">
                                                20
                                            </div>
                                        </td>
                                        <td class="p_value">$120</td>
                                        <td class="">
                                            <button type="button" class="btn  btn-success  btn-block">交易成功</button>
                                            <p><a href="">订单详情</a></p>
                                        </td>
                                        <td >
                                            <button type="button" class="btn  btn-primary  btn-block">商品评价</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product_img ">
                                            <a href="#"><img src="img/11.png" alt="cart"></a>
                                        </td>
                                        <td class="product_des">
                                            <h3>这里是订单描述</h3>
                                            <p> 下单时间：2016-4-26 21:17:52</p>
                                            <p>材料：黄金五百克</p>
                                        </td>
                                        <td class="u_price">$120</td>
                                        <td class="p_quantity">
                                            <div class="pp_quantity">
                                                6
                                            </div>
                                        </td>
                                        <td class="p_value">$120</td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-success  btn-block">交易成功</button>
                                            <p><a href="">订单详情</a></p>
                                        </td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-primary  btn-block">商品评价</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product_img ">
                                            <a href="#"><img src="img/11.png" alt="cart"></a>
                                        </td>
                                        <td class="product_des">
                                            <h3>这里是订单描述</h3>
                                            <p> 下单时间：2016-4-26 21:17:52</p>
                                            <p>材料：黄金五百克</p>
                                        </td>
                                        <td class="u_price">$120</td>
                                        <td class="p_quantity">
                                            <div class="pp_quantity">
                                                6
                                            </div>
                                        </td>
                                        <td class="p_value">$120</td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-warning  btn-block">等待付款</button>
                                            <p><a href="">删除订单</a></p>
                                        </td>
                                        <td class="p_action">
                                            <button type="button" class="btn  btn-success  btn-block">立即付款</button>
                                            <p><a href="">找人代付</a></p>
                                            <p><a href="">取消订单</a></p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </div>
    <!-- 底部 -->
    <footer class="section section-primary">
        <div class="container">
            <ul class="row list-unstyled footer_top_list">
                <li class="col-lg-2">
                    <h2><span class="glyphicon glyphicon-book"></span> 设计指南</h2>
                </li>
                <li class="col-lg-2">
                    <h2><span class="glyphicon glyphicon-shopping-cart"></span> 交易指南</h2>
                </li>
                <li class="col-lg-2">
                    <h2><span class="glyphicon glyphicon-user"></span> 我是设计师</h2>
                </li>
                <li class="col-lg-2">
                    <h2><span class="glyphicon glyphicon-cog"></span>我是加盟商</h2>
                </li>
                <li class="col-lg-2">
                    <h2><span class="glyphicon glyphicon-wrench"></span> 服务支持</h2>
                    <ul class="list-unstyled footer_second_list">
                        <li><a href="#">关于我们</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </footer>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
    function goumai() {
        $("div[class=panel-body]").show();
    }
    </script>
</body>

</html>
