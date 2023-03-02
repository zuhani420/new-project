<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\OtherImage;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $product;

    public function index()
    {
        return view('admin.product.index', [
            'categories'        => Category::where('status', 1)->get(),
            'sub_categories'    => SubCategory::where('status', 1)->get(),
            'brands'            => Brand::where('status', 1)->get(),
            'units'             => Unit::where('status', 1)->get(),
        ]);
    }

    public function create(Request $request)
    {
        $this->product = Product::newProduct($request);
        OtherImage::newOtherImage($request, $this->product->id);
        return back()->with('message', 'Product info created.');
    }

    public function manage()
    {
        return view('admin.product.manage', [
            'products' => Product::all(),
        ]);
    }

    public function detail($id)
    {
        return view('admin.product.detail', ['product' => Product::find($id)]);
    }

    public function edit($id)
    {
        return view('admin.product.edit', [
            'product'           => Product::find($id),
            'categories'        => Category::where('status', 1)->get(),
            'sub_categories'    => SubCategory::where('status', 1)->get(),
            'brands'            => Brand::where('status', 1)->get(),
            'units'             => Unit::where('status', 1)->get(),
        ]);
    }

    public function update(Request $request, $id)
    {
        Product::updateProduct($request, $id);
        if ($request->file('other_image'))
        {
            OtherImage::updateOtherImage($request, $id);
        }
        return redirect('/product/manage')->with('message', 'Product info updated.');
    }

    public function delete($id)
    {
        return $id;
    }
}
