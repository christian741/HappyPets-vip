@extends('Admin.masteradmin')

@section('title')
    Crear Mascota
@endsection

@section('content')
    <h1>Crear Mascota</h1>
    <form id="form_search" method="GET" action="{{ route('createPets.get') }}">
        @csrf
        <div class="container">
            <div class="row">
                <div class="form-group">
                    <label for="">Busqueda de Usuario</label><br>
                    <input type="text" name="cedula" placeholder="Cedula de Usuario"><br>
                    <button type="submit" class="btn btn-outline-black">
                        <span class="">Busqueda</span>
                    </button>
                </div>
            </div>
        </div>
    </form>
    @if ($user==null)
        Busque un Cliente primero Pro favor
    @else
        <div class="container-fluid">
            {{$user->cedula}}
            {{$user->name}}
            {{$user->lastname}}
            {{$user->cellphone}}
            {{$user->email}}
        </div>
        <div class="container-fluid">
            @if (session()->has('message'))
                <div class="alert alert-success">
                    {{ session()->get('message') }}
                </div>
            @endif
            <form  class="" method="POST" action="{{ route('register.post') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group row">
                    <img id="image_profile" src="{{ asset('images/users/sinfoto.png') }}" alt="..." class="rounded-circle" width="800px" height="800px">
                </div>
                <div class="form-group row">
                    <label for="photo">Foto del Peludito:</label>
                    <input type="file" name="img_file" >
                </div>
                <input type="hidden" name="user_cedula" value="{{ $user->cedula }}">
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
                    <input type="date" name="age" placeholder="">
                </div>
                <div class="row pt-3">
                    <label for="genere">Sexo:</label>
                    <select name="genere" class="form-control" id="typeProducts">
                        <option value="selected">Seleccionar tipo de Sexo:</option>
                        <option value="male">Macho</option>
                        <option value="female">Hembra</option>
                    </select>
                </div>
                <div class="row pt-3">
                    <label for="address">Dirección:</label>
                    <input type="text" name="address" placeholder="Digite la Dirección">
                </div>
                <div class="row pt-3">
                    <label for="observations">Observaciones:</label>
                    <input type="text" name="observations" placeholder="Digite la Dirección">
                </div>
                <div class="row pt-3">
                    <label for="vacunes">Vacunas al día:</label>
                    <input type="checkbox" name="vacunes" placeholder="Digite la Dirección">
                </div>
                <div class="row pt-3">
                    <label for="desparasitation">Desparacitación:</label>
                    <input type="checkbox" name="desparasitation" placeholder="Digite la Dirección">
                </div>
                <div class="row pt-3">
                    <label for="esterilization">Esterilización:</label>
                    <input type="checkbox" name="esterilization" placeholder="Digite la Dirección">
                </div>
                <button type="submit" value="Registar Peludito">
                </button>
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
    @endif

@endsection
