@extends('welcome')

@section('title')
    Registrar
@endsection

@section('content')
    <div class="container-fluid">
        <h3>Registrar Usuario</h3>
        <div class="container container_500 justify-content-center">
            <form class="" method="POST" action="{{ route('register.post') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group row">
                    <img id="image_profile" src="{{ asset('images/users/sinfoto.png') }}" alt="..." class="rounded-circle" width="800px" height="800px">
                </div>
                <div class="form-group row">
                    <label for="photo">Foto:</label>
                    <input type="file" name="img_file" >
                </div>
                <div class="form-group row">
                    <label for="cedula">Cédula:</label>
                    <input class="form-control" type="text" name="cedula" placeholder="Digite sus Nombres">
                </div>
                <div class="form-group row">
                    <label for="name">Nombres:</label>
                    <input class="form-control" type="text" name="name" placeholder="Digite sus Nombres">
                </div>
                <div class="form-group row">
                    <label for="lastname">Apellidos:</label>
                    <input class="form-control"type="text" name="lastname" placeholder="Digite sus Apellidos">
                </div>
                <div class="form-group row">
                    <label for="cellphone">Celular:</label>
                    <input class="form-control" type="text" name="cellphone" placeholder="Digite su Celular">
                </div>
                <div class="form-group row">
                    <label for="email">Email:</label>
                    <input class="form-control" type="email" name="email" placeholder="Digite su Email">
                </div>
                <div class="form-group row">
                    <label for="cedula">Password:</label>
                    <input class="form-control" type="password" name="password" placeholder="Digite su password">
                </div>
                <div class="form-group row">
                    <input type="submit" name="btn-registrar" class="btn btn-primary" value="Registrar" />
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

    </div>

@endsection
