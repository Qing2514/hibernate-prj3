<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2021/11/8
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>个人信息：<p></td>
    </tr>
    <tr>
        <td>用户名：</td>
        <td><s:property value="#request.loginUser.account"/></td>
    </tr>
    <tr>
        <td>密码：</td>
        <td><s:property value="#request.loginUser.password"/></td>
    </tr>
    <tr>
        <td>姓名：</td>
        <td><s:property value="#request.loginUser.name"/></td>
    </tr>
    <tr>
        <td>性别：</td>
        <td><s:property value="#request.loginUser.sex"/></td>
    </tr>
    <tr>
        <td>生日：</td>
        <td><s:property value="#request.loginUser.birthday"/></td>
    </tr>
    <tr>
        <td>邮箱：</td>
        <td><s:property value="#request.loginUser.email"/></td>
    </tr>
    <s:if test="#request.loginUser.address">
        <s:form action="UserdelAddr" method="post">
            <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>
            <tr>
                <td>详细地址：</td>
                <td><s:property value="#request.loginUser.address.detail"/></td>
            </tr>
            <tr>
                <td>邮编：</td>
                <td><s:property value="zipcode"/></td>
            </tr>
            <tr>
                <td>电话号码：</td>
                <td><s:property value="phone"/></td>
            </tr>
            <tr>
                <td>类型：</td>
                <td><s:property value="type"/></td>
            </tr>
            <tr>
                <td><s:submit value="删除 "/></td>
            </tr>
        </s:form>
    </s:if>
    <s:else> 添加新地址：<p>
    <s:form action="UseraddAddr" method="post">
        <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>
        <s:textfield name="address.detail" label="详细地址"/>
        <s:textfield name="address.zipcode" label="邮政编码"/>
        <s:textfield name="address.phone" label="联系电话"/>
        <s:textfield name="address.type" label="地址类型（office,home,etc.）"/>
        <s:submit value="添加"/>
    </s:form>
    </s:else>
    <%--    <s:iterator value="#request.loginUser.addresses" status="st">--%>
    <%--        <s:form action="UserdelAddr" method="post">--%>
    <%--            <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>--%>
    <%--            <s:hidden name="address.addressId" value="%{addressId}"/>--%>
    <%--            <tr>--%>
    <%--                <td>地址<s:property value="#st.count"/>：</td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td>详细地址：</td>--%>
    <%--                <td><s:property value="detail"/></td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td>邮编：</td>--%>
    <%--                <td><s:property value="zipcode"/></td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td>电话号码：</td>--%>
    <%--                <td><s:property value="phone"/></td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td>类型：</td>--%>
    <%--                <td><s:property value="type"/></td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <td><s:submit value="删除"/></td>--%>
    <%--            </tr>--%>
    <%--        </s:form>--%>
    <%--    </s:iterator>--%>
</table>
<%--<hr>--%>
<%--添加新地址：<p>--%>
<%--    <s:form action="UseraddAddr" method="post">--%>
<%--        <s:hidden name="loginUser.customerId" value="%{#request.loginUser.customerId}"/>--%>
<%--        <s:textfield name="address.detail" label="详细地址"/>--%>
<%--        <s:textfield name="address.zipcode" label="邮政编码"/>--%>
<%--        <s:textfield name="address.phone" label="联系电话"/>--%>
<%--        <s:textfield name="address.type" label="地址类型（office,home,etc.）"/>--%>
<%--        <s:submit value="添加"/>--%>
<%--    </s:form>--%>
<%--<s:property value="#request.tip"/><p>--%>
</body>
</html>
