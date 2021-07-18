<?php

namespace App\Http\Controllers;
//Data Base
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
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
            'img_file' => ['mimes:jpeg,jpg,png,gif']
        );
        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return redirect('/createProducts')
                ->withErrors($validator);
        }
        $nameImage = "";
        if($request->img_file!=null){
            $image_resize = Image::make($request->img_file->getRealPath());
            $image_resize->resize(400, null, function ($constraint) {
                $constraint->aspectRatio();
                $constraint->upsize();
            });
            $image_resize->orientate();
            $nameImage = time() . "." . $request->img_file->getClientOriginalName();
            $image_resize->save(public_path('images/products/' . $nameImage));
        }
        $total_price= $request->price * $request->quantity;
        $price_sell = ($request->price*($request->percentaje/100))+($request->price);
        $product = Product::create([
            'name' => $request->name,
            'description' => $request->description,
            'email' => $request->email,
            'price' => $request->price,
            'quantity' =>  $request->quantity,
            'total_price'=>  $total_price,
            'percentaje'=>$request->percentaje,
            'price_sell'=>$price_sell,
            'photo'=>'sinfoto',
            'types_products_id'=> $request->typeProducts
        ]);
        return redirect('/createProducts')->with('message', 'Registro exitoso');
    }

    public function edit_Products(Request $request)
    {
        $product = Product::find($request->id);
       
        return redirect('Admin.Products.createProduct')->with('message', 'Registro exitoso');
    }
    public function delete_Products(Request $request)
    {
    }
}
