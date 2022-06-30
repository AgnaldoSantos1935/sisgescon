@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Exibindo Funcionários</h1>
@stop

@section('content')
<table id="tabelafuncionarios" class="table table-bordered table-hover dataTable dtr-inline"  style="width:100%">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Matrícula</th>
                        <th>Cargo</th>
                        <th>Setor</th>
                        <th>Data de admissão</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($funcionarios as $key => $emp)
                    <tr>
                        <td>{{ $emp->nome }}</td>
                        <td>{{ $emp->matricula }}</td>
                        <td>{{ $emp->cargo }}</td>
                        <td>{{ $emp->setor }}</td>
                        <td>{{ $emp->dtadmissao }}</td>
                     
                    </tr>
                @endforeach
                </tbody>
                
            </table>


@stop

@section('css')
<link rel="stylesheet" href="vendor/fontawesome-free/css/fontawesome.css">

<link rel="stylesheet" href="vendor/datatables/css/dataTables.bootstrap4.css">
        
@stop

@section('js')
<script src="vendor/jquery/jquery.min.js"></script>

<script src="vendor/datatables/js/jquery.dataTables.js"></script>
<script>
    $(document).ready (function(){
    $('#tabelafuncionarios').DataTable({
            "paging": true,
            "lenghtChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true, 
            "responsive": true,

    });
});
</script>
@stop