<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>NLN_Chuyến xe ngày tết</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
    <div class="container-fluid nav-bar bg-transparent">
    <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
        <a href="index.jsp" class="navbar-brand d-flex align-items-center text-center">
            <div class="icon p-2 me-2">
                <img class="img-fluid" src="img/1.png" alt="Icon" style="width: 30px; height: 30px;">
            </div>
            <h1 class="m-0 text-primary">N_L_N</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
                <a href="index.jsp" class="nav-item nav-link active">Trang chủ</a>
                <a href="about.jsp" class="nav-item nav-link">Nhóm tôi</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Property</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="property-list.jsp" class="dropdown-item">Property List</a>
                        <a href="property-type.jsp" class="dropdown-item">Property Type</a>
                        <a href="property-agent.jsp" class="dropdown-item">Property Agent</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="testimonial.jsp" class="dropdown-item">Testimonial</a>
                        <a href="404.jsp" class="dropdown-item">404</a>
                    </div>
                </div>
                <a href="contact.jsp" class="nav-item nav-link">Liên hệ</a>
            </div>
            <% 
                String username = (String) session.getAttribute("username");
            %>
            <nav>
                <% if (username != null) { %>
                    <!-- Nếu đã đăng nhập, hiển thị hình người dùng và menu thả xuống -->
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img src="img/user.png" alt="User" class="img-fluid" style="width: 30px; height: 30px; border-radius: 50%;">
                        </a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="Trang_ca_nhan.jsp" class="dropdown-item">Thông tin tài khoản</a>
                            <a href="thanhvien.jsp" class="dropdown-item">Thành viên Thường</a>
                            <a href="account?action=listve" class="dropdown-item">Đơn hàng của tôi</a>
                            <a href="uudai.jsp" class="dropdown-item">Ưu đãi</a>
                            <a href="quanlythe.jsp" class="dropdown-item">Quản lý thẻ</a>
                            <a href="chuyendi.jsp" class="dropdown-item">Nhận xét chuyến đi</a>
                            <a href="logout.jsp" class="dropdown-item">Đăng xuất</a>
                        </div>
                    </div>
                <% } else { %>
                    <!-- Nếu chưa đăng nhập, hiển thị nút Đăng nhập -->
                    <a href="login.jsp" class="btn btn-primary px-3 d-none d-lg-flex">Đăng nhập</a>
                <% } %>
            </nav>
        </div>
    </nav>
