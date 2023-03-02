<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class AdminOrderController extends Controller
{
    public function manage()
    {
        return view('admin.order.index', [
            'orders' => Order::orderBy('id', 'desc')->get()
        ]);
    }

    public function detail($id)
    {
        return view('admin.order.detail', ['order' => Order::find($id)]);
    }

    public function invoice($id)
    {
        return view('admin.order.invoice', ['order' => Order::find($id)]);
    }

    public function printOrder($id)
    {
        return view('admin.order.print');
    }

    public function edit($id)
    {
        return view('admin.order.edit');
    }

    public function delete($id)
    {
        return $id;
    }
}
