<!DOCTYPE html>
<html lang="en">
  <head>
    @include('admin.css')

    <style type="text/css">
        .div_center{
            text-align: center;
            padding-top: 40px;
        }
        .h2_font{
            font-size: 40px;
            padding-bottom: 40px;
        }
        .input_color{
            color: black;
        }
        .table_center{
            margin: auto;
            width: 50%;
            text-align: center;
            margin-top: 30px;
            border: 3px solid white;        
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
                <h2 class="h2_font">Add Category</h2>

                <form action="{{ url('/add_category') }}" method="POST">
                    @csrf
                    <input class="input_color" type="text" name="category" placeholder="Write Category name">
                    <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                </form>
            </div>

            <table class="table_center">
                <tr>
                    <td>Category Name</td>
                    <td>Action</td>
                </tr>

                @foreach ($data as $data)
               
                <tr>
                    <td>{{ $data->category_name }}</td>
                    <td>
                        <a onclick="return confirm('Are you sure to delete this !!!')" class="btn btn-danger" href="{{ url('delete_category',$data->id) }}">Delete</a>
                    </td>
                </tr>
                     
                @endforeach
            </table>

        </div>
    </div>

    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>