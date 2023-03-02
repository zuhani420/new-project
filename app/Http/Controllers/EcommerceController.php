<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class EcommerceController extends Controller
{
    public function index()
    {

        return view('website.home.index', [
            'products'  => Product::where('status', 1)->orderBy('id', 'desc')->take(8)->get(),
        ]);
    }

    public function category($id)
    {
        return view('website.category.index', [
            'products' => Product::where('category_id', $id)->orderBy('id', 'desc')->get()
        ]);
    }

    public function detail($id)
    {
        return view('website.detail.index', [
            'product' => Product::find($id),
        ]);
    }
}
