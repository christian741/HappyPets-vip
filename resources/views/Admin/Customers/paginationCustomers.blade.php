@extends('Admin.masteradmin')

@section('title')
    Paginacion Productos
@endsection

@section('content')
    <form id="form_search" method="GET" action="{{ route('customers') }}">
        @csrf
        <div class="container">
            <div class="row">
                <div class="form-group">
                    <label for="">Busqueda de Producto</label>
                    <input type="text" name="cedula_customer" placeholder="Busqueda">
                    <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-search">Busqueda</span>
                    </button>
                </div>
            </div>
        </div>
    </form>
    <div class="container-fluid text-center">
        <h1> Paginacion Productos</h1>
    </div>

    <div class="container mt-5">
        <table class="table table-bordered mb-5">
            <thead>
                <tr class="table-success">
                    <th scope="col">#</th>
                    <th scope="col">Cedula</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Email</th>
                    <th scope="col">Procentaje Ganancia</th>
                    <th scope="col">Precio Venta</th>
                    <th>Total Precio</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <input type="hidden" name="" value="{{$i=1}}">
                @foreach ($customers as $data)
                    <tr>
                        <th scope="row">{{ $i++ }}</th>
                        <td>{{ $data->cedula }}</td>
                        <td>{{ $data->name }}</td>
                        <td>{{ $data->lastname }}</td>
                        <td>{{ $data->email }}</td>
                        <td>
                            <form method="GET" action="{{ route('seeProduct.get') }}">
                                <input type="hidden" name="id" value="{{$data->id}}">
                                <input type="submit" name="btn-registrar" class="btn btn-info"  value="Ver" />
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        {{-- Pagination --}}
        <div class="d-flex justify-content-center">
            {!! $customers->links() !!}
        </div>
    </div>


@endsection
