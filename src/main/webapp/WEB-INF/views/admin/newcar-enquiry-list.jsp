<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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

                                <!-- New Car Approvals Start -->
                                <div class="container-fluid pt-4 px-4">
                                    ${success}
                                    ${error}
                                    ${msg}
                                    <div class="bg-light text-center rounded p-4">
                                        <div class="d-flex align-items-center justify-content-center mb-4">
                                            <h6 class="mb-0">New Car Enquiries</h6>
                                            
                                        </div>

                                        <div class="my-3">
                                            <input type="text" id="inputsearchenquiry" class="form-control"
                                                placeholder="Search enquiries" onkeyup="searchEnquiry()">
                                        </div>    
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination justify-content-end" id="paginate">
                                                
                                            </ul>
                                        </nav>
                                        <div class="table-responsive">
                                            <table
                                                class="table text-start align-middle table-bordered table-hover mb-0" id="enquirytable">
                                                <thead>
                                                    <tr class="text-dark">
                                                        <th scope="col">Brand</th>
                                                        <th scope="col">Model</th>
                                                        <th scope="col">Varaint</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">User Name</th>
                                                        <th scope="col">User Phone</th>
                                                        <th scope="col">User Email</th>
                                                        <th scope="col">User Address</th>
                                                        <th scope="col">Action</th>
                                                        <th scope="col">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="enquirydata">
                                                    <!-- <c:forEach items="${newCarEnquiryList}" var="enquiry">
                                                        <tr>
                                                            <td><input class="form-check-input" type="checkbox"></td>
                                                            <td>${enquiry.newCarVariantData.carModel.newCar.carBrand}
                                                            </td>
                                                            <td>${enquiry.newCarVariantData.carModel.carModelName}</td>
                                                            <td>${enquiry.newCarVariantData.carVariantName}</td>
                                                            <td>${enquiry.newCarVariantData.carPrice}</td>
                                                            <td>${enquiry.userEntity.userName}</td>
                                                            <td>${enquiry.userEntity.userPhoneNumber}</td>
                                                            <td>${enquiry.userEntity.userEmail}</td>
                                                            <td>${enquiry.userEntity.userAddress}</td>
                                                            <td>
                                                                <a href="newcarenquirycloserequestadmin?newCarEnquiryPageNum=${newCarEnquiryCurrentPage}&enqid=${enquiry.enquiryId}"
                                                                    class="btn btn-outline-danger">Close Enquiry</a>
                                                            </td>
                                                            <td>
                                                                <a href="sellnewcartouser?newCarEnquiryPageNum=${newCarEnquiryCurrentPage}&userid=${enquiry.userEntity.userId}&varid=${enquiry.newCarVariantData.carVariantId}&enqid=${enquiry.enquiryId}"
                                                                    class="btn btn-outline-success">Sell Car</a>
                                                            </td>

                                                        </tr>
                                                    </c:forEach> -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- New Car Approvals End -->
   <!-- Used Car Inspection Done Start -->

   <div class="container-fluid pt-4 px-4">
      <div class="bg-light text-center rounded p-4">
          <div class="d-flex align-items-center justify-content-center mb-4">
              <h6 class="mb-0">New Car List</h6>
                  
          </div>
          <div class="my-3">
              <input type="text" id="inputsearchnewcarlist" class="form-control"
              placeholder="Search enquiries" onkeyup="searchNewCarList()">
          </div>
          <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-end" id="paginatenewcarlist">
                  
              </ul>
          </nav>
          <div class="table-responsive">
              <table class="table text-center align-middle table-bordered table-hover mb-0" id="newcarlisttable">
                  <thead>
                      <tr class="text-dark">
                        
                          <th scope="col">Brand</th>
                          <th scope="col">Model</th>
                          <th scope="col">Variant</th>
                          <th scope="col">Price</th>
                          <th scope="col">Action</th>
                          <th scope="col">Action</th>
                      </tr>
                  </thead>
                  <tbody id="newcarlistdata">
                      <!-- <c:forEach items="${usedCarInspectionDone}" var="inspectiondonecars">
                          <tr>
                              <td><input class="form-check-input" type="checkbox"></td>
                              <td>${inspectiondonecars.usedCarBrand}</td>
                              <td>${inspectiondonecars.usedCarModelName}</td>
                              <td>${inspectiondonecars.usedCarVariant}</td>
                              <td>${inspectiondonecars.usedCarStatus}</td>
                              <td>${inspectiondonecars.userEntitySellCar.userName}</td>
                              <td>${inspectiondonecars.userEntitySellCar.userPhoneNumber}</td>
                              <td><a href="usedcardetailsadmin?usedcarid=${inspectiondonecars.usedCarId}"
                                       class="btn btn-outline-primary">View
                                      Details</a></td>
                          </tr>
                      </c:forEach> -->

                  </tbody>
              </table>
          </div>
      </div>
  </div>
  <!-- Used Car Inspection Done End -->
                        </div>
                        <!-- content ends -->
                        <!-- Back to Top -->
                        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                                class="bi bi-arrow-up"></i></a>
                </div>
                <%}else{
                    response.sendRedirect("./ibc-login.jsp");
                    }%>
