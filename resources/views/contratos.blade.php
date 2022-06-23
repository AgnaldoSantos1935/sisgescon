@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Exibindo Contratos</h1>
@stop

@section('content')
<table id="tabela" class="table table-bordered table-hover"  style="width:100%">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>contratada</th>
                        <th>cnpjcontratada</th>
                        <th>numero</th>
                        <th>ano</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($contratos as $key => $emp)
                    <tr>
                        <td>{{ $emp->id }}</td>
                        <td>{{ $emp->contratada }}</td>
                        <td>{{ $emp->cnpjcontratada }}</td>
                        <td>{{ $emp->numero }}</td>
                        <td>{{ $emp->ano }}</td>
                        <!-- we will also add show, edit, and delete buttons -->
                        <td>
 
                            <!-- show the nerd (uses the show method found at GET /nerds/{id} -->
                            <a class="btn btn-primary" id="btn_table1" href="{{ URL::to('contratos_detalhes/' . $emp->id) }}" role="button">Detalhes</a>
                                
                            <!-- edit this nerd (uses the edit method found at GET /nerds/{id}/edit -->
                            <a class="btn btn-primary" id="btn_table2" href="{{ URL::to('contratos_novo/' . $emp->id . '/editar')}}" role="button"> Editar </a>
                            
                        </td>
                    </tr>
                @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>contratada</th>
                        <th>cnpjcontratada</th>
                        <th>numero</th>
                        <th>ano</th>
                    </tr>
                </tfoot>
            </table>


@stop

@section('css')
    
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="{{url(mix ('css/app.css'))}}">
    
@stop

@section('js')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript" src="{{url(mix('js/app.js'))}}"></script>  
<script type="text/javascript" src="{{url(mix('js/jquery.js'))}}"></script>
<script type="text/javascript">
$(function () {
    $('#tabela').DataTable({
        pagingType: 'full_numbers',
    });
});


</script>
@stop