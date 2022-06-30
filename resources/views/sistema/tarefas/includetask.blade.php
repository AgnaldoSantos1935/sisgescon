@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Incluir Contrato</h1>
@stop

@section('content')
<div class="card card-info ">
<div class="card-header">
<h3 class="card-title ">Dados do contrato</h3>
</div>

<form>
<div class="card-body">
<div class="form-group">
<label for="numeroctt">Número</label>
<input type="text" class="form-control" id="numeroctt" placeholder="Número do instrumento" maxlength="6">
</div>
<div class="form-group">
<label for="anoctt">Ano</label>
<input type="text" class="form-control" id="anoctt" placeholder="2023" maxlength="4">
</div>
<div class="form-group">
<label for="copiactt">Anexar cópia do instrumento</label>
<div class="input-group">
<div class="custom-file">
<input type="file" class="custom-file-input" id="anexoctt">
<label class="custom-file-label" for="anexoctt">Escolher arquivo pdf</label>
</div>
<div class="input-group-append">
<span class="input-group-text">Upload</span>
</div>
</div>
</div>
<div class="form-group">
<label for="contratadactt">Contratada</label>
<input type="text" class="form-control" id="contratadactt">
</div>

<div class="form-group">
<label for="objetoctt">Objeto</label>
<input type="text" class="form-control" id="objetoctt">
</div>
<div class="form-group">
<label for="dtvigenciactt">Data de vigência</label>
<input type="date" class="form-control" id="dtvigenciactt">
</div>
<div class="form-group">
<label for="objetoctt">Objeto</label>
<textarea type="text" rows="3" class="form-control" id="objetoctt" maxlenght="120" max="120"></textarea>
</div>
<div class="form-group">
<label for="cnpjctt">CNPJ Contratada</label>
<input type="text" class="form-control" id="cnpjctt" maxlength="18">
</div>


<div class="card-footer">
<button type="submit" class="btn btn-primary">Enviar</button>
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