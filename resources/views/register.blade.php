@extends('welcome')

@section('title')
    Registrar
@endsection

@section('content')

    <h3>Registrar Usuario</h3>
    <form method="POST" action="{{ route('register.post') }}">
        @csrf
        
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
        <div class="row pt-3">
            <label for="email">Email:</label>
            <input type="email" name="email" placeholder="Digite su Email">
        </div>
        <div class="row pt-3">
            <label for="cedula">Password:</label>
            <input type="password" name="password" placeholder="Digite su password">
        </div>
        <div class="row pt-3">
            <label for="photo">Foto:</label>
            <input type="file" name="img_file">
        </div>
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
