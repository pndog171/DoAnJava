<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--

TemplateMo 546 Sixteen Clothing

https://templatemo.com/tm-546-sixteen-clothing

-->

<!-- Additional CSS Files -->
<link rel="stylesheet" href="/assets/css/fontawesome.css">
<link rel="stylesheet" href="/assets/css/templatemo-sixteen.css">
<link rel="stylesheet" href="/assets/css/owl.css">
<div class="banner header-text">
    <%--    <div class="owl-banner owl-carousel">--%>
    <%--        <div class="banner-item-01">--%>
    <%--            <div class="text-content">--%>
    <%--                <h4>XIN CHAO</h4>--%>
    <%--                <h2>${user.username}</h2>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</div>
<!-- Banner Ends Here -->
<div class="latest-products mt-5">
    <div class="container">

        <div class="content">
            <div class="row">
                <div class="col-md-4">
                    <div class="card card-user">
                        <div class="image">
                        </div>
                        <div class="card-body">
                            <div class="author">
                                <a href="#">
                                    <img class="avatar border-gray" src="/assets/images/${user.photo}" style="width: 150px ; height: 150px;">
                                    <h5 class="title">${user.username}</h5>
                                </a>
                                <p class="description">
                                    @chetfaker
                                </p>
                            </div>
                            <p class="description text-center">
                                "I like the way you work it <br>
                                No diggity <br>
                                I wanna bag it up"
                            </p>
                        </div>
                        <div class="card-footer">
                            <hr>
                            <div class="button-container">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-6 ml-auto">
                                        <h5>12<br><small>Files</small></h5>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-6 ml-auto mr-auto">
                                        <h5>2GB<br><small>Used</small></h5>
                                    </div>
                                    <div class="col-lg-3 mr-auto">
                                        <h5>24,6$<br><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card card-user">
                        <div class="card-header">
                            <h5 class="card-title">Cart Details</h5>
                        </div>
                        <div class="card-body">

                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Order_ID</th>
                                    <th scope="col">Name Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${items}">
                                    <tr>
                                        <th scope="row">${item.id}</th>
                                      <td> <img src="${item.product.image}" width="50px" height="50px"/> </td>
                                        <td>${item.product.name}</td>
                                        <td>${item.price}</td>
                                        <td>${item.quantity}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

