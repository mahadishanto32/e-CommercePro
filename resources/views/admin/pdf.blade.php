<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order PDF</title>

    <style type="text/css">
    h1{
        margin: auto;
        text-align: center;
    }
    </style>
</head>

<body>
    <h1>Order Details</h1>
    Customer Name :<h3>{{ $order->name }}</h3>
    Customer Email :<h3>{{ $order->email }}</h3>
    Customer Phone :<h3>{{ $order->phone }}</h3>
    Customer Address :<h3>{{ $order->address }}</h3>
    Customer Id :<h3>{{ $order->user_id }}</h3>
    Product Name :<h3>{{ $order->product_title }}</h3>
    Product Price :<h3>{{ $order->price }}</h3>
    Product Quantity :<h3>{{ $order->quantity }}</h3>
    Payment status :<h3>{{ $order->payment_status }}</h3>
    Product Id: <h3>{{ $order->product_id }}</h3>

    <br>
    Product Image: <h3>
        <img style="height: 200px; width:300px" src="product/{{ $order->image }}" alt="">
    </h3>
</body>

</html>
