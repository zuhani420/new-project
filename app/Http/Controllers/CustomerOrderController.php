<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Session;

class CustomerOrderController extends Controller
{
    public function index()
    {
        return view('website.customer.order', [
            'orders' => Order::where('customer_id', Session::get('customer_id'))->get(),
        ]);
    }
}
