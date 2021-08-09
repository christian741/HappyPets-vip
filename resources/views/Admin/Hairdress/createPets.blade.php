@extends('Admin.masteradmin')

@section('title')
    Crear Mascota
@endsection

@section('content')
<h1>Crear Mascota</h1>
<form id="form_search" method="GET" action="{{ route('') }}">
    @csrf
    <div class="container">
        <div class="row">
            <div class="form-group">
                <label for="">Busqueda de Dueño</label>
                <input type="text" name="name_product" placeholder="Busqueda">
                <button type="submit" class="btn btn-light">
                    <span class="glyphicon glyphicon-search">Busqueda</span>
                </button>
            </div>
        </div>
    </div>
</form>
<div class="container-fluid">
   @if ($user)
   @if (session()->has('message'))
   <div class="alert alert-success">
       {{ session()->get('message') }}
   </div>
   @endif
   <form action="">
       @csrf
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
   @else
       Busque el dueño del Peludito
   @endif
</div>
@endsection