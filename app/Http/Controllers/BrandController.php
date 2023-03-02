<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index()
    {
        return view('admin.brand.index');
    }

    public function create(Request $request)
    {
        Brand::newBrand($request);
        return back()->with('message', 'Brand info created successfully.');
    }

    public function manage()
    {
        return view('admin.brand.manage', ['brands' => Brand::all()]);
    }

    public function edit($id)
    {
        return view('admin.brand.edit', ['brand' => Brand::find($id)]);
    }

    public function update(Request $request, $id)
    {
        Brand::updateBrand($request, $id);
        return redirect('/brand/manage')->with('massage', 'Brand info updated successfully.');
    }

    public function delete($id)
    {
        Brand::deleteBrand($id);
        return back()->with('massage', 'Brand info deleted successfully.');
    }
}