<!-- ****************************************************************usedcar-updates(inspection done)*****************************************   -->
                 <!-- JS CODE FOR GETTING DEALER DATA -->
                 <script>

                    var newCarList = [<c:forEach items="${newcarlist}" var="data" varStatus="loop">
                       
                        {
                            "brand":"${data.carBrand}", 
                            "model": "${data.carModelName}",
                            "variant":"${data.carVariantName}",
                            "price":"${data.carPrice}",
                            "varid":"${data.carVariantId}", 
                           
                        }${loop.last ? '' : ','}

                    </c:forEach>]

                   console.log(newCarList);
                    
                </script>
              
                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPageNewCarList=1;
                    let recordsPerPageNewCarList=10;
                    let numberOfRecordsNewCarList=newCarList.length;
                    let pagination_element_newCarList=document.getElementById('paginatenewcarlist');
                    let paginationNumberNewCarList=1;

                    displayNewCarList(newCarList,recordsPerPageNewCarList,currentPageNewCarList);
                    setupPaginationForNewCarList(newCarList,pagination_element_newCarList,recordsPerPageNewCarList);                
                    function displayNewCarList(items,recordsPerPage,page){
                        
                        page--;
                        
                        let loopStart=recordsPerPage*page;
                        let loopEnd=loopStart+recordsPerPage;
                        
                        let paginatedItems=items
                       
                        var table=document.getElementById('newcarlistdata');
                        
                        let row=""
                        
                        for(let i=0;i<paginatedItems.length;i++){
                            
                            row=document.createElement('tr')
                           
                            let td1=document.createElement('td'); 
                            td1.innerHTML=paginatedItems[i].brand;
                            let td2=document.createElement('td'); 
                            td2.innerText=paginatedItems[i].model;
                            let td3=document.createElement('td'); 
                            td3.innerText=paginatedItems[i].variant;
                            let td4=document.createElement('td'); 
                            td4.innerText=paginatedItems[i].price;
                            
                            let td5=document.createElement('td'); 
                            td5.innerHTML="";
                            let a5=document.createElement('a');
                            a5.href="newcardetailsadmin?varid="+paginatedItems[i].varid;
                            a5.classList.add('btn');
                            a5.classList.add('btn-outline-primary');
                            a5.innerText="view details";
                            td5.appendChild(a5);

                            let td6=document.createElement('td'); 
                            td6.innerHTML="";
                            let a6=document.createElement('a');
                            a6.href="deletenewcaradmin?varid="+paginatedItems[i].varid;
                            a6.classList.add('btn');
                            a6.classList.add('btn-outline-danger');
                            a6.innerText="delete car";
                            td6.appendChild(a6);
                            
                            row.appendChild(td1);
                            row.appendChild(td2);
                            row.appendChild(td3);
                            row.appendChild(td4);
                            row.appendChild(td5);
                            row.appendChild(td6);
                            
                           
                            table.appendChild(row);
                            
                            if(i>=loopStart && i<loopEnd){
                                row.style.display="";
                            }else{
                                row.style.display="none";
                            }
                        }
                           
                    }

                    function setupPaginationForNewCarList(items,wrapper,recordsPerPage){
                        wrapper.innerHTML="";
                        var table=document.getElementById('newcarlistdata');
                      
                        let noOfPages=Math.ceil(items.length/recordsPerPage);
                     
                        for(let i=1;i<noOfPages+1;i++){
                           let li=document.createElement('li');
                           let a=document.createElement('a');
                           
                           
                           li.appendChild(a);
                           li.classList.add('page-item');
                           a.classList.add('page-link');
                           a.innerHTML=i;
                           li.style.cursor="pointer";

                           if(i==currentPageNewCarList){
                               
                                li.classList.add('active')
                           }
                           a.addEventListener('click',function(){
                                
                                table.innerHTML=""
                                displayNewCarList(items,recordsPerPage,i)
                                paginationNumberNewCarList=i;
                                let current_li=wrapper.querySelector('li.active');
                                
                                current_li.classList.remove('active');
                                
                                li.classList.add('active');
                           });
                           wrapper.appendChild(li);
                         
                        }
                        
                    }

                </script>
                <!-- JS CODE FOR SEARCH BAR -->
                <script>
                    const searchNewCarList = () => {
                        
                        let table = document.getElementById('newcarlistdata');
                        let filter = document.getElementById('inputsearchnewcarlist').value.toUpperCase();
                        let myTable = document.getElementById('newcarlisttable');
                        let th = myTable.getElementsByTagName('th');
                        let tr = myTable.getElementsByTagName('tr');

                        if(filter!=""){
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
                        }else{
                         
                            table.innerHTML=""
                            displayNewCarList(inspectionDoneUsedCarList,recordsPerPageNewCarList,paginationNumberInspectionDoneUsedCar);
                        }
                    }

                
                </script>




                 <!-- JS CODE FOR GETTING DEALER DATA -->
                 <script>

                    var list = [<c:forEach items="${newCarEnquiryList}" var="enquiry" varStatus="loop">
                       
                        {
                            "brand":"${enquiry.newCarVariantData.carModel.newCar.carBrand}", 
                            "model": "${enquiry.newCarVariantData.carModel.carModelName}",
                            "variant":"${enquiry.newCarVariantData.carVariantName}",
                            "price":"${enquiry.newCarVariantData.carPrice}",
                            "name":"${enquiry.userEntity.userName}", 
                            "phone":"${enquiry.userEntity.userPhoneNumber}", 
                            "email":"${enquiry.userEntity.userEmail}", 
                            "address":"${enquiry.userEntity.userAddress}", 
                            "userid":"${enquiry.userEntity.userId}", 
                            "enqid":"${enquiry.enquiryId}",
                            "varid":"${enquiry.newCarVariantData.carVariantId}" 

                        }${loop.last ? '' : ','}

                    </c:forEach>]

                   
                    
                </script>
                
                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPage=1;
                    let recordsPerPage=10;
                    let numberOfRecords=list.length;
                    let pagination_element=document.getElementById('paginate');
                    let paginationNumber=1;

                    displayList(list,recordsPerPage,currentPage);
                    setupPagination(list,pagination_element,recordsPerPage);
                    
                    function displayList(items,recordsPerPage,page){
                        
                        page--;
                        
                        let loopStart=recordsPerPage*page;
                        let loopEnd=loopStart+recordsPerPage;
                        
                        let paginatedItems=items
                       
                        var table=document.getElementById('enquirydata');
                        
                        let row=""
                        
                        for(let i=0;i<paginatedItems.length;i++){
                            
                            row=document.createElement('tr')
                           
                            let td1=document.createElement('td'); 
                            td1.innerHTML=paginatedItems[i].brand;
                            let td2=document.createElement('td'); 
                            td2.innerText=paginatedItems[i].model;
                            let td3=document.createElement('td'); 
                            td3.innerText=paginatedItems[i].variant;
                            let td4=document.createElement('td'); 
                            td4.innerText=paginatedItems[i].price;
                            let td5=document.createElement('td'); 
                            td5.innerText=paginatedItems[i].name;
                            let td6=document.createElement('td'); 
                            td6.innerText=paginatedItems[i].phone;
                            let td7=document.createElement('td'); 
                            td7.innerText=paginatedItems[i].email;
                            let td8=document.createElement('td'); 
                            td8.innerText=paginatedItems[i].address;

                            let td9=document.createElement('td'); 
                            td9.innerHTML="";
                            let a9=document.createElement('a');
                            a9.href="newcarenquirycloserequestadmin?enqid="+paginatedItems[i].enqid;
                            a9.classList.add('btn');
                            a9.classList.add('btn-outline-danger');
                            a9.innerText="close enquiry";
                            td9.appendChild(a9);
                            
                            let td10=document.createElement('td'); 
                            td10.innerHTML="";
                            let a10=document.createElement('a');
                            a10.href="sellnewcartouser?userid="+paginatedItems[i].userid+"&varid="+paginatedItems[i].varid+"&enqid="+paginatedItems[i].enqid;
                            a10.classList.add('btn');
                            a10.classList.add('btn-outline-success');
                            a10.innerText="sell car";
                            td10.appendChild(a10);
                            
                            row.appendChild(td1);
                            row.appendChild(td2);
                            row.appendChild(td3);
                            row.appendChild(td4);
                            row.appendChild(td5);
                            row.appendChild(td6);
                            row.appendChild(td7);
                            row.appendChild(td8);
                            row.appendChild(td9);
                            row.appendChild(td10);
                    
                            table.appendChild(row);
                            
                            if(i>=loopStart && i<loopEnd){
                                row.style.display="";
                            }else{
                                row.style.display="none";
                            }
                        }
                           
                    }

                    function setupPagination(items,wrapper,recordsPerPage){
                        wrapper.innerHTML="";
                        var table=document.getElementById('enquirydata');
                      
                        let noOfPages=Math.ceil(items.length/recordsPerPage);
                     
                        for(let i=1;i<noOfPages+1;i++){
                           let li=document.createElement('li');
                           let a=document.createElement('a');
                           
                           
                           li.appendChild(a);
                           li.classList.add('page-item');
                           a.classList.add('page-link');
                           a.innerHTML=i;
                           li.style.cursor="pointer";

                           if(i==currentPage){
                           
                                li.classList.add('active')
                           }
                           a.addEventListener('click',function(){
                                
                                table.innerHTML=""
                                displayList(items,recordsPerPage,i)
                                paginationNumber=i;
                                let current_li=document.querySelector('li.active');
                                current_li.classList.remove('active');
                                
                                li.classList.add('active');
                           });
                           wrapper.appendChild(li);
                         
                        }
                        
                    }

                </script>
                <!-- JS CODE FOR SEARCH BAR -->
                <script>
                    const searchEnquiry = () => {
                        
                        let table = document.getElementById('enquirydata');
                        let filter = document.getElementById('inputsearchenquiry').value.toUpperCase();
                        let myTable = document.getElementById('enquirytable');
                        let th = myTable.getElementsByTagName('th');
                        let tr = myTable.getElementsByTagName('tr');

                        if(filter!=""){
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
                        }else{
                         
                            table.innerHTML=""
                            displayList(list,recordsPerPage,paginationNumber);
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