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
    <!-- Custom styles for this template -->
    <link href="home/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="home/css/responsive.css" rel="stylesheet" />


    <style type="text/css">
        .center{
            margin: auto;
            width: 50%;
            text-align: center;
            padding: 30px;
        }
        table,th,td{
            border: 1px solid gray;
        }
        .th_deg{
            font-size: 20px;
            padding: 5px;
            background: skyblue;
        }
        .img_deg{
            width: 100px;
            height: 100px;
        }
        .total_deg{
            font-size: 15px;
            padding: 20px;
        }
        .button a{
            padding: 2px 6px;
            margin: 5px;
            font-size: 15px;
        }
    </style>
</head>

<body>
    <div class="hero_area">
        <!-- header section strats -->
        @include('home.header')
        <!-- end header section -->

        <div>
            @if (session()->has('message'))
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    {{ session()->get('message') }}
                </div>
            @endif
        </div>

    <div class="center">
        <table>
            <tr>
                <th class="th_deg">Product Title</th>
                <th class="th_deg">Product Quantity</th>
                <th class="th_deg">Price</th>
                <th class="th_deg">Image</th>
                <th class="th_deg">Action</th>
            </tr>
            
            <?php $totalPrice=0; ?>
            @foreach ($cart as $cart)
                <tr>
                    <td>{{ $cart->product_title }}</td>
                    <td>{{ $cart->quantity }}</td>
                    <td>${{ $cart->price }}</td>
                    <td>
                        <img class="img_deg" src="/product/{{ $cart->image }}" alt="">
                    </td>
                    <td class="button">
                        <a onclick="return confirm('Are you sure to remove this product!!')" class="btn btn-danger" href="{{ url('remove_cart',$cart->id) }}">Remove Product</a>
                    </td>
                </tr>

                <?php $totalPrice = $totalPrice + $cart->price; ?>
            @endforeach
        </table>

        <div>
            <h1 class="total_deg">Total Price :  ${{ $totalPrice }}</h1>
        </div>

        <div>
            <h1 style="font-size:25px;padding-bottom:15px;">Proceed to Order</h1>
            <a class="btn btn btn-primary" href="{{ url('cash_order') }}">Cash On Delivery</a>
            <a class="btn btn btn-primary" href="{{ url('stripe',$totalPrice) }}">Pay Using Card</a>
            <a class="btn btn btn-primary" href="{{ url('ssl') }}">SSLCommerz</a>
        </div>

    </div>


    <!-- footer start -->
    <div class="cpy_">
        <p class="mx-auto">© 2024, All Rights Reserved By <a href="">SS</a><br>
        
           Developed By <a href="" target="_blank">SS</a>
        
        </p>
     </div>
    <!-- jQery -->
    <script src="home/js/jquery-3.4.1.min.js"></script>
    <!-- popper js -->
    <script src="home/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="home/js/bootstrap.js"></script>
    <!-- custom js -->
    <script src="home/js/custom.js"></script>
</body>

</html>