</div>

        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <h1 class="display-5 animated fadeIn mb-4">Nào ta cùng đón <span class="text-primary">Chuyến xe ngày Tết</span> để đoàn tụ cùng gia đình</h1>
                    <p class="animated fadeIn mb-4 pb-2">Nhà là nơi để về.
                        Chuyến xe đưa bạn đến nơi hạnh phúc.</p>
                    <a href="#search"  class="btn btn-primary py-3 px-5 me-3 animated fadeIn">Bắt đầu hành trình</a>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <div class="owl-carousel header-carousel">
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/slide2.png" alt="">
                        </div>
                        <div class="owl-carousel-item">
                            <img class="img-fluid" src="img/slide1.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Search Start -->
        <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;" id="search">
            <div class="container" >
                <div class="row g-2">
                	<form name="form1" action="guest_servlet" method="GET" onsubmit="removeAccentsBeforeSubmit()">
                    <div class="col-md-12">
                        <div class="row g-2">
                            <div class="col-md-4">
                            	<label class="mx-2" for="diem-di" style="color: #FDF5E6">Điểm Xuất Phát</label>
                                <input type="text" id="diem-di" name="diem-di" placeholder="Nhập tên tỉnh" class="form-control border-0 py-3" required>
                                <div id="suggestions-diem-di" class="autocomplete-suggestions"></div>
                            </div>
                            <div class="col-md-4">
                            	<label class="mx-2" for="diem-di" style="color: #FDF5E6">Điểm Đến</label>
                                <input type="text" id="diem-den" name="diem-den" placeholder="Nhập tên tỉnh" class="form-control border-0 py-3" required>
                                <div id="suggestions-diem-den" class="autocomplete-suggestions"></div>
                            </div>
                            <div class="col-md-3">
                       			<label class="mx-2" for="ngay-di" style="color: #FDF5E6">Ngày đi</label>
                        		<input type="date" id="ngay-di" name="ngay-di" class="form-control border-0 py-3" >
                    		</div>
                    		<div class="col-md-1">
                    		<label class="mx-2" style="color: #FDF5E6"></label>
                       		<button name="actionSearch" value="searchForm" class="btn btn-dark border-0 w-100 py-3">Search</button>
                    	</div>
                        </div>
                        
                    </div>
                    
                    </form>
                </div>
            </div>
        </div>

        <!-- Category Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Ưu đãi ngày Tết</h1>
                    <p>Siêu ưu đãi giá vé khi đặt online dành cho khu vực Miền Trung. Đặt ngay hôm nay</p>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Quảng Nam</h6>
                                <span>Biển số 92</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Đà Nẵng</h6>
                                <span>Biển số 43</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Quảng Bình</h6>
                                <span>Biển số 73</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Quảng Trị</h6>
                                <span>Biển số 74</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Huế</h6>
                                <span>Biển số 75</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Nghệ An</h6>
                                <span>Biển số 37</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Hà Tĩnh</h6>
                                <span>Biển số 38</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                        <a class="cat-item d-block bg-light text-center rounded p-3" href="">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                    <img class="img-fluid" src="img/2.jpg" alt="Icon">
                                </div>
                                <h6>Thanh Hóa</h6>
                                <span>Biển số 36</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Category End -->


        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="img/3.jpg">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="mb-4">#1 Đứng đầu về dịch vụ chăm sóc khách hàng ngày Tết</h1>
                        <p class="mb-4">Cảm ơn quý khách đã luôn quan tâm theo dõi và đồng hành cùng chúng tôi trên những chuyến xe thật ý nghĩa này</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Giá ưu đãi cho học sinh, sinh viên</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Đặt vé nhanh, gọn, dễ dàng</p>
                        <p><i class="fa fa-check text-primary me-3"></i>Hỗ trợ chở miễn phí cho những người có hoàn cảnh khó khăn</p>
                        <a class="btn btn-primary py-3 px-5 mt-3" href="">Thêm</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Property List Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 class="mb-3">Các tuyến đường</h1>
                            <p>Trải rộng khắp miền Trung.</p>
                        </div>
                    </div>                   
                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="#tab-1">Tất cả</a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">Xe 1 tầng</a>
                            </li>
                            <li class="nav-item me-0">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-3">Xe 2 tầng</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">
                <!-- tab-1 là tất cả 2 loại xe nè -->
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                        <!-- bắt đầu từ chỗ này cho vòng lặp for đọc trong CSDL ra các tuyến đường nè-->
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Xe 1 tầng</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Quảng Nam</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">70.000 Đ</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                          <!-- kết thúc vòng lặp ở đây -->
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                                <a class="btn btn-primary py-3 px-5" href="">Browse More Property</a>
                            </div>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 text-center">
                                <a class="btn btn-primary py-3 px-5" href="">Browse More Property</a>
                            </div>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="property-item rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <a href=""><img class="img-fluid" src="img/5.jpg" alt=""></a>
                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
                                    </div>
                                    <div class="p-4 pb-0">
                                        <h5 class="text-primary mb-3">$12,345</h5>
                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
                                    </div>
                                    <div class="d-flex border-top">
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Property List End -->


        <!-- Call to Action Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded p-3">
                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
                        <div class="row g-5 align-items-center">
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                                <img class="img-fluid rounded w-100" src="img/4.png" alt="">
                            </div>
                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="mb-4">
                                    <h1 class="mb-3">Liên hệ với chúng tôi ngay</h1>
                                    <p>Hãy cùng đồng hành trên chuyến hành trình về quê hương.</p>
                                </div>
                                <a href="" class="btn btn-primary py-3 px-4 me-2"><i class="fa fa-phone-alt me-2"></i>Liên lạc</a>
                                <a href="" class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Lên lịch Đặt vé</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to Action End -->


        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Thành viên</h1>
                        <p>Các nhà đầu tư cho dự án</p>
                </div>
                <div class="row g-3">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/t1.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Nguyễn Thị Quỳnh Nha</h5>
                                <small>Thành viên 1</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/t3.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Nguyễn Thị Mỹ Lệ</h5>
                                <small>Thành viên 2</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/t2.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Huỳnh Thị Thanh Nhàn</h5>
                                <small>Thành viên 3</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/t4.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Mai Văn Hà</h5>
                                <small>Giảng viên</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Testimonial Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Trải nghiệm của khách hàng!</h1>
                        <p>Dựa trên sự nhiệt tình và ủng hộ của mọi người cho những chuyến xe ngày Tết </p>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>Dịch vụ đặt xe online khá nhanh và thuận tiên... 10 điểm</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Quỳnh Nha</h6>
                                    <small>09/12/2024</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>Thật là tuyệt vời. Dịch vụ đặt xe online khá nhanh và thuận tiện</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Mỹ Lệ</h6>
                                    <small>15/12/2024</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item bg-light rounded p-3">
                        <div class="bg-white border rounded p-4">
                            <p>Quá may mắn mình đã đặt vé kịp...Dịch vụ đặt xe online khá nhanh và thuận tiên</p>
                            <div class="d-flex align-items-center">
                                <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-3.jpg" style="width: 45px; height: 45px;">
                                <div class="ps-3">
                                    <h6 class="fw-bold mb-1">Thanh Nhàn</h6>
                                    <small>16/12/2024</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
        

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Liên hệ</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>57 Nguyễn Lương Bằng, Đà Nẵng, Việt Nam</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+0704407803</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>bachkhoaDN@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Liên kết nhanh</h5>
                        <a class="btn btn-link text-white-50" href="">Về chúng tôi</a>
                        <a class="btn btn-link text-white-50" href="">Liên hệ chúng tôi</a>
                        <a class="btn btn-link text-white-50" href="">Dịch vụ </a>
                        <a class="btn btn-link text-white-50" href="">Chính sách bảo mật</a>
                        <a class="btn btn-link text-white-50" href="">Thời hạn & điều kiện</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Thư viện ảnh</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Bài báo</h5>
                        <p>Cùng trải nghiệm.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Nhập email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">Đăng ký</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Nha - Lệ - Nhàn</a>, Chúng tôi là nhất. 
							
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Trang chủ</a>
                                <a href="">Liên hệ</a>
                                <a href="">Trợ giúp</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>