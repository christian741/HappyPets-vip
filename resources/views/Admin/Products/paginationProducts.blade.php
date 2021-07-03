@extends('Admin.masteradmin')

@section('title')
    Paginacion Productos
@endsection

@section('content')
    <h1> Paginacion Productos</h1>
    <div class="container mt-5">
      <table class="table table-bordered mb-5">
          <thead>
              <tr class="table-success">
                  <th scope="col">#</th>
                  <th scope="col">First name</th>
                  <th scope="col">Last name</th>
                  <th scope="col">Email</th>
                  <th scope="col">DOB</th>
              </tr>
          </thead>
          <tbody>
              @foreach($products as $data)
              <tr>
                  <th scope="row">{{ $data->id }}</th>
                  <td>{{ $data->firstname }}</td>
                  <td>{{ $data->lastname }}</td>
                  <td>{{ $data->email }}</td>
                  <td>{{ $data->dob }}</td>
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
