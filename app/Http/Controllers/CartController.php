<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
    private $product;

    public function index(Request $request, $id)
    {
        $this->product = Product::find($id);
        Cart::add([
            'id'            => $this->product->id,
            'name'          => $this->product->name,
            'price'         => $this->product->selling_price,
            'quantity'      => $request->quantity,
            'attributes'    => [
                'image'     => $this->product->image,
                'category'  => $this->product->category->name,
                'brand'     => $this->product->brand->name,
            ]
        ]);
        return redirect('/cart/show-item');
    }

    public function show()
    {
        return view('website.cart.index', [
            'cart_products' => Cart::getContent(),
        ]);
    }

    public function remove($id)
    {
        Cart::remove($id);
        return redirect('/cart/show-item')->with('message', 'Cart product info remove successfully.');
    }

    public function update(Request $request, $id)
    {
        Cart::update($id, [
            'quantity' => [
                'relative'  => false,
                'value'     => $request->quantity,
            ],
        ]);
        return redirect('/cart/show-item')->with('message', 'Cart product info update successfully.');
    }
}
