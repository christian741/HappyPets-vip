<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\Sell;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;

class SellController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Cierre de sesión (anular el token)
     */
    public function index(Request $request)
    {
        //$request->user()->authorizeRoles(['admin']);
        $name  = $request->get('name_product');
        $now = (new \DateTime)->format('Y-m-d');
        $sells = Sell::whereDate('created_at', $now)->get();
        $totalPrice  = 0;
        foreach($sells as $sell){
            $totalPrice = $totalPrice + ($sell->price*$sell->quantity);
        }
        $products = Product::orderBy('name', 'ASC')
            ->name($name)
            ->paginate(4);
        return view('Admin.Sells.sellsToday', compact('products', 'sells','totalPrice'));
    }

    private function saveMultiplesSells($checks_ids,$checks_paids, $checks_precies, $checks_obvservations)
    {
        $arrDebt = [];
        $arrPrice = [];
        $arrObvs = [];
        foreach ($checks_paids as $key => $n) {
            if($checks_paids[$key]!="selection"){
                if($checks_paids[$key]=="true"){
                    array_push($arrDebt,true);
                }else{
                    array_push($arrDebt,false);
                }
               
            }
        }
        foreach ($checks_precies as $key => $n) {
            if($checks_precies[$key]!=null){
                array_push($arrPrice,$checks_precies[$key]);
            }
        }
        foreach ($checks_obvservations as $key => $n) {
            if($checks_obvservations[$key]!=null){
                array_push($arrObvs,$checks_obvservations[$key]);
            }
        }
        foreach ($checks_ids as $key => $n) {
            $product = Product::find($checks_ids[$key]);
            $arrChecks = Sell::create([
                "product_id" => $checks_ids[$key],
                "observation" => $arrObvs[$key],
                "price" => $product->price,
                "quantity" => $arrPrice[$key],
                "debt" => $arrDebt[$key],
            ]);
        }
    }

    public function create_sellsToday(Request $request)
    {
        //$request->user()->authorizeRoles(['admin']);

        $rules = array(
            'name' => ['required', 'string'],
            'price' => ['required', 'numeric'],
            'quantity' => ['required', 'numeric'],
            'typeProducts' => ['required'],
        );
        $validator = Validator::make($request->all(), $rules);
        $checks_ids = $request->products;
        $checks_paids = $request->debt;
        $checks_precies = $request->prices;
        $checks_obvservations = $request->observation;

        $this->saveMultiplesSells($checks_ids,$checks_paids, $checks_precies, $checks_obvservations);

        $name  = $request->get('name_product');
        $now = (new \DateTime)->format('Y-m-d');
        $sells = Sell::whereDate('created_at', $now)->get();
        $products = Product::orderBy('id', 'DESC')
            ->name($name)
            ->paginate(4);
        return redirect('sellsToday');
    }
}
