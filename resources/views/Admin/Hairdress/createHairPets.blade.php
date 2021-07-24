@extends('Admin.masteradmin')

@section('title')
    Crear Servicio Peluquería
@endsection

@section('content')
    <div class="container-fluid">
        <h1>Crear Servicio Peluquería</h1>
        <div class="container">
            <form method="POST" action="{{ route('registerServiceHair.post') }}">
                @csrf
                <div class="row">
                    <div class="container-fluid">
                        <h3>Dueño o Cliente</h3>
                    </div>
                    <div class="col-6">
                        <div class="form-group row">
                            <label for="cedula">Cédula:</label>
                            <input class="form-control" type="text" name="cedula" placeholder="Digite sus Nombres">
                        </div>
                        <div class="form-group row">
                            <label for="name">Nombres:</label>
                            <input class="form-control" type="text" name="name" placeholder="Digite sus Nombres">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group row">
                            <label for="cellphone">Celular:</label>
                            <input class="form-control" type="text" name="cellphone" placeholder="Digite su Celular">
                        </div>
                        <div class="form-group row">
                            <label for="lastname">Apellidos:</label>
                            <input class="form-control" type="text" name="lastname" placeholder="Digite sus Apellidos">
                        </div>
                    </div>
                </div>
                <div class="row">
                    
                </div>
                <div class="row">
                    <div class="container-fluid">
                        <h3>Información del Servicio</h3>
                    </div>
                    <div class="form-group row">
                        <label for="observation">Observacion del Servicio:</label>
                        <input type="text" class="form-control" name="observation" placeholder="Digite su observation">
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <div class="form-group row">
                            <label for="buns">Moños:</label>
                            <input type="checkbox" class="form-control" name="buns">
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group row">
                            <label for="shawl">Pañoleta:</label>
                            <input type="checkbox" class="form-control" name="shawl">
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group row">
                            <label for="hygienic">Higienico:</label>
                            <input type="checkbox" class="form-control" name="hygienic">
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="price">Precio Servicio:</label>
                    <input type="text" class="form-control" name="price" placeholder="Digite el precio">
                </div>
                <div class="form-group row text-center">
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
        </div>

    </div>

@endsection
