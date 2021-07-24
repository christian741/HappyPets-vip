@extends('Admin.masteradmin')

@section('title')
    Crear Productos
@endsection

@section('content')
   
    <div class="container-fluid">
        <div class="container text-center">
            <h1> Crear Productos</h1>
        </div>
        <form method="POST" action="{{ route('registerProducts.post') }}" enctype="multipart/form-data">
            @csrf
            <div class="container justify-content-center">
                <div class="row pt-3">
                    <label for="photo">Foto:</label>
                    <input type="file" class="form-control" name="img_file">
                </div>
                <div class="row pt-3">
                    <label for="name">Nombre Producto:</label>
                    <input type="text" class="form-control" name="name" placeholder="Digite Nombre Producto">
                </div>
                <div class="row pt-3">
                    <label for="description">Descripcion:</label>
                    <input type="text" class="form-control" name="description" placeholder="Digite la Descripción">
                </div>
                <div class="row pt-3">
                    <label for="price">Precio Proovedor:</label>
                    <input type="text" class="form-control" name="price" placeholder="Digite el Precio Proovedor" value="">
                </div>
                <div class="row pt-3">
                    <label for="quantity">Cantidad:</label>
                    <input type="number" class="form-control" name="quantity" placeholder="Digite la Cantidad">
                </div>
                <div class="row pt-3">
                    <label for="percentaje">Porcentaje Ganancia 1% a 100%:</label>
                    <input type="number" class="form-control" min="1" max="100" name="percentaje" placeholder="Porcentaje Ganancia">
                </div>
                <label for="types">Escoge un tipo:</label>
                <select name="typeProducts" class="form-control" id="typeProducts">
                    <option  value="selected">Seleccionar tipo de producto:</option>
                    @foreach ($typeProducts as $type)
                        <option value="{{ $type->id }}">{{ $type->name }}</option>
                    @endforeach
                </select>
                <div class="row pt-3">
                    <input type="submit" name="btn-registrar" class="btn btn-primary" value="Registrar" />
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
