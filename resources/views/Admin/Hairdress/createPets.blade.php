@extends('Admin.masteradmin')

@section('title')
    Crear Mascota
@endsection

@section('content')
<h1>Crear Mascota</h1>
<form action="">
    @csrf
    <div>
        <label for="cedula">Cedula Propietario</label>
        <input type="text" name="cedula" placeholder="Digite la Cedula">
    </div>
    <div class="row pt-3">
        <label for="cellphone">Celular:</label>
        <input type="text" name="cellphone" placeholder="Digite su Celular">
    </div>
    <div class="row pt-3">
        <label for="namepet">Nombre del Peludito:</label>
        <input type="text" name="namepet" placeholder="Digite la Raza">
    </div>
     <div class="row pt-3">
        <label for="raza">Raza:</label>
        <input type="text" name="raza" placeholder="Digite la Raza">
    </div>
    <div class="row pt-3">
        <label for="age">Fecha de Nacimiento:</label>
        <input type="text" name="age" placeholder="">
    </div>
    <div class="row pt-3">
        <label for="genere">Sexo:</label>
        <input type="text" name="genere" placeholder="Digite la Edad">
    </div>
    <div class="row pt-3">
        <label for="address">Dirección:</label>
        <input type="text" name="address" placeholder="Digite la Dirección">
    </div>
    <div class="row pt-3">
        <label for="process">Procedimiento:</label>
        <input type="text" name="process" placeholder="Digite la Dirección">
    </div>
    <div class="row pt-3">
        <label for="vacunes">Vacunas al día:</label>
        <input type="text" name="vacunes" placeholder="Digite la Dirección">
    </div>
    <div class="row pt-3">
        <label for="desparasitation">Desparacitación:</label>
        <input type="text" name="desparasitation" placeholder="Digite la Dirección">
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