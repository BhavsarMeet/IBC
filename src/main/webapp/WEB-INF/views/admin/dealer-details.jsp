<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page import="com.model.admin.AdminModel" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>DASHMIN - Bootstrap Admin Template</title>
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
                        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
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

                                ${msg}
                                <!-- Form Start -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="row g-4">
                                        <div class="bg-light rounded h-100 p-4">
                                            <h6 class="mb-4 text-center">Add IBC Dealer</h6>
                                            <form action="../sendotp" method="post">
                                                <input type="hidden" name="type" value="dealer">
                                                <div class="row mb-3">
                                                    <label for="inputPassword3" class="col-sm-2 col-form-label">Enter
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="email" placeholder="Enter dealer email"
                                                            class="form-control" id="inputPassword3" required>
                                                    </div>
                                                </div>
                                                
                                                    <button type="submit" class="btn btn-primary">Send OTP</button>
                                           
                                            </form>

                                        </div>
                                    </div>
                                </div>


                                <!-- Form End -->

                                <!-- Employee List Start -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light text-center rounded p-4">
                                        <div class="d-flex align-items-center justify-content-center mb-4">
                                            <h6 class="mb-0">IBC Dealer List</h6>

                                        </div>
                                        <div class="my-3">
                                            <input type="text" id="inputsearchdealer" class="form-control"
                                                placeholder="Search dealer" onkeyup="searchDealers()">
                                        </div>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-end" id="paginate">

                                            </ul>
                                        </nav>

                                        <div class="table-responsive">
                                            <table class="table text-start align-middle table-bordered table-hover mb-0"
                                                id="dealertable">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col">Name</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Phone</th>
                                                        <th scope="col">Address</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="dealerdata">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Used Car Approvals End -->
                                <div class="container-fluid pt-4 px-4">
                                    <div class="bg-light rounded-top p-4">
                                        <div class="row">
                                            <div class="col-12 col-sm-6 text-center text-sm-start">
                                                © <a href="#">Your Site Name</a>, All Right Reserved.
                                            </div>
                                            <div class="col-12 col-sm-6 text-center text-sm-end">
                                                <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                                                Designed By <a href="https://htmlcodex.com">Msquare Technologies</a>
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

               
                <!-- JS CODE FOR GETTING DEALER DATA -->
                <script>

                    var list = [<c:forEach items="${dealers}" var="dealer" varStatus="loop">

                        {"name":"${dealer.dealerName}", "email": "${dealer.dealerEmail}","phone":"${dealer.dealerPhone}","address":"${dealer.dealerAddress}" }${loop.last ? '' : ','}

                    </c:forEach>]

                    // buildTable(list);
                    // POPULATING JS DATA INTO HTML TABLE 
                    function buildTable(data) {
                        var table = document.getElementById('dealerdata');
                        var row = ""
                        for (let i = 0; i < data.length; i++) {

                            row += "<tr>"
                            row += "<td>" + data[i].name + "</td>"
                            row += "<td>" + data[i].email + "</td>"
                            row += "<td>" + data[i].phone + "</td>"
                            row += "<td>" + data[i].address + "</td>"
                            row += "</tr>"
                        }
                        table.innerHTML = row;
                    }

                </script>

                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPage = 1;
                    let recordsPerPage = 10;
                    let numberOfRecords = list.length;
                    let pagination_element = document.getElementById('paginate');
                    let paginationNumber = 1;

                    displayList(list, recordsPerPage, currentPage);
                    setupPagination(list, pagination_element, recordsPerPage);

                    function displayList(items, recordsPerPage, page) {

                        page--;

                        let loopStart = recordsPerPage * page;
                        let loopEnd = loopStart + recordsPerPage;

                        let paginatedItems = items

                        var table = document.getElementById('dealerdata');

                        let row = ""

                        for (let i = 0; i < paginatedItems.length; i++) {

                            row = document.createElement('tr')

                            let td1 = document.createElement('td');
                            td1.innerHTML = paginatedItems[i].name;
                            let td2 = document.createElement('td');
                            td2.innerText = paginatedItems[i].email;
                            let td3 = document.createElement('td');
                            td3.innerText = paginatedItems[i].phone;
                            let td4 = document.createElement('td');
                            td4.innerText = paginatedItems[i].address;

                            row.appendChild(td1);
                            row.appendChild(td2);
                            row.appendChild(td3);
                            row.appendChild(td4);

                            table.appendChild(row);

                            if (i >= loopStart && i < loopEnd) {
                                row.style.display = "";
                            } else {
                                row.style.display = "none";
                            }
                        }

                    }

                    function setupPagination(items, wrapper, recordsPerPage) {
                        wrapper.innerHTML = "";
                        var table = document.getElementById('dealerdata');

                        let noOfPages = Math.ceil(items.length / recordsPerPage);

                        for (let i = 1; i < noOfPages + 1; i++) {
                            let li = document.createElement('li');
                            let a = document.createElement('a');


                            li.appendChild(a);
                            li.classList.add('page-item');
                            a.classList.add('page-link');
                            a.innerHTML = i;
                            li.style.cursor = "pointer";

                            if (i == currentPage) {
                                li.classList.add('active')
                            }
                            a.addEventListener('click', function () {

                                table.innerHTML = ""
                                displayList(items, recordsPerPage, i)
                                paginationNumber = i;
                                let current_li = document.querySelector('li.active');
                                current_li.classList.remove('active');

                                li.classList.add('active');
                            });
                            wrapper.appendChild(li);

                        }

                    }

                </script>
                <!-- JS CODE FOR SEARCH BAR -->
                <script>
                    const searchDealers = () => {

                        let table = document.getElementById('dealerdata');
                        let filter = document.getElementById('inputsearchdealer').value.toUpperCase();
                        let myTable = document.getElementById('dealertable');
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
                            displayList(list, recordsPerPage, paginationNumber);
                        }
                    }


                </script>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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