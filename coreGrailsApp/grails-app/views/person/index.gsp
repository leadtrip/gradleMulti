<%@ page import="core.app.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <asset:javascript src="fp.js"/>
    <asset:stylesheet src="fp.css"/>
    <title>Person</title>
</head>

<body>
        <filterpane:filterPane domain="core.app.Person" title="Search" visible="yes"/>

        <g:if test="${personList}">
            <table>
            <tr>
                <th>Forename</th>
                <th>Surname</th>
            </tr>
            <g:each in="${personList}" var="aPerson" >
                <tr>
                    <td>${aPerson.forename}</td>
                    <td>${aPerson.surname}</td>
                </tr>
            </g:each>
            </table>

            <g:paginate total="${personCount == null ? Person.count(): personCount}" params="${filterParams}" />
        </g:if>
</body>
</html>