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
                <div class="row pt-3">
                    <label for="observation">Observacion del Servicio:</label>
                    <input type="text" class="text-area" name="observation" placeholder="Digite su observation">
                </div>
                <div class="row pt-3">
                    <label for="price">Precio Servicio:</label>
                    <input type="text" name="price" placeholder="Digite el precio">
                </div>
                <div class="row pt-3">
                    <label for="buns">Moños:</label>
                    <input type="checkbox" name="buns">
                </div>
                <div class="row pt-3">
                    <label for="shawl">Pañoleta:</label>
                    <input type="checkbox" name="shawl">
                </div>
                <div class="row pt-3">
                    <label for="hygienic">Higienico:</label>
                    <input type="checkbox" name="hygienic">
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
