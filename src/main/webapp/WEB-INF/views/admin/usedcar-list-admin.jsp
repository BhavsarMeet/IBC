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
                            

                             <!-- Used Car Inspection Done Start -->
                            ${success}
                             <div class="container-fluid pt-4 px-4">
                                <div class="bg-light text-center rounded p-4">
                                    <div class="d-flex align-items-center justify-content-center mb-4">
                                        <h6 class="mb-0">Used Car-Updates</h6>
                                            
                                    </div>
                                    <div class="my-3">
                                        <input type="text" id="inputsearchinspectiondoneusedcar" class="form-control"
                                        placeholder="Search enquiries" onkeyup="searchInspectionDoneUsedCar()">
                                    </div>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end" id="paginateinspectiondoneusedcar">
                                            
                                        </ul>
                                    </nav>
                                    <div class="table-responsive">
                                        <table class="table text-center align-middle table-bordered table-hover mb-0" id="inspectiondoneusedcartable">
                                            <thead>
                                                <tr class="text-dark">
                                                  
                                                    <th scope="col">Brand</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Variant</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">User Name</th>
                                                    <th scope="col">User Phone</th>
                                                    <th scope="col">Details</th>
                                                </tr>
                                            </thead>
                                            <tbody id="inspectiondoneusedcardata">
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

                            <!-- used car Ready for Inspection starts -->
                            <div class="container-fluid pt-4 px-4">
                                <div class="bg-light text-center rounded p-4">
                                    <div class="d-flex align-items-center justify-content-center mb-4">
                                        <h6 class="mb-0">Used Car-Ready For Inspection</h6>
                                        
                                    </div>
                                    <div class="my-3">
                                        <input type="text" id="inputsearchreadyforinspectionusedcar" class="form-control"
                                            placeholder="Search enquiries" onkeyup="searchReadyForInspectionUsedCar()">
                                    </div>
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end" id="paginatereadyforinspectionusedcar">
                                            
                                        </ul>
                                    </nav>
                                    <div class="table-responsive">
                                        <table class="table text-center align-middle table-bordered table-hover mb-0" id="readyforinspectionusedcartable">
                                            <thead>
                                                <tr class="text-dark">
                                                   
                                                    <th scope="col">Brand</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Variant</th>
                                                    <th scope="col">User Name</th>
                                                    <th scope="col">User Phone</th>
                                                    <th scope="col">Details</th>
                                                </tr>
                                            </thead>
                                            <tbody id="readyforinspectionusedcardata">
                                                <!-- <c:forEach items="${usedCarReadyForInspection}" var="cars">
                                                    <tr>
                                                        <td><input class="form-check-input" type="checkbox"></td>
                                                        <td>${cars.usedCarBrand}</td>
                                                        <td>${cars.usedCarModelName}</td>
                                                        <td>${cars.usedCarVariant}</td>
                                                        <td>${cars.userEntitySellCar.userName}</td>
                                                        <td>${cars.userEntitySellCar.userPhoneNumber}</td>
                                                        <td><a href="usedcardetailsadmin?usedcarid=${cars.usedCarId}"
                                                                class="btn btn-outline-primary">View Details</a></td>
                                                    </tr>
                                                </c:forEach> -->

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Used Car Ready for Inspection End -->


                            <!-- Used Car Under Inspection Start -->

                            <div class="container-fluid pt-4 px-4">
                                <div class="bg-light text-center rounded p-4">
                                    <div class="d-flex align-items-center justify-content-center mb-4">
                                        <h6 class="mb-0">Used Car-Under Inspection</h6>
                                       
                                    </div>
                                    <div class="my-3">
                                        <input type="text" id="inputsearchunderinspectionusedcar" class="form-control"
                                        placeholder="Search enquiries" onkeyup="searchUnderInspectionUsedCar()">
                                    </div>  
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination justify-content-end" id="paginateunderinspectionusedcar">
                                            
                                        </ul>
                                    </nav>
                                    <div class="table-responsive">
                                        <table class="table text-center align-middle table-bordered table-hover mb-0" id="underinspectionusedcartable">
                                            <thead>
                                                <tr class="text-dark">
                                                  
                                                    <th scope="col">Brand</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Variant</th>
                                                    <th scope="col">User Name</th>
                                                    <th scope="col">User Phone</th>
                                                    <th scope="col">Details</th>
                                                </tr>
                                            </thead>
                                            <tbody id="underinspectionusedcardata">
                                                <!-- <c:forEach items="${usedCarUnderInspection}" var="inspectioncars">
                                                    <tr>
                                                        <td><input class="form-check-input" type="checkbox"></td>
                                                        <td>${inspectioncars.usedCarBrand}</td>
                                                        <td>${inspectioncars.usedCarModelName}</td>
                                                        <td>${inspectioncars.usedCarVariant}</td>
                                                        <td>${inspectioncars.userEntitySellCar.userName}</td>
                                                        <td>${inspectioncars.userEntitySellCar.userPhoneNumber}</td>
                                                        <td><a href="usedcardetailsadmin?usedcarid=${inspectioncars.usedCarId}"
                                                                target="_blank" class="btn btn-outline-primary">View
                                                                Details</a></td>
                                                    </tr>
                                                </c:forEach> -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Used Car Under Inspection End -->

                           

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

                    var inspectionDoneUsedCarList = [<c:forEach items="${usedCarInspectionDone}" var="inspectiondone" varStatus="loop">
                       
                        {
                            "brand":"${inspectiondone.usedCarBrand}", 
                            "model": "${inspectiondone.usedCarModelName}",
                            "variant":"${inspectiondone.usedCarVariant}",
                            "status":"${inspectiondone.usedCarStatus}",
                            "name":"${inspectiondone.userEntitySellCar.userName}", 
                            "phone":"${inspectiondone.userEntitySellCar.userPhoneNumber}", 
                            "usedcarid":"${inspectiondone.usedCarId}"
    
                        }${loop.last ? '' : ','}

                    </c:forEach>]

                   
                    
                </script>
              
                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPageInspectionDoneUsedCar=1;
                    let recordsPerPageInspectionDoneUsedCar=10;
                    let numberOfRecordsInspectionDoneUsedCar=inspectionDoneUsedCarList.length;
                    let pagination_element_inspectionDoneUsedCar=document.getElementById('paginateinspectiondoneusedcar');
                    let paginationNumberInspectionDoneUsedCar=1;

                    displayListForInspectionDoneUsedCar(inspectionDoneUsedCarList,recordsPerPageInspectionDoneUsedCar,currentPageInspectionDoneUsedCar);
                    setupPaginationForInspectionDoneUsedCar(inspectionDoneUsedCarList,pagination_element_inspectionDoneUsedCar,recordsPerPageInspectionDoneUsedCar);
                    
                    function displayListForInspectionDoneUsedCar(items,recordsPerPage,page){
                        
                        page--;
                        
                        let loopStart=recordsPerPage*page;
                        let loopEnd=loopStart+recordsPerPage;
                        
                        let paginatedItems=items
                       
                        var table=document.getElementById('inspectiondoneusedcardata');
                        
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
                            td4.innerText=paginatedItems[i].status;
                            let td5=document.createElement('td'); 
                            td5.innerText=paginatedItems[i].name;
                            let td6=document.createElement('td'); 
                            td6.innerText=paginatedItems[i].phone;

                            
                            let td7=document.createElement('td'); 
                            td7.innerHTML="";
                            let a7=document.createElement('a');
                            a7.href="usedcardetailsadmin?usedcarid="+paginatedItems[i].usedcarid;
                            a7.classList.add('btn');
                            a7.classList.add('btn-outline-primary');
                            a7.innerText="view details";
                            td7.appendChild(a7);

                            
                            
                            row.appendChild(td1);
                            row.appendChild(td2);
                            row.appendChild(td3);
                            row.appendChild(td4);
                            row.appendChild(td5);
                            row.appendChild(td6);
                            row.appendChild(td7);
                            
                           
                            table.appendChild(row);
                            
                            if(i>=loopStart && i<loopEnd){
                                row.style.display="";
                            }else{
                                row.style.display="none";
                            }
                        }
                           
                    }

                    function setupPaginationForInspectionDoneUsedCar(items,wrapper,recordsPerPage){
                        wrapper.innerHTML="";
                        var table=document.getElementById('inspectiondoneusedcardata');
                      
                        let noOfPages=Math.ceil(items.length/recordsPerPage);
                     
                        for(let i=1;i<noOfPages+1;i++){
                           let li=document.createElement('li');
                           let a=document.createElement('a');
                           
                           
                           li.appendChild(a);
                           li.classList.add('page-item');
                           a.classList.add('page-link');
                           a.innerHTML=i;
                           li.style.cursor="pointer";

                           if(i==currentPageInspectionDoneUsedCar){
                               
                                li.classList.add('active')
                           }
                           a.addEventListener('click',function(){
                                
                                table.innerHTML=""
                                displayListForInspectionDoneUsedCar(items,recordsPerPage,i)
                                paginationNumberInspectionDoneUsedCar=i;
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
                    const searchInspectionDoneUsedCar = () => {
                        
                        let table = document.getElementById('inspectiondoneusedcardata');
                        let filter = document.getElementById('inputsearchinspectiondoneusedcar').value.toUpperCase();
                        let myTable = document.getElementById('inspectiondoneusedcartable');
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
                            displayListForInspectionDoneUsedCar(inspectionDoneUsedCarList,recordsPerPageInspectionDoneUsedCar,paginationNumberInspectionDoneUsedCar);
                        }
                    }

                
                </script>

<!-- ****************************************************************usedcar-ready for inspection*****************************************   -->
                <!-- JS CODE FOR GETTING DEALER DATA -->
                <script>

                    var readyForInspectionUsedCarList = [<c:forEach items="${usedCarReadyForInspection}" var="readyforinspection" varStatus="loop">
                       
                        {
                            "brand":"${readyforinspection.usedCarBrand}", 
                            "model": "${readyforinspection.usedCarModelName}",
                            "variant":"${readyforinspection.usedCarVariant}",
                            "name":"${readyforinspection.userEntitySellCar.userName}", 
                            "phone":"${readyforinspection.userEntitySellCar.userPhoneNumber}", 
                            "usedcarid":"${readyforinspection.usedCarId}"
    
                        }${loop.last ? '' : ','}

                    </c:forEach>]

                   
                    
                </script>
              
                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPageReadyForInspectionUsedCar=1;
                    let recordsPerPageReadyForInspectionUsedCar=10;
                    let numberOfRecordsReadyForInspectionUsedCar=readyForInspectionUsedCarList.length;
                    let pagination_element_ReadyForInspectionUsedCar=document.getElementById('paginatereadyforinspectionusedcar');
                    let paginationNumberReadyForInspectionUsedCar=1;

                   readyForInspectionUsedCardisplayList(readyForInspectionUsedCarList,recordsPerPageReadyForInspectionUsedCar,currentPageReadyForInspectionUsedCar);
                    setupPaginationForReadyForInspectionUsedCar(readyForInspectionUsedCarList,pagination_element_ReadyForInspectionUsedCar,recordsPerPageReadyForInspectionUsedCar);
                    
                    function readyForInspectionUsedCardisplayList(items,recordsPerPage,page){
                        
                        page--;
                        
                        let loopStart=recordsPerPage*page;
                        let loopEnd=loopStart+recordsPerPage;
                        
                        let paginatedItems=items
                       
                        var table=document.getElementById('readyforinspectionusedcardata');
                        
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
                            td4.innerText=paginatedItems[i].name;
                            let td5=document.createElement('td'); 
                            td5.innerText=paginatedItems[i].phone;
                            
                            let td6=document.createElement('td'); 
                            td6.innerHTML="";
                            let a6=document.createElement('a');
                            a6.href="usedcardetailsadmin?usedcarid="+paginatedItems[i].usedcarid;
                            a6.classList.add('btn');
                            a6.classList.add('btn-outline-primary');
                            a6.innerText="view details";
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

                    function setupPaginationForReadyForInspectionUsedCar(items,wrapper,recordsPerPage){
                        wrapper.innerHTML="";
                        var table=document.getElementById('readyforinspectionusedcardata');
                      
                        let noOfPages=Math.ceil(items.length/recordsPerPage);
                     
                        for(let i=1;i<noOfPages+1;i++){
                           let li=document.createElement('li');
                           let a=document.createElement('a');
                           
                           
                           li.appendChild(a);
                           li.classList.add('page-item');
                           a.classList.add('page-link');
                           a.innerHTML=i;
                           a.style.cursor="pointer";

                           if(i==currentPageReadyForInspectionUsedCar){
                           
                                li.classList.add('active')
                           }
                           a.addEventListener('click',function(){
                                
                                table.innerHTML=""
                                readyForInspectionUsedCardisplayList(items,recordsPerPage,i)
                                paginationNumberReadyForInspectionUsedCar=i;
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
                    const searchReadyForInspectionUsedCar = () => {
                        
                        let table = document.getElementById('readyforinspectionusedcardata');
                        let filter = document.getElementById('inputsearchreadyforinspectionusedcar').value.toUpperCase();
                        let myTable = document.getElementById('readyforinspectionusedcartable');
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
                            readyForInspectionUsedCardisplayList(readyForInspectionUsedCarList,recordsPerPageReadyForInspectionUsedCar,paginationNumberReadyForInspectionUsedCar);
                        }
                    }

                
                </script>
<!-- ****************************************************************usedcar-under inspection*****************************************   -->
                <!-- JS CODE FOR GETTING DEALER DATA -->
                <script>

                    var underInspectionUsedCarList = [<c:forEach items="${usedCarUnderInspection}" var="underinspection" varStatus="loop">
                       
                        {
                            "brand":"${underinspection.usedCarBrand}", 
                            "model": "${underinspection.usedCarModelName}",
                            "variant":"${underinspection.usedCarVariant}",
                            "name":"${underinspection.userEntitySellCar.userName}", 
                            "phone":"${underinspection.userEntitySellCar.userPhoneNumber}", 
                            "usedcarid":"${underinspection.usedCarId}"
    
                        }${loop.last ? '' : ','}

                    </c:forEach>]

                   
                    
                </script>
              
                <!-- PAGINATION LOGIC -->
                <script>
                    let currentPageUnderInspectionUsedCar=1;
                    let recordsPerPageUnderInspectionUsedCar=10;
                    let numberOfUnderInspectionUsedCar=underInspectionUsedCarList.length;
                    let pagination_element_UnderInspectionUsedCar=document.getElementById('paginateunderinspectionusedcar');
                    let paginationNumberUnderInspectionUsedCar=1;

                   underInspectionUsedCardisplayList(underInspectionUsedCarList,recordsPerPageUnderInspectionUsedCar,currentPageUnderInspectionUsedCar);
                   setupPaginationForUnderInspectionUsedCar(underInspectionUsedCarList,pagination_element_UnderInspectionUsedCar,recordsPerPageUnderInspectionUsedCar);
                    
                    function underInspectionUsedCardisplayList(items,recordsPerPage,page){
                        
                        page--;
                        
                        let loopStart=recordsPerPage*page;
                        let loopEnd=loopStart+recordsPerPage;
                        
                        let paginatedItems=items
                       
                        var table=document.getElementById('underinspectionusedcardata');
                        
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
                            td4.innerText=paginatedItems[i].name;
                            let td5=document.createElement('td'); 
                            td5.innerText=paginatedItems[i].phone;
                            
                            let td6=document.createElement('td'); 
                            td6.innerHTML="";
                            let a6=document.createElement('a');
                            a6.href="usedcardetailsadmin?usedcarid="+paginatedItems[i].usedcarid;
                            a6.classList.add('btn');
                            a6.classList.add('btn-outline-primary');
                            a6.innerText="view details";
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

                    function setupPaginationForUnderInspectionUsedCar(items,wrapper,recordsPerPage){
                        wrapper.innerHTML="";
                        var table=document.getElementById('underinspectionusedcardata');
                      
                        let noOfPages=Math.ceil(items.length/recordsPerPage);
                     
                        for(let i=1;i<noOfPages+1;i++){
                           let li=document.createElement('li');
                           let a=document.createElement('a');
                           
                           
                           li.appendChild(a);
                           li.classList.add('page-item');
                           a.classList.add('page-link');
                           a.innerHTML=i;
                           a.style.cursor="pointer";

                           if(i==currentPageReadyForInspectionUsedCar){
                           
                                li.classList.add('active')
                           }
                           a.addEventListener('click',function(){
                                
                                table.innerHTML=""
                                underInspectionUsedCardisplayList(items,recordsPerPage,i)
                                paginationNumberUnderInspectionUsedCar=i;
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
                    const searchUnderInspectionUsedCar = () => {
                        
                        let table = document.getElementById('underinspectionusedcardata');
                        let filter = document.getElementById('inputsearchunderinspectionusedcar').value.toUpperCase();
                        let myTable = document.getElementById('underinspectionusedcartable');
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
                            underInspectionUsedCardisplayList(underInspectionUsedCarList,recordsPerPageUnderInspectionUsedCar,paginationNumberUnderInspectionUsedCar);
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