<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Happy Pets-@yield('title')</title>

    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

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

</style>
<header>

    <div class="container-fluid">
        <ul class="">
            <li class="nav-item">
                <a href="{{ url('/admin') }}" class="">Home</a>
            </li>
            <li class="nav-item">
                <a href="{{ url('/sellsToday') }}" class="">Ventas Hoy</a>
            </li>
            <li class="nav-item">
                <div class="dropdown">
                    <button class="dropbtn">Productos</button>
                    <div class="dropdown-content">
                        <a href="{{ url('/products') }}">Ver Productos</a>
                        <a href="{{ url('/createProducts') }}" class="">Crear Productos</a>
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <div class="dropdown">
                    <button class="dropbtn">Peluquería</button>
                    <div class="dropdown-content">
                        <a href="/viewService">Ver Servicios</a>
                        <a href="/createServicesHair">Crear Servicio</a>
                    </div>
                </div>
            </li>
        </ul>

        <form method="POST" action="{{ route('logout.post') }}">
            @csrf
            <input type="submit" name="btn-registrar" class="btn btn-primary" value="Log-out" />
        </form>
    </div>
</header>

<body>
    @yield('content')
</body>

</html>
