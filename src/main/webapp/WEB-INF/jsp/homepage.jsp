<%-- 
    Document   : homepage
    Created on : Feb 23, 2018, 5:00:29 PM
    Author     : jaspe
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-left: 5%; margin-right: 5%;">
            <div class="jumbotron">
                <h1>Stratpoint</h1> 
            </div>
            <div>
                <!--style="width:50%; margin: auto;"-->
                <span class="counter pull-right"></span>
                <table class="table table-hover table-bordered results">
                    <thead>
                        <tr>
                            <th style="display: none">ID</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Active</th>
                            <th>Blocked</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${profileList}" var="profile">
                            <tr>
                                <td class="id"  style="display: none">${profile.id}</td>
                                <td class="name"><a>${profile.name.first} ${profile.name.last}</a></td>
                                <td>${profile.age}</td>

                                <c:choose>
                                    <c:when test="${profile.active == true}">
                                        <td><input type="checkbox" class="checkBoxTrue disabled"></td>
                                        </c:when>
                                        <c:otherwise>
                                        <td><input type="checkbox" class="disabled"></td>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${profile.blocked}">
                                        <td><input type="checkbox"  class="checkBoxTrue disabled"></td>
                                        </c:when>
                                        <c:otherwise>
                                        <td><input type="checkbox" class="disabled"></td>
                                        </c:otherwise>
                                    </c:choose>    
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
</html>

<script>
    $(document).ready(function () {
        $('.table').DataTable({
            "paging": false,
            "ordering": false,
            "info": false
        });

        $('.checkBoxTrue').prop("checked", true);
        $('.disabled').prop("disabled", true);
        $(".name").click(function () {
            var currentRow = $(this).closest("tr");
            var profileID = currentRow.find("td:eq(0)").text();
            location.href = 'http://localhost:8084/StratpointExam/profile/' + profileID;
        });

    });
</script>


