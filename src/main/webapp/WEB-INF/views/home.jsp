<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIPLookUp</title>

    <!-- External Libraries -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e3831a00ca.js" crossorigin="anonymous"></script>

    <!-- Custom Styles -->
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>

    <div class="sl-container col-100 common"
         style="background-image: url('/assets/images/banner-1.jpg'); background-position: center; background-size: cover; background-repeat: no-repeat;">

        <!-- Header & Navigation -->
        <div class="sl-main col-100 common align flex-col">
            <div class="navigation col-100 common-bet">
                <div class="nav-logo col-20 common align">
                    <a href="/view/home">SIPLookUp</a>
                </div>
                <div class="nav-links col-50 common-even align">
                    <a href="/view/home" class="active">Home</a>
                    <a href="/view/category">Products</a>
                    <a href="/view/compare">Compare</a>
                    <a href="/view/contact">Contact</a>
                    <a href="/view/profile">Profile</a>
                    <a href="/view/logout">Logout</a>
                </div>
            </div>

            <!-- Hero Section -->
            <div class="main col-100 common-even align flex-col">
                <h1 data-aos="fade-down" data-aos-duration="900">
                    Discover and Compare<br>Software Intensive<br>Products
                </h1>
                <p data-aos="fade-up" data-aos-duration="1000">
                    Easily locate and analyze software products across various domains with Siplookup's powerful tool.
                </p>
                <a href="/view/category" class="btn-primary" data-aos="fade-up" data-aos-duration="1200">Let's Get Started</a>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="/assets/js/script.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>
</html>
