@extends('welcome')

@section('title')
    Register
@endsection

@section('content')

    @if (session()->has('message'))
        <div class="alert alert-success">
            {{ session()->get('message') }}
        </div>
    @endif




    <div class="container-fluid pt-5">
        <div class="container_500 card">
            <div class="card-body card-border bg-card">
                <div class="align-items-center text-center col-md-12">
                    <h3>Login</h3>
                </div>
                <form class="" method="POST" action="{{ route('login.post') }}">
                    @csrf
                    <div class="col-md-12">
                        <div class="form-group row">
                            <label for="email">Email:</label>
                            <input class="form-control" type="email" name="email" placeholder="Digite su Email">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group row">
                            <label for="password">Password:</label>
                            <input class="form-control" type="password" name="password" placeholder="Digite su password">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-check row">
                            <input class="form-check-input" type="checkbox" name="remember_me">
                            <label class="form-check-label" for="remember_me">Mantener Sesion Iniciada:</label>
                        </div>
                    </div>
                    <div class="col-md-12 pt-3">
                        <div class="form-group row">
                            <input type="submit"  name="btn-registrar" class="form-control btn btn-primary" value="Login" />
                        </div>
                        @if ($errors->any())
                        <div class="alert alert-danger">
                            <h2>Alerta</h2>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    </div>
                </form>
            </div>
        </div>



    </div>


@endsection
