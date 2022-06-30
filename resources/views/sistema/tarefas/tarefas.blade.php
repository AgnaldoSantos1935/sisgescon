
@extends('adminlte::page')


@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Exibindo Contratos</h1>
@stop

@section('content')
<table id="tabela.tarefas" class="table table-bordered table-hover dataTable dtr-inline"  style="width:100%">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Inicio</th>
                        <th>Metas</th>
                        <th>Designado</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($tarefas as $key => $emp)
                    <tr>
                        <td>{{ $emp->nome }}</td>
                        <td>{{ $emp->dtinicio }}</td>
                        <td>{{ $emp->metas }}</td>
                        <td>{{ $emp->designado }}</td>
                        <td>{{ $emp->status }}</td>
                        <!-- we will also add show, edit, and delete buttons -->
                        <!-- <td> -->
 
                            <!-- show the nerd (uses the show method found at GET /nerds/{id} -->
                            <!-- <a class="btn btn-primary" id="btn_table1" href="{{ URL::to('contratos_detalhes/' . $emp->id) }}" role="button">Detalhes</a> -->
                                
                            <!-- edit this nerd (uses the edit method found at GET /nerds/{id}/edit -->
                           <!-- <a class="btn btn-primary" id="btn_table2" href="{{ URL::to('contratos_novo/' . $emp->id . '/editar')}}" role="button"> Editar </a> -->
                            
                       <!-- </td> -->
                    </tr>
                @endforeach
                </tbody>
                
            </table>
@stop

@section('css')
<link rel="stylesheet" href="vendor/adminlte/dist/css/adminlte.css">
<link rel="stylesheet" href="vendor/fontawesome-free/css/fontawesome.css">

<link rel="stylesheet" href="vendor/datatables/css/dataTables.bootstrap4.css">
@stop

@section('js')
<script src="vendor/jquery/jquery.min.js"></script>

<script src="vendor/datatables/js/jquery.dataTables.js"></script>
<script>
    $(document).ready (function(){
    $('#tabela.tarefas').DataTable({
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