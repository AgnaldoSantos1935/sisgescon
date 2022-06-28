@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Incluir Contrato</h1>
@stop

@section('content')
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Quick Example</h3>
</div>

<form>
<div class="card-body">
<div class="form-group">
<label for="exampleInputEmail1">Email address</label>
<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
</div>
<div class="form-group">
<label for="exampleInputPassword1">Password</label>
<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
</div>
<div class="form-group">
<label for="exampleInputFile">File input</label>
<div class="input-group">
<div class="custom-file">
<input type="file" class="custom-file-input" id="exampleInputFile">
<label class="custom-file-label" for="exampleInputFile">Choose file</label>
</div>
<div class="input-group-append">
<span class="input-group-text">Upload</span>
</div>
</div>
</div>
<div class="form-check">
<input type="checkbox" class="form-check-input" id="exampleCheck1">
<label class="form-check-label" for="exampleCheck1">Check me out</label>
</div>
</div>

<div class="card-footer">
<button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div>

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