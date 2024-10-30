<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="images/favicon.png" type="">
    <title>OnlineMart</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
    <!-- font awesome style -->
    <link href="home/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
    <link href="home/css/aos/aos.css" rel="stylesheet">
    <link href="home/css/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="home/css/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="home/css/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="home/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="home/css/responsive.css" rel="stylesheet" />
</head>

<body>
    <div class="hero_area">
        <!-- header section strats -->
        @include('home.header')
        <!-- end header section -->
        <!-- slider section -->
        @include('home.slider')
        <!-- end slider section -->
    </div>
    <!-- why section -->
    @include('home.why')
    <!-- end why section -->

    <!-- arrival section -->
    @include('home.new_arrival')
    <!-- stats section -->
    @include('home.stats')
    <!-- end arrival section -->

    <!-- product section -->
    @include('home.product')
    <!-- end product section -->

    <!-- subscribe section -->
    @include('home.subscribe')
    <!-- end subscribe section -->
    <!-- client section -->
    @include('home.client')
    <!-- end client section -->
    @include('home.contact')
    <!-- footer start -->
    @include('home.footer')

<!-- WhatsApp Button  -->
<div id="whatsapp">
    <a href="https://wa.me/+8801980093508" target="_blank" id="toggle1" class="wtsapp">
      <i class="fa-brands fa-whatsapp"></i>
    </a>
   </div>

    <!-- jQery -->
    <script src="home/js/jquery-3.4.1.min.js"></script>
    <!-- popper js -->
    <script src="home/js/popper.min.js"></script>
    <script src="home/css/aos/aos.js"></script>
  <script src="home/css/glightbox/js/glightbox.min.js"></script>
  <script src="home/js/purecounter/purecounter_vanilla.js"></script>
  <script src="home/js/swiper/swiper-bundle.min.js"></script>
    <!-- bootstrap js -->
    <script src="home/js/bootstrap.js"></script>
    <!-- custom js -->
    <script src="home/js/custom.js"></script>
    

      <script>
        document.addEventListener("DOMContentLoaded", function (event) {
          var scrollpos = localStorage.getItem("scrollpos");
          if (scrollpos) window.scrollTo(0, scrollpos);
        });
      
        window.onscroll = function (e) {
          localStorage.setItem("scrollpos", window.scrollY);
        };
      </script>

      
    
</body>

</html>
