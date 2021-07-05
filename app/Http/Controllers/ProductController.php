<?php

namespace App\Http\Controllers;
//Data Base
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\TypesProduct;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Cierre de sesión (anular el token)
     */
    public function index(Request $request)
    {
        $name  = $request->get('name_product');
        $request->user()->authorizeRoles(['admin']);
        $products = Product::orderBy('name', 'ASC')
            ->name($name)
            ->paginate(15);
        return view('Admin.Products.paginationProducts', compact('products'));
    }

    public function create_Products(Request $request)
    {
        //$request->user()->authorizeRoles(['admin']);
        /**
         * Validate the data using validation rules
         */
        $rules = array(
            'name' => ['required', 'string'],
            'price' => ['required', 'numeric'],
            'quantity' => ['required', 'numeric'],
            'typeProducts' => ['required'],
        );
        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return redirect('Admin.Products.createProduct')
                ->withErrors($validator);
        }

        $product = Product::create([
            'name' => $request->name,
            'description' => $request->description,
            'email' => $request->email,
            'price' => $request->price,
            'quantity' =>  $request->quantity,
        ]);
        $product->typesProduct()->attach(TypesProduct::where('id', $request->typeProducts)->first());


        return redirect('createProducts')->with('message', 'Registro exitoso');

        return view('Admin.Sells.sellsToday');
    }
}
