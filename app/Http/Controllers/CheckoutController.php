<?php

namespace App\Http\Controllers;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use Illuminate\Http\Request;
use Session;
use Cart;

class CheckoutController extends Controller
{
    public $customer, $order, $orderDetail, $product;

    public function index()
    {
        return view('website.checkout.index');
    }

    public function newOrder(Request $request)
    {

        if (Session::get('customer_id'))
        {
            $this->customer = Customer::find(Session::get('customer_id'));
            $this->validate($request, [
                'delivery_address'  => 'required',
            ]);
        }
        else
        {
            $this->validate($request, [
                'name'              => 'required',
                'email'             => 'required|unique:customers,email',
                'mobile'            => 'required|unique:customers,mobile',
                'delivery_address'  => 'required',
            ], [
                'name.required' => 'Vai...inpout filed faka raikhen na'
            ]);

            $this->customer = Customer::newCustomer($request);
            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
        }

        if ($request->payment_method == 1)
        {
            $this->order = Order::newOrder($request, $this->customer->id);
            OrderDetail::newOrderDetail($this->order->id);
            return redirect('/complete-order')->with('message', 'Congratulation... Your order post successfully. Please wait we will contact with you soon.');
        }

        else
        {
            return view('website.exampleHosted', [
                'customer'      => $this->customer,
                'cart_products' => Cart::getContent(),
                'address' => $request->delivery_address,
            ]);
        }
    }

    public function completeOrder()
    {
        return view('website.checkout.complete-order');
    }
}

