<?php

namespace App\Http\Controllers;


use App\Models\Brand;
use App\Models\Category;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

class APIController extends Controller
{
    private $products, $product, $order, $customer, $orderDetail,  $categories;

    public function getAllCategory()
    {
        $this->categories = Category::all();
        foreach ($this->categories as $category)
        {
            $category->sub_category = $category->subCategories;
        }
        return response()->json($this->categories);
    }

    public function getAllTrendingCategory()
    {
        $this->products = Product::orderBy('id', 'desc')->take(8)->get(['id', 'category_id', 'name', 'selling_price', 'image']);
        foreach ($this->products as $product)
        {
            $product->image         = asset($product->image);
            $product->category_name = $product->category->name;
        }
        return response()->json($this->products);
    }

    public function getCategoryProduct($id)
    {
        $this->products = Product::where('category_id', $id)->get();
        foreach ($this->products as $product)
        {
            $product->image         = asset($product->image);
            $product->category_name = $product->category->name;
        }
        return response()->json($this->products);
    }

    public function getProductById($id)
    {
        $this->product              = Product::find($id);
        $this->product->image       = asset($this->product->image);
        $this->product->other_images= $this->product->otherImages;
        foreach ($this->product->other_images as $other_image)
        {
            $other_image->image = asset($other_image->image);
        }
        return response()->json($this->product);
    }

    public function newOrder(Request $request)
    {
        $this->customer = new Customer();
        $this->customer->name       = $request->customer['name'];
        $this->customer->email      = $request->customer['email'];
        $this->customer->password   = bcrypt($request->customer['mobile']);
        $this->customer->mobile     = $request->customer['mobile'];
        $this->customer->address    = $request->customer['address'];
        $this->customer->token      = Str::random('25');
        $this->customer->save();


        $this->order = new Order();
        $this->order->customer_id   = $this->customer->id;
        $this->order->order_total   = $request->orderTotal;
        $this->order->tax_amount    = $request->taxTotal;
        $this->order->shipping_cost = $request->shippingTotal;
        $this->order->order_date    = date('Y-m-d');
        $this->order->order_timestamp = strtotime(date('Y-m-d'));
        $this->order->payment_type    =  $request->customer['paymentType'];
        $this->order->delivery_address=  $request->customer['address'];
        $this->order->save();

        foreach ($request->products as $product)
        {
            $this->orderDetail = new OrderDetail();
            $this->orderDetail->order_id    = $this->order->id;
            $this->orderDetail->product_id  = $product['id'];
            $this->orderDetail->product_name  = $product['name'];
            $this->orderDetail->product_price  = $product['price'];
            $this->orderDetail->product_quantity  = $product['qty'];
            $this->orderDetail->save();
        }

        return response()->json([
            'success'   => true,
            'id'        => $this->customer->id,
            'name'      => $this->customer->name,
            'token'     => $this->customer->token,
        ]);
    }

    public function logout(Request $request)
    {
        $this->customer = Customer::where('token', $request->token)->first();
        if ($this->customer)
        {
            $this->customer->token = '';
            $this->customer->save();

            return response()->json([
                'success'   => true,
            ]);
        }
    }
}
