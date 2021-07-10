@extends('Admin.masteradmin')

@section('title')
    Ventas Hoy
@endsection

@section('content')
    <h1>Ventas Hoy</h1>
    <h3>Registrar Ventas Hoy</h3>
    <form id="form_search" method="GET" action="{{ route('sellsToday') }}">
        @csrf
        <label for="">Busqueda de Producto</label>
        <input type="text" name="name_product" placeholder="Busqueda">
        <div class="form-group">
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search">Busqueda</span>
            </button>
        </div>
    </form>
    <form id="form_sells" method="POST" action="{{ route('register.sells') }}">
        @csrf
        <div class="container mt-5">
            <table class="table table-bordered mb-5">
                <thead>
                    <tr class="table-success">
                        <th scope="col">Seleccion</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripcion</th>
                        <th scope="col">Cantidad Inventario</th>
                        <th scope="col">Precio</th>
                        <th>Pago</th>
                        <th scope="col">Cantidad Vendida</th>
                        <th scope="col">Observacion</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($products as $data)
                        <tr>
                            {{-- @foreach ($product as $data) --}}
                            <th scope="row">
                                <input type="checkbox" name="products[]" value="{{ $data->id }}">
                            </th>
                            <td>{{ $data->name }}</td>
                            <td>{{ $data->description }}</td>
                            <td>{{ $data->quantity }}</td>
                            <td style="white-space: nowrap;">{{ Str::currency($data->price) }} $</td>
                            <td>
                                <select name="debt[]" id="typeProducts">
                                    <option value="selection">Selección de Pago</option>
                                    <option value="true">Debe</option>
                                    <option value="false">Pago</option>
                                </select>
                            </td>
                            <td><input type="number" name="prices[]" value="" placeholder=" Cantidad {{ $data->name }}">
                            </td>
                            <td><input type="text" name="observation[]" value=""
                                    placeholder=" Observacion {{ $data->name }}"></td>
                            {{-- @endforeach --}}
                        </tr>
                    @endforeach
                </tbody>
            </table>

            {{-- Pagination --}}
            {{ $products->links() }}
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search">Añadir Productos</span>
            </button>
        </div>
    </form>

    <form id="form_closeDay" action="">
        <div class="container mt-5">
            <table class="table table-bordered mb-5">
                <thead>
                    <tr class="table-success">
                        <th scope="col">#</th>
                        <th scope="col">Observacion</th>
                        <th>Pago</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    @if (count($sells) == 0)
                        <tr>
                            <th>#1</th>
                            <td>
                                <p>No ha Registrado productos</p>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    @else
                        {{ $i = 1 }}
                        @foreach ($sells as $data)
                            <tr>
                                <th scope="row">#{{ $i }}</th>
                                <td>{{ $data->observation }}</td>
                                @if ($data->debt == true)
                                    <td>Debe</td>
                                @else
                                    <td>Pago</td>
                                @endif
                                <td>{{ $data->quantity }}</td>
                                <td>{{ Str::currency($data->price_sell) }} $</td>
                                <td>
                                    <p>{{ Str::currency($data->price_sell * $data->quantity) }} $</p>
                                </td>
                                {{ $i++ }}
                            </tr>
                        @endforeach
                    @endif
                    <tr>
                        <th>

                        </th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <h2>Total Ventas Hoy:</h2>
                        </td>
                        <td> {{ Str::currency($totalPrice) }} $</td>
                    </tr>
                </tbody>
            </table>

    </form>

@endsection
<script>
    document.addEventListener('DOMContentLoaded', () => {
        document.querySelectorAll('input[type=text]').forEach(node => node.addEventListener('keypress', e => {
            if (e.keyCode == 13) {
                e.preventDefault();
            }
        }))
        document.querySelectorAll('input[type=number]').forEach(node => node.addEventListener('keypress', e => {
            if (e.keyCode == 13) {
                e.preventDefault();
            }
        }))
        document.querySelectorAll('input[type=checkbox]').forEach(node => node.addEventListener('keypress', e => {
            if (e.keyCode == 13) {
                e.preventDefault();
            }
        }))
        document.querySelectorAll('option:checked').forEach(node => node.addEventListener('keypress', e => {
            if (e.keyCode == 13) {
                e.preventDefault();
            }
        }))
    });
</script>
