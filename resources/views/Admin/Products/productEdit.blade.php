@extends('Admin.masteradmin')

@section('title')
    Ver Producto
@endsection

@section('content')
    @if (session()->has('message'))
        <div class="alert alert-success">
            {{ session()->get('message') }}
        </div>
    @endif
    <div class="container-fluid">
        <div class="container text-center">
            <h1>Editar Productos</h1>
        </div>
        <form method="POST" action="{{ route('updateProduct.put', ['id' => $product->id]) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="container justify-content-center">
                <div class="row pt-3">
                    <input type="hidden" name="id" value="{{ $product->id }}">
                    @if ($product->photo != null)
                        <img src="{{ $product->photo }}" alt="">
                    @else
                        <img src="{{ asset('images/products/sinfoto.png') }}" alt="">
                    @endif

                    <label for="photo">Foto:</label>
                    <input type="file" class="form-control" name="img_file">
                </div>
                <div class="row pt-3">
                    <label for="name">Nombre Producto:</label>
                    <input type="text" class="form-control" name="name" placeholder="Digite Nombre Producto"
                        value="{{ $product->name }}">
                </div>
                <div class="row pt-3">
                    <label for="description">Descripcion:</label>
                    <input type="text" class="form-control" name="description" placeholder="Digite la Descripción"
                        value="{{ $product->description }}">
                </div>
                <div class="row pt-3">
                    <label for="price">Precio Proovedor:</label>
                    <input type="text" class="form-control" name="price" placeholder="Digite el Precio Proovedor"
                        value="{{ $product->price }}">
                </div>
                <div class="row pt-3">
                    <label for="quantity">Cantidad:</label>
                    <input type="number" class="form-control" name="quantity" placeholder="Digite la Cantidad"
                        value="{{ $product->quantity }}">
                </div>
                <div class="row pt-3">
                    <label for="percentaje">Porcentaje Ganancia 1% a 100%:</label>
                    <input type="number" class="form-control" min="1" max="100" name="percentaje"
                        placeholder="Porcentaje Ganancia" value="{{ $product->percentaje }}">
                </div>
                <label for="types">Escoge un tipo:</label>
                <select name="typeProducts" class="form-control" id="typeProducts">
                    @foreach ($typeProducts as $type)
                        @if ($type->id == $product->types_products_id)
                            <option selected value="{{ $type->id }}">{{ $type->name }}</option>
                        @else
                            <option value="{{ $type->id }}">{{ $type->name }}</option>
                        @endif
                    @endforeach
                </select>
                <div class="row pt-3">
                    <input type="submit" name="btn-registrar" class="btn btn-primary" value="Editar" />
                </div>
            </div>
        </form>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger" style="background-color: red;color:white">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
@endsection
