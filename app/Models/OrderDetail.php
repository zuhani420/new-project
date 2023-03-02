<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cart;
use App\Models\Product;

class OrderDetail extends Model
{
    use HasFactory;

    private static $orderDetail, $product;

    public static function newOrderDetail($id)
    {
        foreach (Cart::getContent() as $cartItem)
        {
            self::$orderDetail = new OrderDetail();
            self::$orderDetail->order_id = $id;
            self::$orderDetail->product_id = $cartItem->id;
            self::$orderDetail->product_name = $cartItem->name;
            self::$orderDetail->product_price = $cartItem->price;
            self::$orderDetail->product_quantity = $cartItem->quantity;
            self::$orderDetail->save();

            self::$product = Product::find($cartItem->id);
            self::$product->stock_amount = self::$product->stock_amount - $cartItem->quantity;
            self::$product->save();

            Cart::remove($cartItem->id);
        }
    }
}
