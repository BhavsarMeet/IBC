<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<!DOCTYPE html>
			<html dir="ltr" lang="en">

			<!-- Mirrored from creativelayers.net/themes/voiture-html/page-car-single-v6.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:57 GMT -->

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

				<div class="wrapper ovh">
					<div class="preloader"></div>

					<!-- WEBSITE HEADER -->
					<%@ include file="../common/header-website.jsp" %>

						<!-- MOBILE HEADER  -->
						<%@ include file="../common/header-mobile.jsp" %>



							<!-- Agent Single Grid View -->
							<section class="our-agent-single pb90 bt1 pt30 mt70-992">
								
								<!-- IMAGES START -->
								<div class="container-fluid p0">
									<div class="row">
										<div class="col-lg-12">
											<div class="single_page6_single_slider dots_none">
												<c:if test="${empty exteriorImages}">
													<img src="images-ibc/no-image.png"
														alt="No image found">
												</c:if>
												<c:forEach items="${exteriorImages}" var="cars">
													<div class="item">
														<div class="sp6_single_slider">
															<div class="thumb">
																<img class="img-fluid" src="pictures\newcar${cars}"
																onerror="this.src='images-ibc/no-image.png';"
																alt="No image found">
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<!-- IMAGES END -->
								<div class="container">

									<div class="row mt30 mb30">
										<div class="col-lg-7 col-xl-8">
											<div class="single_page_heading_content">
												<div class="car_single_content_wrapper">
													<ul class="car_info mb20-md">
														<li class="list-inline-item"><a href="#">BRAND NEW</a></li>
														<!-- <li class="list-inline-item"><a href="#"><span
																	class="flaticon-clock-1 vam"></span></a></li>
														<li class="list-inline-item"><a href="#"><span
																	class="flaticon-eye vam"></span></a></li> -->
													</ul>
													<h2 class="title"><span>${cardetails.carModel.newCar.carBrand}</span><span>
														${cardetails.carModel.carModelName}</span></h2>
													<p class="para"></p>
												</div>
											</div>
										</div>

										<div class="col-lg-5 col-xl-4">
											<div class="single_page_heading_content text-start text-lg-end">
												<div class="share_content">
													<ul>
														<!-- <li class="list-inline-item"><a href="#"><span
																	class="flaticon-email"></span>EMAIL</a></li>
														<li class="list-inline-item"><a href="#"><span
																	class="flaticon-printer"></span>PRINT</a></li>
														<li class="list-inline-item"><a href="#"><span
																	class="flaticon-heart"></span>SAVE</a></li> -->
														<li class="list-inline-item"><a href="#"><span
																	class="flaticon-share"></span>SHARE</a></li>
													</ul>
												</div>
												<div class="price_content">
													<div class="price mt60 mb10 mt10-md">
														<h3><small
																class="mr15"></small>&#8377; ${carprice}
														</h3>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-8 col-xl-8">
											<div class="popular_listing_sliders single_page6_tabs row pr15">
												<!-- Nav tabs -->
												<div class="nav nav-tabs col-lg-12" role="tablist">
													<button class="nav-link" id="nav-description-tab"
														data-bs-toggle="tab" data-bs-target="#nav-description"
														role="tab" aria-controls="nav-description"
														aria-selected="true">Description</button>
													<button class="nav-link active" id="nav-overview-tab"
														data-bs-toggle="tab" data-bs-target="#nav-overview" role="tab"
														aria-controls="nav-overview"
														aria-selected="false">Overview</button>
													<button class="nav-link" id="nav-features-tab" data-bs-toggle="tab"
														data-bs-target="#nav-features" role="tab"
														aria-controls="nav-features"
														aria-selected="false">Features</button>
													<!-- <button class="nav-link" id="nav-location-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-location" role="tab" aria-controls="nav-location"
                                                aria-selected="false">Location</button>
                                            <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-review" role="tab" aria-controls="nav-review"
                                                aria-selected="false">Location</button> -->
												</div>
												<!-- Tab panes -->
												<div class="tab-content col-lg-12" id="nav-tabContent">
													<div class="tab-pane fade" id="nav-description" role="tabpanel"
														aria-labelledby="nav-description-tab">
														<div class="listing_single_description bdr_none pl0 pr0">
															<h4 class="mb30">Description </h4>
															<!-- <p class="first-para">The all-new Volvo XC60 is a terrific
																luxury
																compact
																SUV. It's been fully redesigned for 2017 and features
																improvements
																across the board. These changes bump the vehicle from
																its
																previous
																midpack standing; it now resides with some of the best
																in the
																class.
																Some of the most notable improvements include a
																state-of-the-art
																infotainment system, more legroom for rear-seat riders,
																and
																peppy engine
																choices.</p>
															<p class="mb25">Occupying over 8,000 square feet, perched
																over 1,100
																feet in
																the air with absolutely breathtaking panoramic
																360-degree views
																of all
																of New York City and the surrounding tri-state area, The
																82nd
																Floor at
																432 Park Avenue has been completely reimagined by one of
																the
																most
																sought-after design houses in London and represents an
																utterly
																unique
																opportunity to own a globally significant property.</p>
															<p class="mt10 mb20">The Amrutha Lounge means port in the
																Turkish
																language,
																however the restaurant opens its doors to all aspects of
																the
																Mediterranean kitchen. The kitchen will be mostly
																focused on
																Mediterranean food; the owners of the restaurant are
																young
																professional
																chefs who can bring new, exciting tastes to Angel,
																Islington
																which will
																show through in the quality of food they prepare.</p> -->
														</div>
													</div>
													<div class="tab-pane fade show active" id="nav-overview"
														role="tabpanel" aria-labelledby="nav-overview-tab">
														<div class="opening_hour_widgets p30 bdr_none pl0 pr0">
															<div class="wrapper">
																<h4 class="title">Overview</h4>
																<ul class="list-group">
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Make</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carModel.newCar.carBrand}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Model</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carModel.carModelName}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Body Type</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carBodyType}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Transmission</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carTransmissionType}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Condition</div>
																		</div>
																		<span class="schedule">New</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Year</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carManufacturingYear}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Mileage</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carMileage} Kmpl</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Fuel Type</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carFuelType}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Engine Type</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carEngineType}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Engine Capacity</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carEngineCapacity} CC</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Doors</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carDoors}</span>
																	</li>
																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">Seating Capacity</div>
																		</div>
																		<span
																			class="schedule">${cardetails.carSeatingCapacity}</span>
																	</li>

																	<li
																		class="list-group-item d-flex justify-content-between align-items-start">
																		<div class="me-auto">
																			<div class="day">VIN</div>
																		</div>
																		<span
																			class="schedule">2D456THA798700213GT21</span>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="tab-pane fade" id="nav-features" role="tabpanel"
														aria-labelledby="nav-features-tab">
														<div class="user_profile_service bdr_none pl0 pr0">
															<div class="row">
																<div class="col-lg-12">
																	<h4 class="title">Features</h4>
																</div>
																<div class="col-lg-6 col-xl-6">
																	<h5 class="subtitle">Convenience</h5>
																</div>
																<!-- <div class="col-lg-6 col-xl-5">
																	<ul class="service_list">
																		<li>Heated Seats</li>
																		<li>Heated Steering Wheel</li>
																		<li>Navigation System</li>
																		<li>Power Liftgate</li>
																	</ul>
																</div> -->
															</div>
															<hr>
															<div class="row">
																<div class="col-lg-6 col-xl-6">
																	<h5 class="subtitle">Entertainment</h5>
																</div>
																<!-- <div class="col-lg-6 col-xl-5">
																	<ul class="service_list">
																		<li>Apple CarPlay/Android Auto</li>
																		<li>Bluetooth</li>
																		<li>HomeLink</li>
																	</ul>
																</div> -->
															</div>
															<hr>
															<div class="row">
																<div class="col-lg-6 col-xl-6">
																	<h5 class="subtitle">Exterior</h5>
																</div>
																<!-- <div class="col-lg-6 col-xl-5">
																	<ul class="service_list">
																		<li>Alloy Wheels</li>
																		<li>Sunroof/Moonroof</li>
																	</ul>
																</div> -->
															</div>
															<hr>
															<div class="row">
																<div class="col-lg-6 col-xl-6">
																	<h5 class="subtitle">Safety</h5>
																</div>
																<!-- <div class="col-lg-6 col-xl-5">
																	<ul class="service_list">
																		<li>Backup Camera</li>
																		<li>Blind Spot Monitor</li>
																		<li>Brake Assist</li>
																		<li>LED Headlights</li>
																		<li>Stability Control</li>
																	</ul>
																</div> -->
															</div>
															<hr>
															<div class="row">
																<!-- <div class="col-lg-12">
																	<a class="fz12 tdu color-blue" href="#">View all
																		features</a>
																</div> -->
															</div>
														</div>
													</div>
													<!-- <div class="tab-pane fade" id="nav-location" role="tabpanel"
                                                aria-labelledby="nav-location-tab">
                                                <div class="user_profile_location bdr_none pl0 pr0">
                                                    <h4 class="title">Location</h4>
                                                    <div class="property_sp_map mb40">
                                                        <div class="h400 bdrs8" id="map-canvas"></div>
                                                    </div>
                                                    <div class="upl_content d-block d-md-flex">
                                                        <p class="float-start fn-sm mb20-sm"><span
                                                                class="fas fa-map-marker-alt pr10 vam"></span>3891
                                                            Ranchview Dr.
                                                            Richardson, California 62639</p>
                                                        <button class="btn location_btn">Get Direction</button>
                                                    </div>
                                                </div>
                                            </div> -->
													<div class="tab-pane fade" id="nav-review" role="tabpanel"
														aria-labelledby="nav-review-tab">
														<div class="user_profile_review bdr_none pl0 pr0">
															<div class="energy_class">
																<h4 class="mb30">Consumer reviews</h4>
																<div class="single_line">
																	<p class="para">Comfort</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">4.7</span></li>
																	</ul>
																</div>
																<div class="single_line">
																	<p class="para">Interior design</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">4.9</span></li>
																	</ul>
																</div>
																<div class="single_line">
																	<p class="para">Performance</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">4.6</span></li>
																	</ul>
																</div>
																<div class="single_line">
																	<p class="para">Value for the money</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">5.0</span></li>
																	</ul>
																</div>
																<div class="single_line">
																	<p class="para">Exterior styling</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">4.3</span></li>
																	</ul>
																</div>
																<div class="single_line bbn">
																	<p class="para">Reliability</p>
																	<ul class="review">
																		<li class="list-inline-item"><span
																				class="total_rive_count">4.0</span></li>
																	</ul>
																</div>
															</div>
															<div class="product_single_content">
																<div class="mbp_pagination_comments">
																	<div class="mbp_first d-flex db-414">
																		<div class="flex-shrink-0">
																			<img src="images-ibc/blog/reviewer1.png"
																				class="mr-3" alt="reviewer1.png">
																		</div>
																		<div class="flex-grow-1 ms-4 ml0-414">
																			<h4 class="sub_title">Jane Cooper</h4>
																			<div class="sspd_postdate mb15">April 6,
																				2021 at
																				3:21 AM
																				<div
																					class="sspd_review float-none float-sm-end">
																					<ul class="mb0 pl15 pl0-sm">
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item">(5
																							reviews)
																						</li>
																					</ul>
																				</div>
																			</div>
																			<p>Every single thing we tried with John was
																				delicious!
																				Found some awesome places we would
																				definitely go
																				back to
																				on our trip. John was also super
																				friendly and
																				passionate
																				about Beşiktaş and Istanbul. </p>
																		</div>
																	</div>
																	<div class="mbp_first d-flex db-414">
																		<div class="flex-shrink-0">
																			<img src="images-ibc/blog/reviewer2.png"
																				class="mr-3" alt="reviewer2.png">
																		</div>
																		<div class="flex-grow-1 ms-4 ml0-414">
																			<h4 class="sub_title">Jane Cooper</h4>
																			<div class="sspd_postdate mb15">April 6,
																				2021 at
																				3:21 AM
																				<div
																					class="sspd_review float-none float-sm-end">
																					<ul class="mb0 pl15 pl0-sm">
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item"><a
																								href="#"><i
																									class="fa fa-star"></i></a>
																						</li>
																						<li class="list-inline-item">(5
																							reviews)
																						</li>
																					</ul>
																				</div>
																			</div>
																			<p>Every single thing we tried with John was
																				delicious!
																				Found some awesome places we would
																				definitely go
																				back to
																				on our trip. John was also super
																				friendly and
																				passionate
																				about Beşiktaş and Istanbul. </p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="user_review_form bdr_none pl0 pr0">
															<div class="bsp_reveiw_wrt">
																<h4 class="mt10">Write a Review</h4>
																<div class="df db-sm">
																	<table
																		class="table table-responsive table-borderless wa mr100 mr0-sm mb20">
																		<thead>
																			<tr>
																				<th class="pl0" scope="col">Comfort</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<th class="pl0" scope="row">Performance
																				</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																			<tr>
																				<th class="pl0" scope="row">Exterior
																					styling
																				</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																	<table
																		class="table table-responsive table-borderless wa mb20">
																		<thead>
																			<tr>
																				<th class="pl0" scope="col">Interior
																					design</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<th class="pl0" scope="row">Value for
																					the money
																				</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																			<tr>
																				<th class="pl0" scope="row">Reliability
																				</th>
																				<td>
																					<div class="sspd_review">
																						<ul class="mb0 pl15 pl0-lg">
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																							<li
																								class="list-inline-item">
																								<a href="#"><i
																										class="fa fa-star"></i></a>
																							</li>
																						</ul>
																					</div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<form class="comments_form">
																	<div class="row">
																		<div class="col-md-6">
																			<div class="form-group">
																				<input type="text" class="form-control"
																					placeholder="Your Name">
																			</div>
																		</div>
																		<div class="col-md-6">
																			<div class="form-group">
																				<input type="email" class="form-control"
																					placeholder="Email">
																			</div>
																		</div>
																		<div class="col-md-12">
																			<div class="form-group">
																				<textarea class="form-control" rows="9"
																					placeholder="Message"></textarea>
																			</div>
																			<button type="submit"
																				class="btn btn-thm">Send Your
																				Review</button>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>

							<!-- Our Shopping Product -->
							<section class="our-shop pb100 bgc-f9">
								<div class="container">
									<div class="row">
										<div class="col-md-8">
											<div class="main-title text-center text-md-start mb15-sm">
												<h2>Why Choose Us?</h2>
											</div>
										</div>
										<div class="col-md-4">
											<div class="text-center text-md-end mb30-sm">
												<a href="newcarlist" class="more_listing">Show All Cars <span
														class="icon"><span class="fas fa-plus"></span></span></a>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-12">
											<div class="listing_item_4grid_slider nav_none">
												<c:forEach items="${carlist}" var="cars">
													<div class="item">
														<div class="car-listing">
															<div class="thumb">
																<div class="tag">NEW</div>
																<img src="pictures\newcar${cars.imageFrontView}"
																onerror="this.src='images-ibc/no-image.png';" height="125%" width="100%"
																alt="No image found">
																<div class="thmb_cntnt3">
																	<ul class="mb0">
																		<li class="list-inline-item"><a
																				href="newcardetails?vid=${cars.carVariantId}"
																				class="btn btn-outline-primary btn-sm">Details</a>
																		</li>
																	</ul>
																</div>
															</div>
															<div class="details">
																<div class="wrapper">

																	<h5 class="price">&#8377; ${cars.displayCarPrice}</h5>
																	<h6 class="title"><a
																			href="newcardetails?vid=${cars.carVariantId}"><span>${cars.carBrand}</span>
																			<span>${cars.carModelName}</span><span> -
																				${cars.carManufacturingYear}</span></a>
																	</h6>

																</div>
																<div class="listing_footer">
																	<ul class="mb0">
																		<li class="list-inline-item"><span
																				class="flaticon-road-perspective me-2 "></span>${cars.carMileage} Kmpl</a>
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
												</c:forEach>
											</div>
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
										<a href="tel:+91 7622893333">
										  <div class="footer_phone">+91 7622893333</div>
										</a>
										<a href="mailto:info@ibccarz.com">
										  <p>info@ibccarz.com</p>
										</a>
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
							<a class="scrollToHome" href="#"><i class="fa fa-angle-up"></i></a>
				</div>
				<!-- Wrapper End -->
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
                <script src="js-ibc/timepicker.js"></script>
                <script
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&amp;callback=initMap"></script>
                <script src="js-ibc/googlemaps1.js"></script>
                <!-- Custom script for all pages -->
                <script src="js-ibc/script.js"></script>
			</body>

			<!-- Mirrored from creativelayers.net/themes/voiture-html/page-car-single-v6.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 08 Sep 2022 06:58:58 GMT -->

			</html>