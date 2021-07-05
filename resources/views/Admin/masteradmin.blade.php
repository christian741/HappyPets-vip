<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Happy Pets-@yield('title')</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="{!! asset('css\app.css') !!}">

</head>
<header class="header">
    <div class="nav_welcome">
        <a href="{{ url('/admin') }}" class="">Home</a>
        <a href="{{ url('/sellsToday') }}" class="">Ventas Hoy</a>
        <a href="{{ url('/products') }}" class="">Ver Productos</a>

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
