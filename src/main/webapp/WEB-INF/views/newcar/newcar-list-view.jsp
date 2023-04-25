<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" session="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html dir="ltr" lang="en">

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-list-v6.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:48 GMT -->

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="keywords"
                    content="auto, car, car dealer, car dealership, car listing, cars, classified, dealership, directory, listing, modern, motors, responsive">
                <meta name="description" content="Voiture - Automotive & Car Dealer HTML Template">
                <meta name="CreativeLayers" content="ATFN">
                <!-- css file -->
                <link rel="stylesheet" href="css-ibc/bootstrap.min.css">
                <link rel="stylesheet" href="css-ibc/style.css">
                <!-- Responsive stylesheet -->
                <link rel="stylesheet" href="css-ibc/responsive.css">
                <!-- Font Awesome Live URL -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

                <title>IBCCARZ - An Automotive Company</title>
                <!-- Favicon -->
                <link href="images-ibc/favicon.ico" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
                <link href="images-ibc/favicon.ico" sizes="128x128" rel="shortcut icon" />

                <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
                <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
            </head>

            <body>
                <div class="wrapper">
                    <div class="preloader"></div>

                    <!-- WEBSITE HEADER -->
                    <%@ include file="../common/header-website.jsp" %>

                        <!-- MOBILE HEADER  -->
                        <%@ include file="../common/header-mobile.jsp" %>

                            <!-- Inner Page Breadcrumb  -->
                             <section class="inner_page_breadcrumb">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="breadcrumb_content">
                                                <h2 class="breadcrumb_title">New Cars For Sale</h2>
                                                
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <!-- Listing Grid View -->
                            <section class="our-listing bgc-white pb30-991 inner_page_section_spacing">
                                <div class="container">

                                    <!-- FILTER MOBILE STARTS -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="listing_sidebar">
                                                <div class="sidebar_content_details style3">
                                                    <!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> -->

                                                    <div class="sidebar_listing_list style2 mobile_sytle_sidebar mb0">
                                                        <div class="siderbar_widget_header">
                                                            <h4 class="title mb0">Search Filters<a
                                                                    class="filter_closed_btn float-end" href="#"><span
                                                                        class="fas fa-times"></span></a></h4>
                                                        </div>
                                                        <div class="sidebar_advanced_search_widget">
                                                            <ul class="sasw_list mb0">
                                                                <li class="search_area">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter Keyword">
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option>Condition</option>
                                                                                    <option>Most Recent</option>
                                                                                    <option>Recent</option>
                                                                                    <option>Best Selling</option>
                                                                                    <option>Old Review</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option>Select Makes</option>
                                                                                    <option>Audi</option>
                                                                                    <option>Bentley</option>
                                                                                    <option>BMW</option>
                                                                                    <option>Ford</option>
                                                                                    <option>Honda</option>
                                                                                    <option>Mercedes</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option>Select Models</option>
                                                                                    <option>A3 Sportback</option>
                                                                                    <option>A4</option>
                                                                                    <option>A6</option>
                                                                                    <option>Q5</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option>Select Type</option>
                                                                                    <option>Convertible</option>
                                                                                    <option>Coupe</option>
                                                                                    <option>Hatchback</option>
                                                                                    <option>Sedan</option>
                                                                                    <option>SUV</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option>Year</option>
                                                                                    <option>1967</option>
                                                                                    <option>1990</option>
                                                                                    <option>2000</option>
                                                                                    <option>2002</option>
                                                                                    <option>2005</option>
                                                                                    <option>2010</option>
                                                                                    <option>2015</option>
                                                                                    <option>2020</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="sidebar_priceing_slider_mobile">
                                                                        <div class="wrapper">
                                                                            <h5 class="subtitle">Filter by price</h5>
                                                                            <div class="mt20 ml10" id="slider"></div>
                                                                            <span id="slider-range-value1"></span>
                                                                            <span id="slider-range-value2"></span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Fuel Type</h5>
                                                                    <div class="ui_kit_checkbox">
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckPetrolSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckPetrolSbp">Petrol
                                                                                (676)</label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDieselSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckDieselSbp">Diesel
                                                                                (9,784)</label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckElectricSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckElectricSbp">Electric
                                                                                (6.584)</label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckHybridSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckHybridSbp">Hyrbid
                                                                                (97)</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Transmission</h5>
                                                                    <div class="ui_kit_checkbox">
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckAutometicSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckAutometicSbp">Automatic
                                                                                (6,676)</label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckManualSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckManualSbp">Manual
                                                                                (9,784)</label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckManualSbp">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckManualSbp">Manual
                                                                                (9,784)</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Features</h5>
                                                                    <div class="sidebar_feature_checkbox">
                                                                        <div class="wrapper">
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefaultSbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefaultSbp">Adaptive
                                                                                    Cruise
                                                                                    Control
                                                                                    (6,676)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault1Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault1Sbp">Cooled
                                                                                    Seats
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault2Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault2Sbp">Keyless
                                                                                    Start
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault3Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault3Sbp">Navigation
                                                                                    System
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault4Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault4Sbp">Remote
                                                                                    Start
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault5Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault5Sbp">Cooled
                                                                                    Seats
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check mb15">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault6Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault6Sbp">Keyless
                                                                                    Start
                                                                                    (9,784)</label>
                                                                            </div>
                                                                            <div class="form-check">
                                                                                <input class="form-check-input"
                                                                                    type="checkbox" value=""
                                                                                    id="flexCheckDefault7Sbp">
                                                                                <label class="form-check-label"
                                                                                    for="flexCheckDefault7Sbp">Navigation
                                                                                    System
                                                                                    (9,784)</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_button">
                                                                        <button type="submit"
                                                                            class="btn btn-block btn-thm"><span
                                                                                class="flaticon-magnifiying-glass mr10"></span>
                                                                            Search</button>
                                                                    </div>
                                                                </li>
                                                                <li class="text-center"><a class="reset-filter"
                                                                        href="#">Reset
                                                                        Filter</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Filter MOBILE End -->

                                      <!-- Filter For  Starts -->
                                      <div class="row">
                                        <div class="col-lg-4 col-xl-3 dn-md">
                                            <div class="sidebar_widgets">
                                                <div class="sidebar_widgets_wrapper">
                                                    <div class="sidebar_advanced_search_widget">
                                                        <h4 class="title text-center">Filter</h4>
                                                        <ul class="sasw_list mb0">
                                                            <form action="newcarlist" id="myform">
                                                                <!-- <li class="search_area">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="Enter Keyword">
                                                                    </div>
                                                                </li> -->
                                                                <li>
                                                                    <h5 class="subtitle">Budget in Lacs</h5>
                                                                </li>
                                                                <li>
                                                                <div class="form-group">
                                                                    <button type="submit" class="form-control btn btn-sm btn-outline-info" id="gobutton">Go</button>
                                                                </div>
                                                                </li>
                                                                <li class="min_area list-inline-item">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="0L" id="lowbudget" onkeyup="checkBudget()" name="lowBudget" value="${filter.lowBudget}">
                                                                    </div>
                                                                </li>
                                                                <li class="max_area list-inline-item">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="0L" id="highbudget" onkeyup="checkBudget()" name="highBudget" value="${filter.highBudget}">
                                                                    </div>
                                                                </li>
                                                                        
                                                                <li>
                                                                    <h5 class="subtitle">Make</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">

                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98"  name="filteredMakeList"  onchange="submitData()" multiple>
                                                                                    
                                                                                    <c:forEach items="${filter.fullMakeList}" var="brand">
                                                                                        <option  id="${brand.carId}" value="${brand.carId}">${brand.carBrand}</option>
                                                                                    </c:forEach>
                                                                                </select>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Model</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98" multiple onchange="submitData()" name="filteredModelList" >
                                                                                    <c:forEach items="${filter.fullModelList}" var="model">
                                                                                        <option id="${model.carModelId}" value="${model.carModelId}">${model.carModelName}</option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Body Type</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select name="bodyType" class="selectpicker w100 show-tick" tabindex="-98" multiple onchange="submitData()">
                                                                                    
                                                                                    <option id="SUV" value="SUV">SUV</option>
                                                                                    <option id="Sedan" value="Sedan">Sedan</option>
                                                                                    <option id="Hatchback" value="Hatchback">Hatchback</option>
                                                                                    <option id="Compact SUV" value="Compact SUV">Compact SUV</option>
                                                                                    <option id="Compact Sedan" value="Compact Sedan">Compact Sedan</option>
                                                                                    <option id="MUV" value="MUV">MUV</option>
                                                                                    <option id="Convertible" value="Convertible">Convertible</option>
                                                                                    <option id="Coupe" value="Coupe">Coupe</option>
                                                                                    <option id="Station Wagon" value="Station Wagon">Station Wagon</option>
                                                                                    <option id="Sports Car" value="Sports Car">Sports Car</option>
                                                                                    <option id="Minivan" value="Minivan">Minivan</option>
                                                                                    <option id="Truck" value="Truck">Truck</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                             
                                                                <li>
                                                                    <h5 class="subtitle">Mileage</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <input type="hidden" name="lowMileage"  id="lowmileage" value="${filter.lowMileage}">
                                                                            <input type="hidden" name="highMileage"  id="highmileage" value="${filter.highMileage}">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select onchange="setKmplData()" id="kmpl-range" class="selectpicker w100 show-tick" tabindex="-98" >
                                                                                    <option id="ns" value="nothing selected">Nothing Selected</option>
                                                                                    <option id="1-kmpl" value="1">Upto 10 kmpl</option>
                                                                                    <option id="2-kmpl" value="2">10 kmpl - 15 kmpl</option>
                                                                                    <option id="3-kmpl" value="3">15 kmpl - 20 kmpl</option>
                                                                                    <option id="4-kmpl" value="4">Above 20 kmpl</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Engine Capacity</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <input type="hidden" name="lowEngineCapacity"  id="lowengine" value="${filter.lowEngineCapacity}">
                                                                            <input type="hidden" name="highEngineCapacity"  id="highengine" value="${filter.highEngineCapacity}">
                                                                           <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select onchange="setEngineData()" id="engine-range" class="selectpicker w100 show-tick" tabindex="-98">
                                                                                    <option id="ns" value="nothing selected">Nothing Selected</option>
                                                                                    <option id="1-enginerange" value="1">Upto 800CC</option>
                                                                                    <option id="2-enginerange" value="2">800CC to 1000CC</option>
                                                                                    <option id="3-enginerange" value="3">1000CC to 1200CC</option>
                                                                                    <option id="4-enginerange" value="4">1200CC to 1500CC</option>
                                                                                    <option id="5-enginerange" value="5">1500CC to 2000CC</option>
                                                                                    <option id="6-enginerange" value="6">2000CC to 3000CC</option>
                                                                                    <option id="7-enginerange" value="7">3000CC to 4000CC</option>
                                                                                    <option id="8-enginerange" value="8">Above 4000CC</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Seating Capacity</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select onchange="submitData()" name="seatingCapacity" multiple class="selectpicker w100 show-tick" tabindex="-98">
                                                                                    <option id="5-seater" value="5">5 Seater</option>
                                                                                    <option id="6-seater" value="6">6 Seater</option>
                                                                                    <option id="7-seater" value="7">7 Seater</option>
                                                                                    <option id="8-seater" value="8+">8 Seater & Above</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <h5 class="subtitle">Fuel Type</h5>

                                                                    <div class="ui_kit_checkbox">
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                id="petrol" value="Petrol"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckPetrol">Petrol
                                                                                </label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="Diesel" id="diesel"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckDiesel">Diesel
                                                                                </label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="CNG" id="cng"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckDiesel">CNG
                                                                                </label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="Electric" id="electric"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckElectric">Electric
                                                                                </label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Transmission</h5>
                                                                    <div class="ui_kit_checkbox">
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox"
                                                                                name="transmissionType"
                                                                                value="Automatic" id="automatic"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckAutometic">Automatic
                                                                                </label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox"
                                                                                name="transmissionType"
                                                                                value="Manual" id="manual"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckManual">Manual
                                                                                </label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox"
                                                                                name="transmissionType"
                                                                                value="Hybrid" id="hybrid"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckManual">Hybrid
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                               
                                                              
                                                                <!-- <li>
                                                                    <div class="search_option_button">
                                                                        <button type="submit"
                                                                            class="btn btn-block btn-thm"><span
                                                                                class="flaticon-magnifiying-glass mr10"></span>
                                                                            Search</button>
                                                                    </div>
                                                                </li> -->
                                                                <!-- <li class="text-center"><a class="reset-filter"
                                                                        href="#">Reset
                                                                        Filter</a></li> -->
                                                            </form>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Filter For  Ends -->

                                        <div class="col-lg-8 col-xl-9">
                                            <div class="row">
                                                <div class="listing_filter_row db-lg">
                                                    <div class="col-xl-5">
                                                        <div
                                                            class="page_control_shorting left_area tac-lg mb30-767 mt15">
                                                            <p>We found <span class="heading-color fw600">${size}</span>
                                                                Cars available
                                                                for you</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-7">
                                                        <div class="page_control_shorting right_area text-end tac-lg">
                                                            <ul>
                                                                <li class="list-inline-item mb10-400"> <a id="open2"
                                                                        class="filter_open_btn style2 dn db-md"
                                                                        href="#"><img class="mr10"
                                                                            src="images-ibc/icon/filter-icon.svg"
                                                                            alt="filter-icon.svg">
                                                                        Filters</a> </li>
                                                                <!-- <li class="list-inline-item short_by_text listone">Sort
                                                                    by:</li>
                                                                <li class="list-inline-item listwo">
                                                                    <select class="selectpicker show-tick">
                                                                        <option>Date: newest First</option>
                                                                        <option>Most Recent</option>
                                                                        <option>Recent</option>
                                                                        <option>Best Selling</option>
                                                                        <option>Old Review</option>
                                                                    </select>
                                                                </li>
                                                                <li class="list-inline-item list-gird"><a href="#"><img
                                                                            src="images-ibc/icon/list-grid.svg"
                                                                            alt="list-grid.svg"></a></li>
                                                                <li class="list-inline-item list-list"><a href="#"><img
                                                                            src="images-ibc/icon/list-list.svg"
                                                                            alt="list-list.svg"></a></li> -->
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Car Listing Starts -->
                                            <div class="row">
                                                <c:forEach items="${carlist}" var="cars">
                                                    <div class="col-sm-6 col-xl-4">
                                                        <div class="car-listing">
                                                            <div class="thumb">
                                                                <div class="tag">NEW</div>
                                                                <img src="pictures\newcar${cars.imageFrontView}"
                                                                onerror="this.src='images-ibc/no-image.png';" height="125%" width="100%" alt="No image found">
                                                                <div class="thmb_cntnt3">
                                                                    <ul class="mb0">
                                                                        <%if(userData!=null || dealerData!=null){%>
                                                                            <li class="list-inline-item"><a
                                                                                    href="newcardetails?vid=${cars.carVariantId}"
                                                                                    class="btn btn-outline-primary btn-sm">Details</a>
                                                                            </li>
                                                                            <%}else{%>
                                                                                <li class="list-inline-item"><a href=""
                                                                                        data-bs-toggle="modal"
                                                                                        data-bs-target="#detailslogin"
                                                                                        class="btn btn-outline-primary btn-sm">Details</a>
                                                                                </li>
                                                                                <%}%>
                                                                    </ul>
                                                                </div>

                                                            </div>
                                                            <div class="details">
                                                                <div class="wrapper">

                                                                    <h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
                                                                    <%if(userData!=null || dealerData!=null){%>
                                                                    <h6 class="title"><a
                                                                            href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
                                                                            <span>${cars.carModelName}</span><span> -
                                                                                ${cars.carManufacturingYear}</span></a>
                                                                    </h6>
                                                                    <%}else{%>
                                                                        <h6 class="title"><a
                                                                            href="" data-bs-toggle="modal"
                                                                            data-bs-target="#detailslogin"><span>${cars.carBrand}</span>
                                                                            <span>${cars.carModelName}</span><span> -
                                                                                ${cars.carManufacturingYear}</span></a>
                                                                        </h6>
                                                                        <%}%>
                                                                </div>
                                                                <div class="listing_footer">
                                                                    <ul class="mb0">
                                                                        <li class="list-inline-item"><span
                                                                                class="flaticon-road-perspective me-2"></span>${cars.carMileage} Kmpl</a>
                                                                        </li>
                                                                        <li class="list-inline-item"><span
                                                                                class="flaticon-gas-station me-2"></span>${cars.carFuelType}</a>
                                                                        </li>
                                                                        <li class="list-inline-item"><span
                                                                                class="me-2"><i class="fas fa-car"></i></span>${cars.carBodyType}</a>
                                                                        </li>
                                                                        <li class="list-inline-item"><span
                                                                            class="flaticon-gear me-2"></span>${cars.carTransmissionType}</a>
                                                                    </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <!-- Modal Start-->
                                                <div class="sign_up_modal modal fade" id="detailslogin"
                                                data-backdrop="static" data-keyboard="false" tabindex="-1"
                                                aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body container p60">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <ul class="sign_up_tab nav nav-tabs" id="myTab"
                                                                        role="tablist">
                                                                        <li class="nav-item">
                                                                            <a class="nav-link active" id="login-tab"
                                                                                data-bs-toggle="tab" href="#login"
                                                                                role="tab" aria-controls="login"
                                                                                aria-selected="true">Login</a>
                                                                        </li>
                                                                        <li class="nav-item">
                                                                            <a class="nav-link" id="register-tab"
                                                                                data-bs-toggle="tab" href="#register"
                                                                                role="tab" aria-controls="register"
                                                                                aria-selected="false">Register</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="tab-content container p0" id="myTabContent">
                                                                <div class="row mt30 tab-pane fade show active"
                                                                    id="login" role="tabpanel"
                                                                    aria-labelledby="login-tab">
                                                                    <div class="col-lg-12">
                                                                        <div class="login_form">
                                                                            <!-- <p>New to Cars.com? <a
                                                                                    href="page-register.html">Sign
                                                                                    up.</a> Are you a dealer?</p> -->
                                                                            <form action="userdealerlogin"
                                                                                method="post">
                                                                                <input type="hidden" name="val"
                                                                                    value="newcaruser">
                                                                                <input type="hidden" name="varid"
                                                                                    value="${cars.carVariantId}">
                                                                                <div class="mb-2 mr-sm-2">
                                                                                    <label
                                                                                        class="form-label">Username
                                                                                        or email address *</label>
                                                                                    <input type="email" name="email"
                                                                                        class="form-control">
                                                                                </div>
                                                                                <div class="form-group mb5">
                                                                                    <label
                                                                                        class="form-label">Password
                                                                                        *</label>
                                                                                    <input type="password"
                                                                                        name="password"
                                                                                        class="form-control">
                                                                                </div>
                                                                                <div
                                                                                    class="custom-control custom-checkbox">
                                                                                    <input type="checkbox"
                                                                                        class="custom-control-input"
                                                                                        id="exampleCheck3">
                                                                                    <label
                                                                                        class="custom-control-label"
                                                                                        for="exampleCheck3">Remember
                                                                                        me</label>
                                                                                    <a class="btn-fpswd float-end"
                                                                                        href="#">Lost your
                                                                                        password?</a>
                                                                                </div>
                                                                                <button type="submit"
                                                                                    class="btn btn-log btn-thm mt5">Sign
                                                                                    in</button>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row mt30 tab-pane fade" id="register"
                                                                    role="tabpanel" aria-labelledby="register-tab">
                                                                    <div class="col-lg-12">
                                                                        <div class="sign_up_form">
                                                                            <p>By registering your user account will be created.</p>
                                                                            <form action="sendotptouser"
                                                                                method="post">
                                                                                <input type="hidden" name="val"
                                                                                    value="newcaruser">
                                                                                <input type="hidden" name="varid"
                                                                                    value="${cars.carVariantId}">
                                                                                <div class="row">
                                                                                    <div class="col-lg-6">
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                class="form-label">Name</label>
                                                                                            <input type="text"
                                                                                                name="userName"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-6">
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                class="form-label">City</label>
                                                                                            <input type="text"
                                                                                                name="userAddress"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-12">
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                class="form-label">Phone</label>
                                                                                            <input type="text"
                                                                                                name="userPhoneNumber"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-12">
                                                                                        <div class="form-group">
                                                                                            <label
                                                                                                class="form-label">Email</label>
                                                                                            <input type="email"
                                                                                                name="userEmail"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-lg-12">
                                                                                        <div
                                                                                            class="form-group mb20">
                                                                                            <label
                                                                                                class="form-label">Password</label>
                                                                                            <input type="password"
                                                                                                name="userPassword"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div>
                                                                                    <!-- <div class="col-lg-6">
                                                                                        <div
                                                                                            class="form-group mb20">
                                                                                            <label
                                                                                                class="form-label">Confirm
                                                                                                Password</label>
                                                                                            <input type="password"
                                                                                                class="form-control">
                                                                                        </div>
                                                                                    </div> -->
                                                                                </div>
                                                                                <button type="submit"
                                                                                    class="btn btn-signup btn-thm mb0">Sign
                                                                                    Up</button>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal End-->
                                                </c:forEach>

                                               

                                            </div>
                                            <!-- Car Listing Ends -->

                                        </div>
                                    </div>
                                </div>
                            </section>

                            <!-- Our Footer -->
                  <section class="footer_one pt50 pb25">
                    <div class="container">
                      <div class="row">
                        <div class="col-md-4 col-xl-7">
                          <div class="footer_about_widget text-start">
                            <div class="logo mb40 mb0-sm"><img src="images-ibc/logo.png"   alt="header-logo.png">
                            </div>
                          </div>
                        </div>
                        <div class="col-md-8 col-xl-5">
                          <div class="footer_menu_widget text-start text-md-end mt15">
                            <ul>
                              <!-- <li class="list-inline-item"><a href="#">Home</a></li>
                              <li class="list-inline-item"><a href="#">Explore</a></li>
                              <li class="list-inline-item"><a href="#">Listings</a></li>
                              <li class="list-inline-item"><a href="#">Blog</a></li>
                              <li class="list-inline-item"><a href="#">Shop</a></li>
                              <li class="list-inline-item"><a href="#">Pages</a></li> -->
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <hr>
                    <div class="container pt80 pt20-sm pb70 pb0-sm">
                      <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_about_widget">
                            <h5 class="title">OFFICE</h5>
                            <p>India<br>3,Satkar Avenue,<br>Near Naroda Railway,<br>Nana Chiloda Ahmedabad-382330</p>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">NEED HELP</h5>
                            <a href="tel:+91 7622893333"><div class="footer_phone">+91 7622893333</div></a>
                            <a href="mailto:info@ibccarz.com"><p>info@ibccarz.com</p></a>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">OPENING HOURS</h5>
                            <p>Monday - Friday: 09:00AM - 09:00PM<br>Saturday: 09:00AM - 07:00PM<br>Sunday: Closed</p>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">
                          <div class="footer_contact_widget">
                            <h5 class="title">KEEP IN TOUCH</h5>
                            <form class="footer_mailchimp_form" action="contactus">
                              <div class="wrapper">
                                <div class="col-auto">
                                  <input type="email" name="email" class="form-control" placeholder="Enter your email...">
                                  <button type="submit">GO</button>
                                </div>
                              </div>
                            </form>
                            <p>Get latest updates and offers.</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6 col-lg-8 col-xl-9">
                          <div class="copyright-widget mt5 text-start mb20-sm">
                            <p>MSQUARE © 2022. All Rights Reserved.</p>
                          </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-3">
                          <div class="footer_social_widget text-start text-md-end">
                            <ul class="mb0">
                              <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                              <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </section>
                            <a class="scrollToHome" href="#"><i class="fas fa-arrow-up"></i></a>
                </div>
                <!-- Wrapper End -->

                <script>
                
                
                    var list = {
                        "fueltype": [<c:forEach items="${filter.fuelType}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "transmissiontype": [<c:forEach items="${filter.transmissionType}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "bodytype": [<c:forEach items="${filter.bodyType}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "seatingcapacity": [<c:forEach items="${filter.seatingCapacity}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "filteredmake": [<c:forEach items="${filter.filteredMakeList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "fullmake": [<c:forEach items="${filter.fullMakeList}" var="data" >
                            "${data.carId}",
                        </c:forEach>],
                        "filteredmodel": [<c:forEach items="${filter.filteredModelList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "fullmodel": [<c:forEach items="${filter.fullModelList}" var="data" >
                            "${data.carModelId}",
                        </c:forEach>],
                        "lowbudget":"${filter.lowBudget}",
                        "highbudget":"${filter.highBudget}",
                        "lowmileage":"${filter.lowMileage}",
                        "highmileage":"${filter.highMileage}",
                        "lowengine":"${filter.lowEngineCapacity}",
                        "highengine":"${filter.highEngineCapacity}"
                        
                    }
                  

                    function setKmplData(){
                        var kmplrange=document.getElementById("kmpl-range").value;
                      
                        if(kmplrange==1){
                            document.getElementById("lowmileage").value=0;
                            document.getElementById("highmileage").value=9;
                        }
                        if(kmplrange==2){
                            document.getElementById("lowmileage").value=10;
                            document.getElementById("highmileage").value=15;
                        }
                        if(kmplrange==3){
                            document.getElementById("lowmileage").value=16;
                            document.getElementById("highmileage").value=20;
                        }
                        if(kmplrange==4){
                            document.getElementById("lowmileage").value=20;
                            document.getElementById("highmileage").value=1000;
                        }
                        
                        submitData();
                    }
                    function setEngineData(){
                        var enginerange=document.getElementById("engine-range").value;
                        console.log(enginerange);
                        if(enginerange==1){
                            document.getElementById("lowengine").value=0;
                            document.getElementById("highengine").value=800;
                        }
                        if(enginerange==2){
                            document.getElementById("lowengine").value=801;
                            document.getElementById("highengine").value=1000;
                        }
                        if(enginerange==3){
                            document.getElementById("lowengine").value=1001;
                            document.getElementById("highengine").value=1200;
                        }
                        if(enginerange==4){
                            document.getElementById("lowengine").value=1201;
                            document.getElementById("highengine").value=1500;
                        }
                        if(enginerange==5){
                            document.getElementById("lowengine").value=1501;
                            document.getElementById("highengine").value=2000;
                        }
                        if(enginerange==6){
                            document.getElementById("lowengine").value=2001;
                            document.getElementById("highengine").value=3000;
                        }
                        if(enginerange==7){
                            document.getElementById("lowengine").value=3001;
                            document.getElementById("highengine").value=4000;
                        }
                        if(enginerange==8){
                            document.getElementById("lowengine").value=4001;
                            document.getElementById("highengine").value=10000;
                        }
            
                        submitData();
                    }
                    function checkBudget(){
                        
                        if(parseInt(document.getElementById("lowbudget").value)>parseInt(document.getElementById("highbudget").value)){
                            document.getElementById("gobutton").disabled=true;
                            alert("min should be lower than max amount");
                        }else{
                            document.getElementById("gobutton").disabled=false;
                        
                        }
                    }
                    checkList("make-"+list.filteredmake);

                    function checkList() {

                        //fueltype
                        for (let i = 0; i < list.fueltype.length; i++) {
                            if (list.fueltype[i] == "Petrol") {
                                document.getElementById("petrol").checked = true;
                            }
                            if (list.fueltype[i] == "Diesel") {
                                document.getElementById("diesel").checked = true;
                            }
                            if (list.fueltype[i] == "Electric") {
                                document.getElementById("electric").checked = true;
                            }
                           
                            if (list.fueltype[i] == "CNG") {
                                document.getElementById("cng").checked = true;
                            }
                        }

                        //transmission type
                        for (let i = 0; i < list.transmissiontype.length; i++) {
                            if (list.transmissiontype[i] == "Automatic") {
                                document.getElementById("automatic").checked = true;
                            }
                            if (list.transmissiontype[i] == "Manual") {
                                document.getElementById("manual").checked = true;
                            }
                            if (list.transmissiontype[i] == "Hybrid") {
                                document.getElementById("hybrid").checked = true;
                            }
                        }
                    
                        //body type
                        for (let i = 0; i < list.bodytype.length; i++) {
                            if (list.bodytype[i] == "SUV") {
                              
                                document.getElementById("SUV").selected = true;
                            }
                            if (list.bodytype[i] == "Sedan") {
                                document.getElementById("Sedan").selected = true;
                            }
                            if (list.bodytype[i] == "Hatchback") {
                                document.getElementById("Hatchback").selected = true;
                            }
                            if (list.bodytype[i] == "Compact SUV") {
                                document.getElementById("Compact SUV").selected = true;
                            }
                            if (list.bodytype[i] == "Compact Sedan") {
                                document.getElementById("Compact Sedan").selected = true;
                            }
                            if (list.bodytype[i] == "MUV") {
                                document.getElementById("MUV").selected = true;
                            }
                            if (list.bodytype[i] == "Convertible") {
                                document.getElementById("Convertible").selected = true;
                            }
                            if (list.bodytype[i] == "Coupe") {
                                document.getElementById("Coupe").selected = true;
                            }
                            if (list.bodytype[i] == "Sports Car") {
                                document.getElementById("Sports Car").selected = true;
                            }
                          
                            if (list.bodytype[i] == "Station Wagon") {
                                document.getElementById("Station Wagon").selected = true;
                            }
                            if (list.bodytype[i] == "Minivan") {
                                document.getElementById("Minivan").selected = true;
                            }
                            if (list.bodytype[i] == "Truck") {
                                document.getElementById("Truck").selected = true;
                            }
                        }

                        //seating capacity
                        for (let i = 0; i < list.seatingcapacity.length; i++) {
                            if (list.seatingcapacity[i] == "5") {
                                document.getElementById("5-seater").selected = true;
                            }
                            if (list.seatingcapacity[i] == "6") {
                                document.getElementById("6-seater").selected = true;
                            }
                            if (list.seatingcapacity[i] == "7") {
                                document.getElementById("7-seater").selected = true;
                            }
                            if (list.seatingcapacity[i] == "8+") {
                                document.getElementById("8-seater").selected = true;
                            }
                            
                        }
                        //car brand
                        for(let i=0;i<list.fullmake.length;i++){
                                
                            for(let j=0;j<list.filteredmake.length;j++){
                                if(list.fullmake[i]==list.filteredmake[j]){
                                    
                                    document.getElementById(list.filteredmake[j]).selected=true;
                                }
                            }
                        }

                        //car model
                        for(let i=0;i<list.fullmodel.length;i++){
                            console.log("full model-"+list.fullmodel[i]);
                            for(let j=0;j<list.filteredmodel.length;j++){
                                if(list.fullmodel[i]==list.filteredmodel[j]){
                                    
                                    document.getElementById(list.filteredmodel[j]).selected=true;
                                }
                            }
                        }

                        //budget
                        if(document.getElementById("lowbudget").value==""){
                            document.getElementById("lowbudget").value=0;
                        }
                        if(document.getElementById("highbudget").value==""){
                            document.getElementById("highbudget").value=20;
                        }

                        //mileage
                        if(document.getElementById("kmpl-range").value=="nothing selected"){
                            document.getElementById("ns").selected=true;
                        }

                        
                        if(parseInt(list.lowmileage)==0){
                            document.getElementById("1-kmpl").selected=true;
                        }
                        if(parseInt(list.lowmileage)==10){
                            document.getElementById("2-kmpl").selected=true;
                        }
                        if(parseInt(list.lowmileage)==16){
                            document.getElementById("3-kmpl").selected=true;
                        }
                        if(parseInt(list.lowmileage)==20){
                            document.getElementById("4-kmpl").selected=true;
                        }

                        //engine capacity
                        if(document.getElementById("engine-range").value=="nothing selected"){
                            document.getElementById("ns").selected=true;
                        }
 
                        if(parseInt(list.lowengine)==0){
                            document.getElementById("1-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==801){
                            document.getElementById("2-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==1001){
                            document.getElementById("3-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==1201){
                            document.getElementById("4-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==1501){
                            document.getElementById("5-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==2001){
                            document.getElementById("6-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==3001){
                            document.getElementById("7-enginerange").selected=true;
                        }
                        if(parseInt(list.lowengine)==4001){
                            document.getElementById("8-enginerange").selected=true;
                        }
                       
                    }
                    
                    function submitData() {
                        document.getElementById("myform").submit();
                    }
                </script>
                
                <script src="js-ibc/jquery-3.6.0.js"></script>
                <script src="js-ibc/jquery-migrate-3.0.0.min.js"></script>
                <script src="js-ibc/popper.min.js"></script>
                <script src="js-ibc/bootstrap.min.js"></script>
                <script src="js-ibc/bootstrap-select.min.js"></script>
                <script src="js-ibc/jquery.mmenu.all.js"></script>
                <script src="js-ibc/ace-responsive-menu.js"></script>
                <script src="js-ibc/isotop.js"></script>
                <script src="js-ibc/snackbar.min.js"></script>
                <script src="js-ibc/simplebar.js"></script>
                <script src="js-ibc/parallax.js"></script>
                <script src="js-ibc/scrollto.js"></script>
                <script src="js-ibc/jquery-scrolltofixed-min.js"></script>
                <script src="js-ibc/jquery.counterup.js"></script>
                <script src="js-ibc/wow.min.js"></script>
                <script src="js-ibc/progressbar.js"></script>
                <script src="js-ibc/slider.js"></script>
                <script src="js-ibc/pricing-slider.js"></script>
                <script src="js-ibc/timepicker.js"></script>
                <!-- Custom script for all pages -->
                <script src="js-ibc/script.js"></script>
            </body>

            <!-- Mirrored from creativelayers.net/themes/voiture-html/page-list-v6.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:48 GMT -->

            </html>