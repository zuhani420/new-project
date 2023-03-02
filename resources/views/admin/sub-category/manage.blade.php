@extends('admin.master')

@section('title')
    Manage Sub Category Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">All Sub Category Information</h4>
                    <h4 class="text-center text-success">{{session('message')}}</h4>
                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL No</th>
                            <th>Category Name</th>
                            <th>Sub Category Name</th>
                            <th>Image</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($sub_categories as $sub_category)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$sub_category->category->name}}</td>
                            <td>{{$sub_category->name}}</td>
                            <td><img src="{{asset($sub_category->image)}}" alt="" height="50" width="70"/></td>
                            <td>{{$sub_category->description}}</td>
                            <td>{{$sub_category->status == 1 ? 'Published' : 'Unpublished'}}</td>
                            <td>
                                <a href="{{route('sub-category.edit', ['id' => $sub_category->id])}}" class="btn btn-outline-success">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="{{route('sub-category.delete', ['id' => $sub_category->id])}}" class="btn btn-outline-danger">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
