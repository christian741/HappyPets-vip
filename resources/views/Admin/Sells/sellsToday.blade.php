@extends('Admin.masteradmin')

@section('title')
    Ventas Hoy
@endsection

@section('css')
    <link rel="preload stylesheet" as="style" href="{{ asset('css\Admin\Sells\sellsToday.css') }}">
    <link rel="preload stylesheet" as="style" href="{{ asset('css\Main\pagination.css') }}">
@endsection

@section('content')
    <div class="container-fluid">
        <div class="container text-center">
            <h1>Ventas Hoy</h1>
        </div>
        <form id="form_search" method="GET" action="{{ route('sellsToday') }}">
            @csrf
            <div class="container">
                <div class="row">
                    <div class="form-group">
                        <label for="">Busqueda de Producto</label><br>
                        <input type="text" name="name_product" placeholder="Nombre de producto"><br>
                        <button type="submit" class="btn btn-outline-black">
                            <span class="">Busqueda</span>
                        </button>
                    </div>
                </div>
            </div>
        </form>
        <div class="container text-left">
            <div class="row ">
                <h3>Registrar Ventas Hoy</h3>
            </div>
        </div>
    </div>


    <div class="container mt-5">
        <div class="container-products">
            <div class="container-info">
                @foreach ($products as $data)
                    <div class="product">
                        <div>
                            <h2>Producto {{ $loop->index+1 }}</h2>
                        </div>
                        <div class="body-card-products">
                            <div class="body-products">
                                <label>Nombre:</label>
                                <p>{{ $data->name }}</p>
                            </div>
                            <div class="">
                                <label>Descripción:</label><p>
                                    {{ $data->description }}
                                    </p> 
                            </div>
                            <div class="body-products">
                                <label>Precio:</label><p>
                                    {{  Str::currency($data->price_sell) }} $
                                    </p> 
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary form-control sell-btn"  data-toggle="modal"
                                data-target="#{{ $data->id }}">
                                Vender
                        </button>
                        <div>
                            <div class="modal fade" id="{{ $data->id }}" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <form id="form_sells" method="POST" action="{{ route('register.sells') }}">
                                        @csrf
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLongTitle">Producto:
                                                    {{ $data->name }}
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="container-fluid">
                                                    <div class="container">
                                                        <div class="row jumpers section-forms">
                                                            <div class="row titles-forms">
                                                                <h5>Información:</h5>
                                                            </div>
                                                            <div class="row grid-controls">
                                                                <p class="label">Nombre:</p>
                                                                <input type="number" name="id" value="{{ $data->id }}"
                                                                    style="display: none">
                                                                <p>{{ $data->name }}</p>
                                                            </div>
                                                            <div class="row jumpers">
                                                                <p class="label">Descripción:</p>
                                                                <p class="description">{{ $data->description }}</p>
                                                            </div>
                                                        </div>
    
                                                        <div class="row jumpers section-forms">
                                                            <div class="row titles-forms">
                                                                <h5>Formulario:</h5>
                                                            </div>
                                                            <div class="row pt-3 debt">
                                                                <label for="debt">Pago:</label>
                                                                <select name="debt" id="selectorDebt{{ $loop->index+1 }}" class="form-control">
                                                                    <option value="selection">Selección de Pago</option>
                                                                    <option value="true" class="alert alert-danger">Debe
                                                                    </option>
                                                                    <option value="false" class="alert alert-success">Pago
                                                                    </option>
                                                                </select>
                                                                <div id="debt{{ $loop->index+1 }}" >
                                                                    <label for="priceDebt">Precio que Se Pago:</label>
                                                                    <input type="number" name="priceDebt" value=""
                                                                        placeholder="Precio que se Pago" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="inventory row hr">
                                                                <div class="quantity">
                                                                    <p class="label">Cantidad en Inventario:</p>
                                                                    <p>{{ $data->quantity }}</p>
                                                                </div>
                                                                <div class="">
                                                                    <label for="Cantidad a Vender">Cantidad a Vender</label>
                                                                    <input type="number" name="quantity" value=""
                                                                        class="form-control"
                                                                        placeholder=" Cantidad {{ $data->name }}">
        
                                                                </div>
                                                            </div>
                                                            
                                                            <div id="sell{{ $loop->index+1 }}" class="row grid-controls pt-3 sell hr">
                                                                <div>
                                                                    <p class="label">Precio Venta</p>
                                                                    <p>{{ Str::currency($data->price_sell) }} $</p>
                                                                    <input type="number" name="sell_db"
                                                                        value="{{ $data->price_sell }}"
                                                                        placeholder="Precio Venta" style="display: none">
                                                                </div>
                                                                <div class="">
                                                                    <label for="sell">Precio a Vender (Opcional)</label>
                                                                    <input type="number" name="sell" value=""
                                                                        placeholder="Precio Venta" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="row pt-3">
                                                                <label for="typePaid">Tipo de Pago:</label>
                                                                <select name="typePaid" id="typePaid" class="form-control">
                                                                    <option value="selection">Selección de Pago</option>
                                                                    <option value="1">Efectivo
                                                                    </option>
                                                                    <option value="2">Transferencia
                                                                    </option>
                                                                </select>
    
                                                            </div>
                                                            <div class="row pt-3">
                                                                <label for="observation">Observaciones:</label>
                                                                <textarea name="observation" class="form-control" rows="3"
                                                                    placeholder=" Observacion {{ $data->name }}"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Cancelar</button>
                                                <button type="submit" class="btn btn-primary">Vender Producto</button>
                                            </div>
                                        </div>
    
    
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                @endforeach
            </div>
        </div>

        {{-- Pagination --}}
        <div class="row">
            <div class="col-12 d-flex justify-content-center pt-4" class="li: { list-style: none; }">
                {{ $products->links('pagination::bootstrap-4') }}
            </div>
        </div>
    </div>


    <form id="form_closeDay" action="">
        <div class="container mt-5">
            <table class="table table-hover mb-5">
                <thead>
                    <tr class="table-success">
                        <th scope="col">#</th>
                        <th scope="col">Producto</th>
                        <th scope="col">Observacion</th>
                        <th scope="col">Pago</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    @if (count($sells) == 0)
                        <tr>
                            <th scope="row">#1</th>
                            <td>
                                <p>No han encontrado productos</p>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    @else
                        <input type="hidden" name="" value="{{ $i = 1 }}">
                        @foreach ($sells as $data)
                            <tr>
                                <th scope="row">#{{ $i }}</th>
                                <td>{{ $arrayNames[$i - 1] }}</td>
                                <td>{{ $data->observation }}</td>
                                @if ($data->debt == true)
                                    <td>Debe</td>
                                @else
                                    <td>Pago</td>
                                @endif
                                <td>{{ $data->quantity }}</td>
                                <td>{{ Str::currency($data->price) }} $</td>
                                <td>
                                    <p>{{ Str::currency($data->price * $data->quantity) }} $</p>
                                </td>
                                <input type="hidden" name="" value="{{ $i++ }}">
                            </tr>
                        @endforeach
                    @endif
                    <tr class="table-danger">
                        <th scope="col">Gastos Hoy</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                    <tr>
                        <form id="form_search" method="GET" action="{{ route('sellsToday') }}">
                        <th>
                            <label for="">Nombre Producto</label>
                            <input type="text" name="name_product" class="form-control" placeholder="Nombre de producto"><br>
                        </th>
                        <td>
                            <label for="">Precio Gasto</label>
                            <input type="text" name="name_product" class="form-control" placeholder="Nombre de producto"><br>
                        </td>
                        <td> <button type="submit" class="btn btn-primary">Vender Producto</button></td>
                        <td></td>
                        <td></td>
                        <td>
                        </td>
                        <td></td>
                        </form>
                    </tr>
                    <tr>
                        <th>

                        </th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="alert alert-danger">
                            <p>Total Gastos Hoy:</p>
                        </td>
                        <td> {{ Str::currency($totalPrice) }} $</td>
                    </tr>
                    <tr>
                        <th>

                        </th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td  class="alert alert-success">
                            <p>Total Ventas Hoy:</p>
                        </td>
                        <td> {{ Str::currency($totalPrice) }} $</td>
                    </tr>
                </tbody>
            </table>

    </form>

@endsection
@section('js')
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
        document.querySelectorAll('input[type=checkbox]').forEach(node => node.addEventListener('keypress',
            e => {
                if (e.keyCode == 13) {
                    e.preventDefault();
                }
            }))
        document.querySelectorAll('option:checked').forEach(node => node.addEventListener('keypress', e => {
            if (e.keyCode == 13) {
                e.preventDefault();
            }
        }))
        for(let i=1; i<5;i++){
            console.log(i)
            let string='selectorDebt'+i;
            let selector = document.getElementById(string);
            selector.addEventListener('change',(event) =>{
                let debt = document.getElementById('debt'+i);
                if(selector.value=="true"){
                    debt.style.display = "grid";
                }else{
                    debt.style.display = "none";
                }
                let sell = document.getElementById('sell'+i);
                if(selector.value=="false"){
                    sell.style.display = "grid";
                }else{
                    sell.style.display = "none";
                }
               
                let inventory  = document.getElementsByClassName('inventory');
                if(selector.value=="selection"){
                    inventory[i-1].style.display = "none";
                }else{
                    inventory[i-1].style.display = "grid";
                }
            });
        }
        
    });
</script>
@endsection