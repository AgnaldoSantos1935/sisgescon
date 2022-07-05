@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Exibindo Contratos</h1>
@stop

@section('content')
<table id="tabela" class="table table-bordered table-hover"  style="width:100%">
                <thead>
                    <tr>
                    <!-- <th>Id</th> -->
                        <th>Favorecido</th>
                        <th>PRD/Despesa</th>
                        <th>Ano</th>
                        <th>Itnerário</th>
                        <th>Retorno</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($diariasepassagens as $key => $emp)
                @foreach($funcionarios as $key => $fun)
                    <tr>
                        <!--<td>{{ $emp->id }}</td>-->
                        <td>{{ $fun->nome }}</td>
                        <td>{{ $emp->numeroprd }}</td>
                        <td>{{ $emp->ano }}</td>
                        <td>{{ $emp->itnerario }}</td>
                        <td>{{ $emp->dtchegada}}</td>

                    </tr>
                @endforeach
                @endforeach
                </tbody>
               <!-- <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>contratada</th>
                        <th>cnpjcontratada</th>
                        <th>numero</th>
                        <th>ano</th>
                    </tr>
                </tfoot> -->
            </table>


@stop

@section('css')
<link rel="stylesheet" href="vendor/fontawesome-free/css/fontawesome.css">

<link rel="stylesheet" href="vendor/datatables/css/dataTables.bootstrap4.css">
    
 
    
@stop

@section('js')
@section('js')
<script src="vendor/jquery/jquery.min.js"></script>

<script src="vendor/datatables/js/jquery.dataTables.js"></script>
<script>
    $(document).ready (function(){
    $('#tabela').DataTable({
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