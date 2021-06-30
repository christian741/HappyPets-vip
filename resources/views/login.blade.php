@extends('welcome')

@section('title')
    Register
@endsection

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <h3>Registro Usuarios</h3>
    <form method="POST" action="api/login">
        @csrf
        <div class="row pt-3">
            <label for="email">Email:</label>
            <input type="email" name="email" placeholder="Digite su Email">
        </div>
        <div class="row pt-3">
            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="Digite su password">
        </div>
        <div class="row pt-3">
            <label for="remember_me">Mantener Sesion Iniciada:</label>
            <input type="checkbox" name="remember_me">
        </div>
        <div class="row pt-3">
            <input type="submit" name="btn-registrar" class="btn btn-primary" value="Login" />
        </div>
    </form>

@endsection
