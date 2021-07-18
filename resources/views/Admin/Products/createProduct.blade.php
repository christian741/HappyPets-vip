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
                    <input type="file" name="img_file">
                </div>
                <div class="row pt-3">
                    <label for="name">Nombre:</label>
                    <input type="text" name="name" placeholder="Digite sus Nombres">
                </div>
                <div class="row pt-3">
                    <label for="description">Descripcion:</label>
                    <input type="text" name="description" placeholder="Digite sus Apellidos">
                </div>
                <div class="row pt-3">
                    <label for="price">Precio Proovedor:</label>
                    <input type="text" name="price" placeholder="Digite el precio">
                </div>
                <div class="row pt-3">
                    <label for="quantity">Cantidad:</label>
                    <input type="number" name="quantity" placeholder="Digite su Email">
                </div>
                <div class="row pt-3">
                    <label for="percentaje">Porcentaje Ganancia:</label>
                    <input type="number" min="1" max="100" name="percentaje" placeholder="Porcentaje Ganancia">
                </div>
                <label for="types">Escoge un tipo:</label>
                <select name="typeProducts" id="typeProducts">
                    <option value="selected">Seleccionar tipo de producto:</option>
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
