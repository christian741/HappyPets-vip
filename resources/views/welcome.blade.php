<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Happy Pets-@yield('title')</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{!! asset('css\app.css') !!}">
    <link rel="stylesheet" href="{!! asset('css\Main\welcome.css') !!}">

</head>
<header class="header">

    <div class="nav_welcome">
        <a href="{{ url('/home') }}" class="">Home</a>
        <a href="{{ route('login') }}" class="">Log in</a>
            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
    </div>



</header>

<body>
    @yield('content')
</body>

</html>
