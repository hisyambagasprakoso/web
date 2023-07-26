<!DOCTYPE html>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>All Consuments</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <div class="container my-2">
        <div class="card">
            <div class="card-body">
                <div class="container my-5">
                    <div class="col-lg-6">
                        <a href="/add-konsumen" class="btn btn-primary">
                            <i class="fas fa-user-plus ml-2">Add Consument </i>
                        </a>
                    </div>    
                    <div class="col-md-10">
                        <c:if test="${konsumens.size()==0}">
                            <h2>No record found !!</h2>
                        </c:if>
                        <c:if test="${konsumens.size() gt 0 }">
                            <div>
                                <input type="text" id="myInput" placeholder="Search here..">
                                <table class="table table-striped table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>City</th>
                                            <th>Provence</th>
                                            <th>Registration Date</th>
                                            <th>Status</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody id="myTable">
                                        <c:forEach var="konsumen" items="${konsumens}">
                                            <tr>
                                                <td>${konsumen.nama}</td>
                                                <td>${konsumen.alamat}</td>
                                                <td>${konsumen.kota}</td>
                                                <td>${konsumen.provinsi}</td>
                                                <td>${konsumen.tgl_registrasi}</td>
                                                <td>${konsumen.status}</td>
                                                <td>
 <a href="/konsumen-update/${konsumen.id}" class="btn btn-primary">
      <i class="fas fa-user-edit ml-2"></i></a>
                                               </td>
                                             <td>
  <a href="/konsumen-delete/${konsumen.id}" class="btn btn-primary">
  <i class="fas fa-user-times ml-2"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>