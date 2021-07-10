@extends('Admin.masteradmin')

@section('title')
    Crear Servicio Peluquería
@endsection

@section('content')
  <h1>Crear Servicio Peluquería</h1>

  <form method="POST" action="{{ route('registerProducts.post') }}">
    @csrf
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
    <div class="row pt-3">
        <label for="photo">Foto:</label>
        <input type="file" name="img_file">
    </div>
    <label for="types">Escoge un tipo:</label>
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
