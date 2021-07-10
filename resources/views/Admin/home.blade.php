@extends('Admin.masteradmin')

@section('title')
    Home Admin
@endsection

@section('content')
  <h1>HOME Admin</h1>
  {{auth()->user()->name}}
  {{auth()->user()->lastname}}
  {{auth()->user()->email}}
  <img src="{{ asset('images/users/'.auth()->user()->photo) }}" alt="">

@endsection
