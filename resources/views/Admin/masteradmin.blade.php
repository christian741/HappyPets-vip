<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Happy Pets-@yield('title')</title>
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    @yield('css')
</head>
<style>
    .dropbtn {
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }
    .grid-header{
        display: grid;
         grid-template-columns: repeat(6,1fr);
    }
    .grid-header{
        display: grid;
         grid-template-columns: repeat(6,1fr);
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }
    .nav-item{
        list-style: none;
        text-align: center;
    }

</style>
<header>
    <header>
        <nav class="position-sticky navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="tittle navbar-brand" href="/home">Happy Pets V.I.P</a>

                <div class="collapse navbar-collapse " id="navbarColor01">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a  class="nav-link active"  href="{{ url('/admin') }}">Home</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link active"  href="{{ url('/sellsToday') }}" class="">Pedidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active"  href="{{ url('/sellsToday') }}" class="">Ventas Hoy</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Clientes</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="{{ url('/customers') }}">Ver Clientes</a>
                                <a class="dropdown-item" href="{{ url('/createCustomer') }}" class="">Crear Cliente</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Productos</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="{{ url('/products') }}">Ver Productos</a>
                                <a class="dropdown-item" href="{{ url('/createProducts') }}" class="">Crear Productos</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Peluquería</a>
                            <div class="dropdown-menu">
                                <a  class="dropdown-item"  href="{{ url('/createPets') }}">Crear Peludito</a>
                                <a class="dropdown-item" href="/viewService">Ver Servicios</a>
                                <a class="dropdown-item" href="/createServicesHair">Crear Servicio</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown d-flex">
                            <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Perfil</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/viewService">Ver Servicios</a>
                                <a class="dropdown-item" href="/createServicesHair">Crear Servicio</a>
                              <div class="dropdown-divider"></div>
                              <form method="POST" action="{{ route('logout.post') }}">
                                @csrf
                                <input type="submit" name="btn-registrar" class="btn btn-primary dropdown-item" value="Cerrar Sesión" />
                            </form>
                            </div>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container-fluid">
        <ul class="grid-header">
            
        </ul>
    </div>
</header>

<body>
    @yield('content')
    @yield('js')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>

</html>
