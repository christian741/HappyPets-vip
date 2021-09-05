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
        $arrayNames = [];
        $request->user()->authorizeRoles(['admin','superAdmin']);
        $name  = $request->get('name_product');
        $now = (new \DateTime)->format('Y-m-d');
        $sells = Sell::whereDate('created_at', $now)->get();
        $totalPrice  = 0;
        if($sells!=null){
            foreach($sells as $sell){
                $totalPrice = $totalPrice + ($sell->price*$sell->quantity);
                array_push($arrayNames,$this->getProductToday($sell));
            }
        }
        $products = Product::orderBy('name', 'ASC')
            ->name($name)->where('types_products_id',1)
            ->paginate(4);
        return view('Admin.Sells.sellsToday', compact('products', 'sells','totalPrice','arrayNames'));
    }

    private function createSell($object)
    {
        $product = Product::find($object->id);
        if($object->typePaid=="true"){
            $priceDebt = $object->priceDebt;
        }else{
            $priceDebt = 0;
        }
         
        if($object->sell!=null)
        {  
            Sell::create([
                "product_id" => $object->id,
                "observation" => $object->observation,
                "price" => $object->sell,
                'price_debt' => $priceDebt,
                "quantity" => $object->quantity,
                'typePaid' => $object->typePaid,
                "debt" => $object->debt,
            ]);
        }else{
            Sell::create([
                "product_id" => $object->id,
                "observation" => $object->observation,
                "price" => $object->sell_db,
                'price_debt' => $priceDebt,
                "quantity" => $object->quantity,
                'typePaid' => $object->typePaid,
                "debt" => $object->debt,
            ]);
        }
    }

    private function getProductToday($sell){
        $product = Product::find($sell->product_id);
        return $product->name;
    }

    public function create_sellsToday(Request $request)
    {
        $request->user()->authorizeRoles(['admin','superAdmin']);
        if($request->sell!=null)
        {   
            $rules = array(
                'sell'=>['required','min:100'],
                'quantity' => ['required'],
                'typePaid' => ['required'],
                'debt' => ['required'],
            );
        }else{
            $rules = array(
                'quantity' => ['required'],
                'typePaid' => ['required'],
                'debt' => ['required'],
            );
        }
        $validator = Validator::make($request->all(), $rules);
        $this->createSell($request);
        $name  = $request->get('name_product');
        $now = (new \DateTime)->format('Y-m-d');
        $sells = Sell::whereDate('created_at', $now)->get();
        $products = Product::orderBy('id', 'DESC')
            ->name($name)->where('types_products_id',1)
            ->paginate(4);
        return redirect('sellsToday');
    }
}
