@extends('welcome')

@section('title')
    Login
@endsection

@section('content')
    <h3>Login Usuario</h3>
    <form method="POST" action="api/login">
        @csrf
        <div class="row pt-3">
            <label for="email">Email:</label>
            <input type="text" name="email" placeholder="Digite su Email">
        </div>
        <div class="row pt-3">
            <label for="cedula">Password:</label>
            <input type="password" name="password" placeholder="Digite su password">
        </div>
        <div class="row pt-3">
            <input type="submit" name="btn-registrar" class="btn btn-primary" value="Login" />
        </div>
    </form>
@endsection
