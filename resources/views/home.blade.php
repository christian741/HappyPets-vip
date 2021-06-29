<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Happy Pets-@yield('title')</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">


</head>
<header>
    
    @if (Route::has('login'))
    <div class="">
        @auth
        <a href="{{ url('/home') }}" class="">Home</a>
        @else
        <a href="{{ route('login') }}" class="">Log in</a>

        @if (Route::has('register'))
        <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a>
        @endif
        @endauth
    </div>
    @endif

    
</header>

<body>
    @yield('content')
</body>

</html>