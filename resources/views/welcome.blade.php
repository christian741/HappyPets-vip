<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
     <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/responsive.css') }}" rel="stylesheet">
    <link href="{{ asset('css/images.css') }}" rel="stylesheet">
    <title>Happy Pets-@yield('title')</title>
</head>
<header>
    <nav class="position-sticky navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <img class="logo" src="{{ asset('images/main/logito2.PNG') }}" alt="">
            <div class="tittle" href="/home">Happy Pets V.I.P</div>
            <div class="text-right align-items-right collapse navbar-collapse " id="navbarColor01">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ url('/home') }}">Home
                            <i class="bi bi-house-fill"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ route('login') }}">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ route('register') }}">Registarse</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<body>
    @yield('content')
</body>

<footer>
    <div class="container-fluid">
        <div class="container">
            
        </div>
    </div>
</footer>
</html>
