@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Dashboard</h1>
@stop

@section('content')
    <p>Welcome to this beautiful admin panel.</p>
@stop

@section('css')
<link rel="stylesheet" href="vendor/fontawesome-free/css/fontawesome.css">

<link rel="stylesheet" href="vendor/datatables/css/dataTables.bootstrap4.css">
        
@stop

@section('js')
<Script type="text/javascript" src="vendor/jquery/jquery.js"></Script>
<Script type="text/javascript" src="vendor/bootstrap/js/bootstrap.js"></Script>
<Script type="text/javascript" src="vendor/datatables/js/jquery.dataTables.js"></Script>
<Script type="text/javascript" src="vendor/datatables/js/dataTables.bootstrap4.js"></Script>

@stop