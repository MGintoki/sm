<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>部门列表</title>
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/thems.css">
    <script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function(){
            window.onresize=function(){ location=location };

            var main_h = $(window).height();
            $('.hy_list').css('height',main_h-45+'px');

            var search_w = $(window).width()-40;
            $('.search').css('width',search_w+'px');
            //$('.list_hy').css('width',search_w+'px');
        });
    </script>
</head>

<body onLoad="Resize();">
<div id="right_ctn">
    <div class="right_m">
        <div class="hy_list">
            <div class="box_t">
                <span class="name">部门列表</span>
            </div>
            <div class="space_hx">&nbsp;</div>
            <table cellpadding="0" cellspacing="0" class="list_hy">
                <tr>
                    <th scope="col">名称</th>
                    <th scope="col">地址</th>
                    <th scope="col">操作</th>
                </tr>
                <c:forEach items="${LIST}" var="dep">
                <tr>
                    <td>${dep.name}</td>
                    <td>${dep.address}</td>
                    <td>
                        <a href="toEdit.do?id=${dep.id}" class="btn">编辑</a>
                        <a href="remove.do?id=${dep.id}" class="btn">删除</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
            <div class="r_foot">
                <div class="r_foot_m">
                    <a href="toAdd.do" class="btn">添加</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
