<!DOCTYPE html>
<html lang="en">

<head>
    @include('admin.css')

    <style type="text/css">
        .div_center {
            text-align: center;
            padding-top: 40px;
        }

        .h2_font {
            font-size: 40px;
            padding-bottom: 40px;
        }

        .text_color {
            color: black;
            padding-bottom: 20px;
        }

        .table_center {
            margin: auto;
            width: 50%;
            text-align: center;
            margin-top: 30px;
            border: 3px solid white;
        }

        label {
            display: inline-block;
            width: 200px;
        }

        .div_design {
            padding-bottom: 15px;
        }
    </style>

</head>

<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->
        @include('admin.header')


        <div class="main-panel">
            <div class="content-wrapper">

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

                <div class="div_center">
                    <h2 class="h2_font">Add Product</h2>

                    <form action="{{ url('/store_product ') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="div_design">
                            <label for="">Product Title :</label>
                            <input class="text_color" type="text" name="title" placeholder="Write a title"
                                required>
                        </div>
                        <div class="div_design">
                            <label for="">Product Description :</label>
                            <input class="text_color" type="text" name="description"
                                placeholder="Write a description">
                        </div>
                        <div class="div_design">
                            <label for="">Product Price :</label>
                            <input class="text_color" type="number" name="price" min="0"
                                placeholder="Write a price" required>
                        </div>
                        <div class="div_design">
                            <label for="">Discount Price :</label>
                            <input class="text_color" type="number" name="dis_price"
                                placeholder="Write a discount price">
                        </div>
                        <div class="div_design">
                            <label for="">Product Quantity :</label>
                            <input class="text_color" type="number" min="0" name="quantity"
                                placeholder="Write a quantity" required>
                        </div>

                        <div class="div_design">
                            <label for="">Product Category :</label>
                            <select class="text_color" name="category" id="" required>
                                <option value="" selected>Add a Category here</option>
                                @foreach ($category as $category)
                                    <option value="{{ $category->category_name }}">{{ $category->category_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="div_design">
                            <label for="">Product Image :</label>
                            <input type="file" name="image" required>
                        </div>
                        <div class="div_design">
                            <input class="btn btn-primary" type="submit" value="Add Product">
                        </div>
                    </form>
                </div>

            </div>
        </div>


        <!-- plugins:js -->
        @include('admin.script')
        <!-- End custom js for this page -->
</body>

</html>
