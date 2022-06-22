@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Dashboard</h1>
@stop

@section('content')
    <p>Welcome to this beautiful admin panel.</p>
@stop

@section('css')
    <link rel="stylesheet" href="{{ asset ('css/app.css')}}">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop