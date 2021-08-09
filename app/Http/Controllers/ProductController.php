<?php

namespace App\Http\Controllers;
//Data Base
//use Illuminate\Support\Facades\DB;
use App\Models\TypesProduct;
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
        $request->user()->authorizeRoles(['admin','superAdmin']);
        $products = Product::orderBy('name', 'ASC')
            ->name($name)
            ->paginate(15);
        return view('Admin.Products.paginationProducts', compact('products'));
    }

    public function create_Products(Request $request)
    {
        $request->user()->authorizeRoles(['admin','superAdmin']);
        $rules = array(
            'name' => ['required', 'string'],
            'price' => ['required', 'numeric'],
            'quantity' => ['required', 'numeric'],
            'percentaje' => ['required','numeric','min:1','max:100'],
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
        }else{
            $nameImage = 'sinfoto.png';
        }
        $total_price= $request->price * $request->quantity;
        $price_sell = ($request->price*($request->percentaje/100))+($request->price);
        $ganancy = ((($request->price*($request->percentaje/100))+($request->price))*$request->quantity)-$total_price;
        $product = Product::create([
            'name' => $request->name,
            'description' => $request->description,
            'price' => $request->price,
            'quantity' =>  $request->quantity,
            'total_price_proovedor'=>  $total_price,
            'ganancy'=> $ganancy,
            'percentaje'=>$request->percentaje,
            'price_sell'=>$price_sell,
            'photo'=> $nameImage,
            'types_products_id'=> $request->typeProducts
        ]);
        return redirect('/createProducts')->with('message', 'Registro exitoso');
    }
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        $typeProducts = TypesProduct::all();
        return view('Admin.Products.productEdit', compact('product','typeProducts'));
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);
        $typeProducts = TypesProduct::all();
        return view('Admin.Products.productView', compact('product','typeProducts'));
    }

    public function deleteUser(Request $request,$id)
    {

    }

    public function edit_Products(Request $request)
    {
        $product = Product::find($request->id);
        $request->user()->authorizeRoles(['superAdmin']);
        $rules = array(
            'name' => ['required', 'string'],
            'price' => ['required', 'numeric'],
            'quantity' => ['required', 'numeric'],
            'percentaje' => ['required','numeric','min:1','max:200'],
            'typeProducts' => ['required'],
            'img_file' => ['mimes:jpeg,jpg,png,gif']
        );
        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return redirect('getProducts/'.$product->id)
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
        }else{
            $nameImage = 'sinfoto.png';
        }
        $total_price= $request->price * $request->quantity;
        $price_sell = ($request->price*($request->percentaje/100))+($request->price);
        $ganancy = ((($request->price*($request->percentaje/100))+($request->price))*$request->quantity)-$total_price;
      
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->quantity =  $request->quantity;
        $product->total_price_proovedor=  $total_price;
        $product->ganancy= $ganancy;
        $product->percentaje=$request->percentaje;
        $product->price_sell=$price_sell;
        $product->photo= $nameImage;
        $product->types_products_id= $request->typeProducts;
        
        $product->save();

        return redirect('getProducts/'.$product->id)->with('message', 'Actualización exitosa');
    }

    public function delete_Products(Request $request)
    {
    }
}
