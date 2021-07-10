@extends('Admin.masteradmin')

@section('title')
    Crear Mascota
@endsection

@section('content')
<h1>Crear Mascota</h1>
<form action="">
    @csrf
    <div>
        <label for="cedula">Cedula</label>
        <input type="text" name="cedula" placeholder="Digite la Cedula">
    </div>
    <div class="row pt-3">
        <label for="name">Nombres:</label>
        <input type="text" name="name" placeholder="Digite sus Nombres">
    </div>
    <div class="row pt-3">
        <label for="lastname">Apellidos:</label>
        <input type="text" name="lastname" placeholder="Digite sus Apellidos">
    </div>
    <div class="row pt-3">
        <label for="cellphone">Celular:</label>
        <input type="text" name="cellphone" placeholder="Digite su Celular">
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