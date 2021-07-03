@extends('Admin.masteradmin')

@section('title')
    Crear Productos
@endsection

@section('content')
    <h1> Crear Productos</h1>
    <form method="POST" action="{{ route('registerProducts.post') }}">
        @csrf

        <div class="row pt-3">
            <label for="name">Nombre:</label>
            <input type="text" name="name" placeholder="Digite sus Nombres">
        </div>
        <div class="row pt-3">
            <label for="description">Descrpcion:</label>
            <input type="text" name="description" placeholder="Digite sus Apellidos">
        </div>
        <div class="row pt-3">
            <label for="price">Precio:</label>
            <input type="text" name="price" placeholder="Digite su Celular">
        </div>
        <div class="row pt-3">
            <label for="quantity">Cantidad:</label>
            <input type="number" name="quantity" placeholder="Digite su Email">
        </div>
        <div class="row pt-3">
            <label for="photo">Foto:</label>
            <input type="file" name="img_file">
        </div>
        <label for="types">Escge un tipo:</label>
        <select name="typeProducts" id="typeProducts">
            @foreach ($typeProducts as $type)
                <option value="{{ $type->id }}">{{ $type->name }}</option>
            @endforeach
        </select>
        <div class="row pt-3">
            <input type="submit" name="btn-registrar" class="btn btn-primary" value="Registrar" />
        </div>
    </form>
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
