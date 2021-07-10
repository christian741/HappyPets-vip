@extends('Admin.masteradmin')

@section('title')
    Paginacion Productos
@endsection

@section('content')
    <form id="form_search" method="GET" action="{{ route('products') }}">
        @csrf
        <label for="">Busqueda de Producto</label>
        <input type="text" name="name_product" placeholder="Busqueda">
        <div class="form-group">
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search">Busqueda</span>
            </button>
        </div>
    </form>
    <h1> Paginacion Productos</h1>
    <div class="container mt-5">
        <table class="table table-bordered mb-5">
            <thead>
                <tr class="table-success">
                    <th scope="col">#</th>
                    <th scope="col">Nombre Producto</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Procentaje</th>
                    <th scope="col">Precio Venta</th>
                    <th>Total Precio</th>
                </tr>
            </thead>
            <tbody>
                {{$i=1}}
                @foreach ($products as $data)
                    <tr>
                        <th scope="row">{{ $i++ }}</th>
                        <td>{{ $data->name }}</td>
                        <td>{{ $data->description }}</td>
                        <td>{{ $data->quantity }}</td>
                        <td>{{ Str::currency($data->price) }} $</td>
                        <td>{{ Str::currency($data->price) }} $</td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        {{-- Pagination --}}
        <div class="d-flex justify-content-center">
            {!! $products->links() !!}
        </div>
    </div>


@endsection
