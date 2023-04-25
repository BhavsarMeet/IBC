<!-- Main Header Nav For Mobile -->
<div id="page" class="stylehome1 h0">
    <div class="mobile-menu">
      <div class="header stylehome1">
        <div class="mobile_menu_bar">
          <a class="menubar" href="#menu"><small>Menu</small><span></span></a>
        </div>
        <div class="mobile_menu_main_logo"><img class="nav_logo_img img-fluid"  src="images-ibc/m-logo.png"
            alt="images-ibc/header-logo2.png"></div>
      </div>
    </div>
    <!-- /.mobile-menu -->
  <nav id="menu" class="stylehome1">
    <ul>
      <li>
        <a href="index"><span>Home</span></a>
      </li>
      <%if(dealerData==null && userData!=null ){%>
        <li>
          <a href="newcarlist"><span class="title">New Cars</span></a>
        </li>
        <%}%>
          <%if(dealerData!=null){%>
            <li>
              <a href="usedcarlist-dealer"><span class="title">Used Cars</span></a>
            </li>

            <%}else if(userData!=null){%>
              <li> <a href=""><span class="title">Used Cars</span></a>
                <ul>
                  <li><a href="usedcarlist-user">Buy Used Cars</a></li>
                  <li><a href="gotoaddusedcardetails">Sell Your Car</a></li>
                </ul>
              </li>
              <%}else{%>
                <li><a href=""><span class="title">Used Cars</span></a>
                  <ul>
                    <li><a href="" data-bs-toggle="modal" data-bs-target="#buyusedcarModal">Buy Used
                        Cars</a></li>
                        <li><a href="" data-bs-toggle="modal" data-bs-target="#sellyourcarModal">Sell Your Car</a></li>
                  </ul>
                </li>
                <%}%>
                  </li>
                  <li>
                    <a href="aboutus"><span>About Us</span></a>
                  </li>
                  <li>
                    <a href="contactus"><span>Contact Us</span></a>
                  </li>
                  <%if(userData!=null){%>
                    <li class="add_listing">
                      <a href="userdashboard">Profile</a>
                    </li>
                    <%}else if(dealerData!=null){%>
                      <li class="add_listing">
                        <a href="dealerdashboard">Profile</a>
                      </li>
                      <%}else{%>
                        <li class="add_listing">
                          <a href="userdealerlogin?val=navigate" data-bs-toggle="modal"
                            data-bs-target="#logInModal">Login | Register</a>
                        </li>
                        <%}%>

        <!-- Only for Mobile View -->
        <li class="mm-add-listing">
          <span class="border-none">
            <span class="mmenu-contact-info">
              <span class="phone-num"><i class="flaticon-map"></i> <a href="#">3,Satkar Avenue,Nana-Chiloda,Ahmedabad-382330</a></span>
                                <span class="phone-num"><i class="flaticon-phone-call"></i> <a
                                  href="tel:7622893333">+91 7622893333</a></span>
                                <span class="phone-num"><i class="flaticon-clock"></i> <a href="#">Mon - Fri 9:00 AM -
                                  9:00 PM</a></span>
            </span>
            <span class="social-links">
              <a href="#"><span class="fab fa-facebook-f"></span></a>
              <a href="#"><span class="fab fa-twitter"></span></a>
              <a href="#"><span class="fab fa-instagram"></span></a>
              <a href="#"><span class="fab fa-youtube"></span></a>
              <a href="#"><span class="fab fa-pinterest"></span></a>
            </span>
          </span>
        </li>
      </ul>
    </nav>
  </div>