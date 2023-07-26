<!DOCTYPE html>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Consument</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <div class="container my-5">
        <h3>Add Consument</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <form:form action="/save-konsumen"
                        method="post" modelAttribute="command">
                        <form:hidden path="id" />
                        <div class="row">
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Name</label>
                                <form:input type="text" class="form-control" id="nama"
                                    path="nama" placeholder="Enter Name" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Address</label>
                                <form:input type="text" class="form-control" id="alamat"
                                    path="alamat" placeholder="Enter Address" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">City</label>
                                <form:input type="text" class="form-control" id="kota"
                                    path="kota" placeholder="Enter City" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Province</label>
                                <form:input type="text" class="form-control" id="provinsi"
                                    path="provinsi" placeholder="Enter Province" />
                            </div>
                            <div class="form-group col-md-8" hidden>
                                <label for="datetime" class="col-form-label">Registration Date</label>
                                <form:input type="datetime-local" class="form-control" id="tgl_registrasi"
                                    path="tgl_registrasi" placeholder="Enter Date"/>
                            </div>
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Status</label>
                                    <select name="status" id="status" class="form-control" path="status">
                                        <option value="aktif">aktif</option>
                                        <option value="non-aktif">non-aktif</option>
                                    </select>
                            </div>
                         

                            <div class="col-md-6">
                                <input type="submit" class="btn btn-primary" value=" Submit ">
                            </div>

                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
