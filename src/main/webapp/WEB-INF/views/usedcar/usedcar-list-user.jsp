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

                <!-- Title -->
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
                                                <h2 class="breadcrumb_title">Used Cars For Sale</h2>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <!-- Listing Grid View -->
                            <section class="our-listing bgc-white pb30-991 inner_page_section_spacing">
                                <div class="container">

                                    <!-- FILTER STARTS -->
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
                                    <!-- Filter End -->

                                    <!-- Filter For  Starts -->
                                    <div class="row">
                                        <div class="col-lg-4 col-xl-3 dn-md">
                                            <div class="sidebar_widgets">
                                                <div class="sidebar_widgets_wrapper">
                                                    <div class="sidebar_advanced_search_widget">
                                                        <h4 class="title text-center">Filter</h4>
                                                        <ul class="sasw_list mb0">
                                                            <form action="usedcarlist-dealer" id="myform">
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
                                                                        <button type="submit"
                                                                            class="form-control btn btn-sm btn-outline-info"
                                                                            id="gobutton">Go</button>
                                                                    </div>
                                                                </li>
                                                                <li class="min_area list-inline-item">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="0L" id="lowbudget"
                                                                            onkeyup="checkBudget()" name="lowBudget"
                                                                            value="${filter.lowBudget}">
                                                                    </div>
                                                                </li>
                                                                <li class="max_area list-inline-item">
                                                                    <div class="form-group">
                                                                        <input type="text" class="form-control"
                                                                            placeholder="0L" id="highbudget"
                                                                            onkeyup="checkBudget()" name="highBudget"
                                                                            value="${filter.highBudget}">
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
                                                                                    tabindex="-98"
                                                                                    name="filteredMakeList"
                                                                                    onchange="submitData()" multiple>

                                                                                    <c:forEach
                                                                                        items="${filter.fullMakeList}"
                                                                                        var="brand">
                                                                                        <option id="${brand}"
                                                                                            value="${brand}">${brand}
                                                                                        </option>
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
                                                                                    tabindex="-98" multiple
                                                                                    onchange="submitData()"
                                                                                    name="filteredModelList">
                                                                                    <c:forEach
                                                                                        items="${filter.fullModelList}"
                                                                                        var="model">
                                                                                        <option id="${model}"
                                                                                            value="${model}">${model}
                                                                                        </option>
                                                                                    </c:forEach>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">No Of Owners</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select name="noOfOwners"
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98" multiple
                                                                                    onchange="submitData()">
                                                                                    <option id="1-owner" value="1">First
                                                                                        Owner</option>
                                                                                    <option id="2-owner" value="2">
                                                                                        Second Owner</option>
                                                                                    <option id="3-owner" value="3+">
                                                                                        Third or More Owners</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li>
                                                                    <h5 class="subtitle">Kilometer</h5>
                                                                </li>
                                                                <li>
                                                                    <div class="search_option_two">
                                                                        <div class="candidate_revew_select">
                                                                            <input type="hidden" name="lowKm" id="lowkm"
                                                                                value="${filter.lowKm}">
                                                                            <input type="hidden" name="highKm"
                                                                                id="highkm" value="${filter.highKm}">
                                                                            <div
                                                                                class="dropdown bootstrap-select w100 show-tick">
                                                                                <select onchange="setData()"
                                                                                    id="km-range"
                                                                                    class="selectpicker w100 show-tick"
                                                                                    tabindex="-98">
                                                                                    <option id="ns"
                                                                                        value="nothing selected">Nothing
                                                                                        Selected</option>
                                                                                    <option id="1-kmrange" value="1">0KM
                                                                                        to 20,000KM</option>
                                                                                    <option id="2-kmrange" value="2">
                                                                                        20,000KM to 40,000KM</option>
                                                                                    <option id="3-kmrange" value="3">
                                                                                        40,000KM to 60,000KM</option>
                                                                                    <option id="4-kmrange" value="4">
                                                                                        60,000KM to 80,000KM</option>
                                                                                    <option id="5-kmrange" value="5">
                                                                                        80,000KM & above</option>
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
                                                                                (676)</label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="Diesel" id="diesel"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckDiesel">Diesel
                                                                                (9,784)</label>
                                                                        </div>
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="Electric" id="electric"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckElectric">Electric
                                                                                (6.584)</label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="fuelType"
                                                                                value="CNG" id="cng"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckHybrid">CNG
                                                                                (97)</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <h5 class="subtitle">Transmission</h5>
                                                                    <div class="ui_kit_checkbox">
                                                                        <div class="form-check mb20">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="transmissionType"
                                                                                value="automatic" id="automatic"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckAutometic">Automatic
                                                                            </label>
                                                                        </div>
                                                                        <div class="form-check mb30">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" name="transmissionType"
                                                                                value="manual" id="manual"
                                                                                onclick="submitData()">
                                                                            <label class="form-check-label"
                                                                                for="flexCheckManual">Manual
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
                                                <c:forEach items="${usedcarcustomer}" var="usedcar">
                                                    <div class="col-sm-6 col-xl-4">
                                                        <div class="car-listing">
                                                            <div class="thumb">
                                                                <div class="tag">FEATURED</div>
                                                                <img src="pictures\usedcar${usedcar.usedCarFrontImage}"
                                                                    onerror="this.src='images-ibc/no-image.png';"  height="125%" width="100%"
                                                                    alt="No image found">
                                                                <div class="thmb_cntnt3">
                                                                    <ul class="mb0">

                                                                        <li class="list-inline-item"><a
                                                                                href="usedcardetailscustomer?carid=${usedcar.usedCarModelData.usedCarId}"
                                                                                class="btn btn-outline-primary btn-sm">Details</a>
                                                                        </li>

                                                                    </ul>
                                                                </div>

                                                            </div>
                                                            <div class="details">
                                                                <div class="wrapper">

                                                                    <h5 class="price">
                                                                        &#8377; ${usedcar.usedCarDisplayPrice}
                                                                    </h5>
                                                                    <h6 class="title"><a
                                                                            href="usedcardetailscustomer?carid=${usedcar.usedCarModelData.usedCarId}"><span>${usedcar.usedCarModelData.usedCarBrand}</span>
                                                                            <span>${usedcar.usedCarModelData.usedCarModelName}</span><span>
                                                                                -
                                                                                ${usedcar.usedCarModelData.usedCarYear}</span></a>
                                                                    </h6>

                                                                </div>
                                                                <div class="listing_footer">
                                                                    <ul class="mb0">
                                                                        <li class="list-inline-item"><span
                                                                                class="flaticon-road-perspective me-2 "></span><span>${usedcar.usedCarDisplaykm}
                                                                                Km</span></a>
                                                                        </li>
                                                                        <li class="list-inline-item"><span
                                                                                class="flaticon-gas-station me-2"></span>${usedcar.usedCarModelData.usedCarFuelType}</a>
                                                                        </li>
                                                                        <li class="list-inline-item"><span
                                                                            class="me-2"><i class="fas fa-car"></i></span>${usedcar.usedCarModelData.usedCarBodyType}</a>
                                                                    </li>
                                                                        <li class="list-inline-item"><span
                                                                                class="flaticon-gear me-2"></span>${usedcar.usedCarModelData.usedCarRTO}</a>
                                                                        </li>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
                        "noofowners": [<c:forEach items="${filter.noOfOwners}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "filteredmake": [<c:forEach items="${filter.filteredMakeList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "fullmake": [<c:forEach items="${filter.fullMakeList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "filteredmodel": [<c:forEach items="${filter.filteredModelList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "fullmodel": [<c:forEach items="${filter.fullModelList}" var="data" >
                            "${data}",
                        </c:forEach>],
                        "lowbudget":"${filter.lowBudget}",
                        "highbudget":"${filter.highBudget}",
                        "highkm":"${filter.highKm}",
                        "lowkm":"${filter.lowKm}"
                    }
                    console.log(list.lowkm);
                    console.log(list.highkm);
                    function checkBudget(){
                         
                        if(parseInt(document.getElementById("lowbudget").value)>parseInt(document.getElementById("highbudget").value)){
                            document.getElementById("gobutton").disabled=true;
                            alert("min should be lower than max amount");
                        }else{
                            document.getElementById("gobutton").disabled=false;
                          
                        }
                    }
                    
                    function setData(){
                        var kmrange=document.getElementById("km-range").value;
                        
                        if(kmrange==1){
                            document.getElementById("lowkm").value=0;
                            document.getElementById("highkm").value=20000;
                        }
                        if(kmrange==2){
                            document.getElementById("lowkm").value=20000;
                            document.getElementById("highkm").value=40000;
                        }
                        if(kmrange==3){
                            document.getElementById("lowkm").value=40000;
                            document.getElementById("highkm").value=60000;
                        }
                        if(kmrange==4){
                            document.getElementById("lowkm").value=60000;
                            document.getElementById("highkm").value=80000;
                        }
                        if(kmrange==5){
                            document.getElementById("lowkm").value=80000;
                            document.getElementById("highkm").value=500000;
                        }
                        submitData();
                    }
                    
                    checkList();
                    function checkList() {
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
                        for (let i = 0; i < list.transmissiontype.length; i++) {
                            if (list.transmissiontype[i] == "automatic") {
                                document.getElementById("Automatic").checked = true;
                            }
                            if (list.transmissiontype[i] == "manual") {
                                document.getElementById("Manual").checked = true;
                            }
                        }
                        for (let i = 0; i < list.noofowners.length; i++) {
                            if (list.noofowners[i] == "1") {
                                document.getElementById("1-owner").selected = true;
                            }
                            if (list.noofowners[i] == "2") {
                                document.getElementById("2-owner").selected = true;
                            }
                            if (list.noofowners[i] == "3+") {
                                document.getElementById("3-owner").selected = true;
                            }
                            
                        }
                        
                        for(let i=0;i<list.fullmake.length;i++){
                            
                            for(let j=0;j<list.filteredmake.length;j++){
                                if(list.fullmake[i]==list.filteredmake[j]){
                                    
                                    document.getElementById(list.filteredmake[j]).selected=true;
                                }
                            }
                        }
                        for(let i=0;i<list.fullmodel.length;i++){
                            console.log("full model-"+list.fullmodel[i]);
                            for(let j=0;j<list.filteredmodel.length;j++){
                                if(list.fullmodel[i]==list.filteredmodel[j]){
                                   
                                    document.getElementById(list.filteredmodel[j]).selected=true;
                                }
                            }
                        }
                        if(document.getElementById("lowbudget").value==""){
                            document.getElementById("lowbudget").value=0;
                        }
                        if(document.getElementById("highbudget").value==""){
                            document.getElementById("highbudget").value=20;
                        }
                        if(document.getElementById("km-range").value=="nothing selected"){
                            document.getElementById("5-kmrange").selected=true;
                        }

                        
                        if(parseInt(list.lowkm)==0){
                            document.getElementById("1-kmrange").selected=true;
                        }
                        if(parseInt(list.lowkm)==20000){
                            document.getElementById("2-kmrange").selected=true;
                        }
                        if(parseInt(list.lowkm)==40000){
                            document.getElementById("3-kmrange").selected=true;
                        }
                        if(parseInt(list.lowkm)==60000){
                            document.getElementById("4-kmrange").selected=true;
                        }
                        if(parseInt(list.lowkm)==80000){
                            document.getElementById("5-kmrange").selected=true;
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