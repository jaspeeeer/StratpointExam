<%-- 
    Document   : profile
    Created on : Feb 23, 2018, 5:00:48 PM
    Author     : jaspe
--%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${profile.name.first} ${profile.name.middle} ${profile.name.last}</title>
    </head>
    <body>
        <div style="margin-left: 5%; margin-right: 5%;">
            <div class="jumbotron">
                <h1>Stratpoint</h1> 
            </div>
            <div style="width:50%;">
                <form>
                   
                    <div class="form-group row">
                        <label for="profileName" class="col-sm-2 col-form-label"><img src="https://a.edim.co/images_v2/opengraph/og_logo.png" alt="image.svg" class="img-thumbnail"></label>
                        <div class="col-sm-10">
                            <h1>${profile.name.first} ${profile.name.middle} ${profile.name.last}</h1>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profileId" class="col-sm-2 col-form-label">ID</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profileId" placeholder="ID" value="${profile.id}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profile" class="col-sm-2 col-form-label">Profile</label>
                        <div class="col-sm-10">
                            <textarea style="resize: none;" class="form-control" id="comment">${profile.profile}</textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profileEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profileEmail" placeholder="email" value="${profile.email}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profilePhone" class="col-sm-2 col-form-label">Phone</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profilePhone" placeholder="email" value="${profile.phone}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profileAddress" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profileAddress" placeholder="email" value="${profile.address}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profileAge" class="col-sm-2 col-form-label">Age</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profileAge" placeholder="email" value="${profile.age}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="profileBalance" class="col-sm-2 col-form-label">Balance</label>
                        <div class="col-sm-10">
                            <input type="textbox" class="form-control" id="profileBalance" placeholder="email" value="${profile.balance}">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>


<script>
    $(document).ready(function () {
        $('.form-control').attr("readonly", true);
        $(".form-control").css("border", 0); 
    });
</script>


