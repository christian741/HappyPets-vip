@extends('Admin.masteradmin')

@section('title')
    Ver Producto
@endsection

@section('content')
@if ($product->photo!= null)
<img src="{{ $product->photo }}" alt="">
@else
<img src="{{ asset('images/products/sinfoto.png') }}" alt="">
@endif
{{ $product->name }}
{{ $product->description }}
{{ $product->quantity }}
{{ Str::currency($product->price) }} $
{{ $product->percentaje }} %
{{ Str::currency($product->price_sell) }} $
{{ Str::currency($product->total_price) }} $

<form method="GET" action="{{ route('products.editProducts', ['id' => $product->id]) }}">
    <button type="submit" name="btn-registrar" class="btn btn-warning">Editar</button>
</form>
<form method="GET" action="{{ route('products.getProducts', ['id' => $product->id]) }}">
    <button type="submit" name="btn-registrar" class="btn btn-danger">Eliminar</button>
</form>
@endsection