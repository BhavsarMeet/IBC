<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@page import="com.model.admin.AdminModel" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>IBC Admin Dashboard</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="" name="keywords">
                    <meta content="" name="description">

                    <!-- Favicon -->
                    <link href="/img/favicon.ico" rel="icon">

                    <!-- Google Web Fonts -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
                        rel="stylesheet">

                    <!-- Icon Font Stylesheet -->
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
                        rel="stylesheet">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">

                    <!-- Libraries Stylesheet -->
                    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                    <link href="/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="/css-admin/bootstrap.min.css" rel="stylesheet">

                    <!-- Template Stylesheet -->
                    <link href="/css-admin/style-admin.css" rel="stylesheet">
                </head>

                <body>

                    <% AdminModel adminData=(AdminModel)session.getAttribute("admin"); %>

                    <%if(adminData!=null){%>
                        <div class="container-xxl position-relative bg-white d-flex p-0">
                            <!-- Spinner Start -->
                            <div id="spinner"
                                class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;"
                                    role="status">
                                    <span class="sr-only">Loading...</span>
                                </div>
                            </div>
                            <!-- Spinner End -->

                            <!-- Sidebar Start -->
                            <%@ include file="../common/admin-sidebar.jsp" %>

                                <!-- Sidebar End -->


                                <!-- Content Start -->
                                <div class="content">

                                    <!-- Navbar Start -->
                                    <%@ include file="../common/admin-navbar.jsp" %>

                                        <!-- Navbar End -->


                                        <!-- Sale & Revenue Start -->
                                        <div class="container-fluid pt-4 px-4">
                                            <div class="row g-4">
                                                <div class="col-sm-6 col-xl-3">
                                                    <div
                                                        class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                                        <i class="fa fa-chart-line fa-3x text-primary"></i>
                                                        <div class="ms-3">
                                                            <p class="mb-2">New Car Sale</p>
                                                            <h6 class="mb-0">${newcarsale}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-xl-3">
                                                    <div
                                                        class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                                        <i class="fa fa-chart-bar fa-3x text-primary"></i>
                                                        <div class="ms-3">
                                                            <p class="mb-2">Used Car Sale</p>
                                                            <h6 class="mb-0">${usedcarsale}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-xl-3">
                                                    <div
                                                        class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                                        <i class="fa fa-chart-area fa-3x text-primary"></i>
                                                        <div class="ms-3">
                                                            <p class="mb-2">Active Bids</p>
                                                            <h6 class="mb-0">${activebids}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-xl-3">
                                                    <div
                                                        class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                                        <i class="fa fa-chart-pie fa-3x text-primary"></i>
                                                        <div class="ms-3">
                                                            <p class="mb-2">Total Dealers</p>
                                                            <h6 class="mb-0">${totaldealers}</h6>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Sale & Revenue End -->
                                        <!-- Widgets Start -->
                                        <div class="container-fluid pt-4 px-4">
                                            <div class="row g-6">

                                                <div class="col-sm-6 col-md-6 col-xl-6">
                                                    <div class="h-100 bg-light rounded p-4">
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-4">
                                                            <h6 class="mb-0">Calender</h6>
                                                        </div>
                                                        <div id="calender"></div>
                                                    </div>
                                                </div>

                                                <!-- Selling-dealer details Start -->
                                                ${dealstatus}

                                                <div class="col-sm-6 col-md-6 col-xl-6">
                                                    <div class="bg-light text-center rounded p-4">
                                                        <div
                                                            class="d-flex align-items-center justify-content-center mb-4">
                                                            <h6 class="mb-0">Selling-Dealer Bid List</h6>

                                                        </div>
                                                        <div class="my-3">
                                                        <input type="text" id="inputsearchbidlistusedcar"
                                                            class="form-control" placeholder="Search bids"
                                                            onkeyup="searchBidListUsedCar()">
                                                        </div>
                                                            <nav aria-label="Page navigation example">
                                                            <ul class="pagination justify-content-end"
                                                                id="paginatebidlistusedcar">

                                                            </ul>
                                                        </nav>
                                                        <div class="table-responsive">
                                                            <table
                                                                class="table text-start align-middle table-bordered table-hover mb-0"
                                                                id="bidlistusedcartable">
                                                                <thead>
                                                                    <tr class="text-dark">

                                                                        <th scope="col">Brand</th>
                                                                        <th scope="col">Model</th>
                                                                        <th scope="col">Base Price</th>
                                                                        <th scope="col">Highest Bid</th>
                                                                        <th scope="col">Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="bidlistusedcardata">
                                                                    <!-- <c:forEach items="${usedCarModelCarrier}" var="data">
                                                                <tr>
                                                                    <td><input class="form-check-input" type="checkbox">
                                                                    </td>
                                                                    <td>${data.usedCarModelData.usedCarBrand}</td>
                                                                    <td>${data.usedCarModelData.usedCarModelName}</td>
                                                                    <td>&#8377;${data.usedCarModelData.usedCarBasePrice}
                                                                    </td>
                                                                    <c:choose>
                                                                        <c:when test="${empty data.highestBid}">
                                                                            <td> No Bids yet!</td>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <td>&#8377;${data.highestBid}</td>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                    <td><a href="gettopbiddata?carid=${data.usedCarModelData.usedCarId}"
                                                                            class="btn btn-outline-primary">View
                                                                            Details</a></td>
                                                                </tr>
                                                            </c:forEach> -->

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Selling-dealer details End -->

                                            </div>
                                        </div>
                                        <!-- Widgets End -->

                                        <!-- Customer-enquiry details Start -->
                                        ${dealstatus}
                                        ${msg}
                                        <div class="container-fluid pt-4 px-4">
                                            <div class="bg-light text-center rounded p-4">
                                                <div class="d-flex align-items-center justify-content-center mb-4">
                                                    <h6 class="mb-0">Customer-Enquiry UsedCar List</h6>

                                                </div>
                                                <div class="my-3">
                                                    <input type="text" id="inputsearchcustomerusedcarenquiry"
                                                        class="form-control" placeholder="Search enquiry"
                                                        onkeyup="searchCustomerUsedCarEnquiry()">
                                                </div>
                                                <nav aria-label="Page navigation example">
                                                    <ul class="pagination justify-content-end"
                                                        id="paginatecustomerusedcarenquiry">

                                                    </ul>
                                                </nav>
                                                <div class="table-responsive">
                                                    <table
                                                        class="table text-start align-middle table-bordered table-hover mb-0"
                                                        id="customerusedcarenquirytable">
                                                        <thead>
                                                            <tr class="text-dark">

                                                                <th scope="col">Brand</th>
                                                                <th scope="col">Model</th>
                                                                <th scope="col">Price</th>
                                                                <th scope="col">Status</th>
                                                                <th scope="col">Customer Name</th>
                                                                <th scope="col">Customer Phone</th>
                                                                <th scope="col">Action</th>
                                                                <th scope="col">Action</th>
                                                                <th scope="col">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="customerusedcarenquirydata">
                                                            <!-- <c:forEach items="${usedCarListOfCustomer}" var="data">
                                                                <tr>
                                                                    <td><input class="form-check-input" type="checkbox">
                                                                    </td>
                                                                    <td>${data.usedCarModelData.usedCarBrand}</td>
                                                                    <td>${data.usedCarModelData.usedCarModelName}</td>
                                                                    <td>&#8377;${data.usedCarModelData.usedCarBasePrice}
                                                                    </td>
                                                                    <td>${data.usedCarModelData.usedCarStatus}</td>
                                                                    <td>${data.interestedUser.userName}</td>
                                                                    <td>${data.interestedUser.userPhoneNumber}</td>
                                                                    <td><a href="usedCarEnquiryDetails?enquiryid=${data.inquiryId}"
                                                                            class="btn btn-outline-primary">View
                                                                            Details</a></td>
                                                                    <td><a href="usedcarenquirycloserequestadmin?enquiryid=${data.inquiryId}"
                                                                            class="btn btn-outline-danger">
                                                                            Close Enquiry</a></td>
                                                                    <td><a href="sellusedcartocustomer?enqid=${data.inquiryId}"
                                                                            class="btn btn-outline-success">
                                                                            Sell Car</a></td>
                                                                </tr>
                                                            </c:forEach> -->

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Customer-enquiry details End -->




                                        <!-- Footer Start -->
                                        <div class="container-fluid pt-4 px-4">
                                            <div class="bg-light rounded-top p-4">
                                                <div class="row">
                                                    <div class="col-12 col-sm-6 text-center text-sm-start">
                                                        &copy; <a href="#">IBC</a>, All Right Reserved.
                                                    </div>
                                                    <div class="col-12 col-sm-6 text-center text-sm-end">
                                                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                                        Designed By <a href="https://htmlcodex.com">Msquare
                                                            Technologies</a>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Footer End -->
                                </div>
                                <!-- Content End -->


                                <!-- Back to Top -->
                                <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                                        class="bi bi-arrow-up"></i></a>
                        </div>
<%}else{
    response.sendRedirect("./ibc-login.jsp");
    }%>
                        <!-- ****************************************************************usedcar-bid list-dealer*****************************************   -->
                        <!-- JS CODE FOR GETTING DEALER DATA -->
                        <script>

                            var bidListForUsedCar = [<c:forEach items="${usedCarModelCarrier}" var="bidlist" varStatus="loop">

                                {
                                    "brand":"${bidlist.usedCarModelData.usedCarBrand}",
                                "model": "${bidlist.usedCarModelData.usedCarModelName}",
                                "baseprice":"${bidlist.usedCarModelData.usedCarBasePrice}",
                                "highestbid":"${bidlist.highestBid}",
                                "usedcarid":"${bidlist.usedCarModelData.usedCarId}", 
                           
                        }${loop.last ? '' : ','}

                            </c:forEach>]



                        </script>

                        <!-- PAGINATION LOGIC -->
                        <script>
                            let currentPageBidListForUsedCar = 1;
                            let recordsPerPageBidListForUsedCar = 2;
                            let numberOfRecordsBidListForUsedCar = bidListForUsedCar.length;
                            let pagination_element_BidListForUsedCar = document.getElementById('paginatebidlistforusedcar');
                            let paginationNumberBidListForUsedCar = 1;

                            displayListForBidListUsedCar(bidListForUsedCar, recordsPerPageBidListForUsedCar, currentPageBidListForUsedCar);
                            setupPaginationForBidListUsedCar(bidListForUsedCar, pagination_element_BidListForUsedCar, recordsPerPageBidListForUsedCar);

                            function displayListForBidListUsedCar(items, recordsPerPage, page) {

                                page--;

                                let loopStart = recordsPerPage * page;
                                let loopEnd = loopStart + recordsPerPage;

                                let paginatedItems = items

                                var table = document.getElementById('bidlistusedcardata');

                                let row = ""

                                for (let i = 0; i < paginatedItems.length; i++) {

                                    row = document.createElement('tr')

                                    let td1 = document.createElement('td');
                                    td1.innerHTML = paginatedItems[i].brand;
                                    let td2 = document.createElement('td');
                                    td2.innerText = paginatedItems[i].model;
                                    let td3 = document.createElement('td');
                                    td3.innerText = paginatedItems[i].baseprice;
                                    let td4 = document.createElement('td');
                                    td4.innerText = paginatedItems[i].highestbid;
                                    let td5 = document.createElement('td');

                                    td5.innerHTML = "";
                                    let a5 = document.createElement('a');
                                    a5.href = "gettopbiddata?carid=" + paginatedItems[i].usedcarid;
                                    a5.classList.add('btn');
                                    a5.classList.add('btn-outline-primary');
                                    a5.innerText = "view details";
                                    td5.appendChild(a5);

                                    row.appendChild(td1);
                                    row.appendChild(td2);
                                    row.appendChild(td3);
                                    row.appendChild(td4);
                                    row.appendChild(td5);


                                    table.appendChild(row);

                                    if (i >= loopStart && i < loopEnd) {
                                        row.style.display = "";
                                    } else {
                                        row.style.display = "none";
                                    }
                                }

                            }

                            function setupPaginationForBidListUsedCar(items, wrapper, recordsPerPage) {
                                wrapper.innerHTML = "";
                                var table = document.getElementById('bidlistusedcardata');

                                let noOfPages = Math.ceil(items.length / recordsPerPage);

                                for (let i = 1; i < noOfPages + 1; i++) {
                                    let li = document.createElement('li');
                                    let a = document.createElement('a');


                                    li.appendChild(a);
                                    li.classList.add('page-item');
                                    a.classList.add('page-link');
                                    a.innerHTML = i;
                                    li.style.cursor = "pointer";

                                    if (i == currentPageBidListForUsedCar) {

                                        li.classList.add('active')
                                    }
                                    a.addEventListener('click', function () {

                                        table.innerHTML = ""
                                        displayListForBidListUsedCar(items, recordsPerPage, i)
                                        paginationNumberBidListForUsedCar = i;
                                        let current_li = wrapper.querySelector('li.active');

                                        current_li.classList.remove('active');

                                        li.classList.add('active');
                                    });
                                    wrapper.appendChild(li);

                                }

                            }

                        </script>
                        <!-- JS CODE FOR SEARCH BAR -->
                        <script>
                            const searchBidListUsedCar = () => {

                                let table = document.getElementById('bidlistusedcardata');
                                let filter = document.getElementById('inputsearchbidlistusedcar').value.toUpperCase();
                                let myTable = document.getElementById('bidlistusedcartable');
                                let th = myTable.getElementsByTagName('th');
                                let tr = myTable.getElementsByTagName('tr');

                                if (filter != "") {
                                    for (let i = 0; i < tr.length; i++) {

                                        for (let j = 0; j < th.length; j++) {

                                            let td = tr[i].getElementsByTagName('td')[j];


                                            if (td) {

                                                let textValue = td.textContent || td.innerHTML;
                                                if (textValue.toUpperCase().indexOf(filter) > -1) {
                                                    tr[i].style.display = "";
                                                    break;
                                                } else {
                                                    tr[i].style.display = "none";
                                                }
                                            }
                                        }
                                    }
                                } else {

                                    table.innerHTML = ""
                                    displayListForBidListUsedCar(bidListForUsedCar, recordsPerPageBidListForUsedCar, paginationNumberBidListForUsedCar);
                                }
                            }


                        </script>

                        <!-- ****************************************************************usedcar-customer-enquiry*****************************************   -->
                        <!-- JS CODE FOR GETTING DEALER DATA -->
                        <script>

                            var customerUsedCarEnquiryList = [<c:forEach items="${usedCarListOfCustomer}" var="customerusedcarenquiry" varStatus="loop">

                                {
                                "brand":"${customerusedcarenquiry.usedCarModelData.usedCarBrand}",
                                "model": "${customerusedcarenquiry.usedCarModelData.usedCarModelName}",
                                "baseprice":"${customerusedcarenquiry.usedCarModelData.usedCarBasePrice}",
                                "status":"${customerusedcarenquiry.usedCarModelData.usedCarStatus}",
                                "name":"${customerusedcarenquiry.interestedUser.userName}",
                                "phone":"${customerusedcarenquiry.interestedUser.userPhoneNumber}",
                                "enqid":"${customerusedcarenquiry.inquiryId}"
                                }${loop.last ? '' : ','}

                            </c:forEach>]



                        </script>

                        <!-- PAGINATION LOGIC -->
                        <script>
                            let currentPageCustomerUsedCarEnquiry = 1;
                            let recordsPerPageCustomerUsedCarEnquiry = 10;
                            let numberOfRecordsCustomerUsedCarEnquiry = customerUsedCarEnquiryList.length;
                            let pagination_element_CustomerUsedCarEnquiry = document.getElementById('paginatecustomerusedcarenquiry');
                            let paginationNumberCustomerUsedCarEnquiry = 1;

                            customerUsedCarEnquiryDisplayList(customerUsedCarEnquiryList, recordsPerPageCustomerUsedCarEnquiry, currentPageCustomerUsedCarEnquiry);
                            setupPaginationForCustomerUsedCarEnquiry(customerUsedCarEnquiryList, pagination_element_CustomerUsedCarEnquiry, recordsPerPageCustomerUsedCarEnquiry);

                            function customerUsedCarEnquiryDisplayList(items, recordsPerPage, page) {

                                page--;

                                let loopStart = recordsPerPage * page;
                                let loopEnd = loopStart + recordsPerPage;

                                let paginatedItems = items

                                var table = document.getElementById('customerusedcarenquirydata');

                                let row = ""

                                for (let i = 0; i < paginatedItems.length; i++) {

                                    row = document.createElement('tr')

                                    let td1 = document.createElement('td');
                                    td1.innerHTML = paginatedItems[i].brand;
                                    let td2 = document.createElement('td');
                                    td2.innerText = paginatedItems[i].model;
                                    let td3 = document.createElement('td');
                                    td3.innerText = paginatedItems[i].baseprice;
                                    let td4 = document.createElement('td');
                                    td4.innerText = paginatedItems[i].status;
                                    let td5 = document.createElement('td');
                                    td5.innerText = paginatedItems[i].name;
                                    let td6 = document.createElement('td');
                                    td6.innerText = paginatedItems[i].phone;

                                    let td7 = document.createElement('td');
                                    td7.innerHTML = "";
                                    let a7 = document.createElement('a');
                                    a7.href = "usedCarEnquiryDetails?enquiryid=" + paginatedItems[i].enqid;
                                    a7.classList.add('btn');
                                    a7.classList.add('btn-outline-primary');
                                    a7.innerText = "view details";
                                    td7.appendChild(a7);

                                    let td8 = document.createElement('td');
                                    td8.innerHTML = "";
                                    let a8 = document.createElement('a');
                                    a8.href = "usedcarenquirycloserequestadmin?enquiryid=" + paginatedItems[i].enqid;
                                    a8.classList.add('btn');
                                    a8.classList.add('btn-outline-danger');
                                    a8.innerText = "close enquiry";
                                    td8.appendChild(a8);

                                    let td9 = document.createElement('td');
                                    td9.innerHTML = "";
                                    let a9 = document.createElement('a');
                                    a9.href = "sellusedcartocustomer?enqid=" + paginatedItems[i].enqid+"&sellprice="+paginatedItems[i].baseprice;
                                    a9.classList.add('btn');
                                    a9.classList.add('btn-outline-success');
                                    a9.innerText = "sell car";
                                    td9.appendChild(a9);

                                    row.appendChild(td1);
                                    row.appendChild(td2);
                                    row.appendChild(td3);
                                    row.appendChild(td4);
                                    row.appendChild(td5);
                                    row.appendChild(td6);
                                    row.appendChild(td7);
                                    row.appendChild(td8);
                                    row.appendChild(td9);

                                    table.appendChild(row);

                                    if (i >= loopStart && i < loopEnd) {
                                        row.style.display = "";
                                    } else {
                                        row.style.display = "none";
                                    }
                                }

                            }

                            function setupPaginationForCustomerUsedCarEnquiry(items, wrapper, recordsPerPage) {
                                wrapper.innerHTML = "";
                                var table = document.getElementById('customerusedcarenquirydata');

                                let noOfPages = Math.ceil(items.length / recordsPerPage);

                                for (let i = 1; i < noOfPages + 1; i++) {
                                    let li = document.createElement('li');
                                    let a = document.createElement('a');


                                    li.appendChild(a);
                                    li.classList.add('page-item');
                                    a.classList.add('page-link');
                                    a.innerHTML = i;
                                    a.style.cursor = "pointer";

                                    if (i == currentPageCustomerUsedCarEnquiry) {

                                        li.classList.add('active')
                                    }
                                    a.addEventListener('click', function () {

                                        table.innerHTML = ""
                                        customerUsedCarEnquiryDisplayList(items, recordsPerPage, i)
                                        paginationNumberCustomerUsedCarEnquiry = i;
                                        let current_li = wrapper.querySelector('li.active');

                                        current_li.classList.remove('active');

                                        li.classList.add('active');
                                    });
                                    wrapper.appendChild(li);

                                }

                            }

                        </script>
                        <!-- JS CODE FOR SEARCH BAR -->
                        <script>
                            const searchCustomerUsedCarEnquiry = () => {

                                let table = document.getElementById('customerusedcarenquirydata');
                                let filter = document.getElementById('inputsearchcustomerusedcarenquiry').value.toUpperCase();
                                let myTable = document.getElementById('customerusedcarenquirytable');
                                let th = myTable.getElementsByTagName('th');
                                let tr = myTable.getElementsByTagName('tr');

                                if (filter != "") {
                                    for (let i = 0; i < tr.length; i++) {

                                        for (let j = 0; j < th.length; j++) {

                                            let td = tr[i].getElementsByTagName('td')[j];


                                            if (td) {

                                                let textValue = td.textContent || td.innerHTML;
                                                if (textValue.toUpperCase().indexOf(filter) > -1) {
                                                    tr[i].style.display = "";
                                                    break;
                                                } else {
                                                    tr[i].style.display = "none";
                                                }
                                            }
                                        }
                                    }
                                } else {

                                    table.innerHTML = ""
                                    customerUsedCarEnquiryDisplayList(customerUsedCarEnquiryList, recordsPerPageCustomerUsedCarEnquiry, paginationNumberCustomerUsedCarEnquiry);
                                }
                            }


                        </script>
                        <!-- JavaScript Libraries -->
                        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                        <script src="/lib/chart/chart.min.js"></script>
                        <script src="/lib/easing/easing.min.js"></script>
                        <script src="/lib/waypoints/waypoints.min.js"></script>
                        <script src="/lib/owlcarousel/owl.carousel.min.js"></script>
                        <script src="/lib/tempusdominus/js/moment.min.js"></script>
                        <script src="/lib/tempusdominus/js/moment-timezone.min.js"></script>
                        <script src="/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

                        <!-- Template Javascript -->
                        <script src="/js/main.js"></script>
                </body>

                </html>