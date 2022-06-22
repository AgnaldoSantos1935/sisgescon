@extends('adminlte::page')

@section('title', 'Sisge || Home')

@section('content_header')
    <h1>Exibindo Contratos</h1>
@stop

@section('content')
<table class="table table-striped table-bordered table-hover" id="contratos_list">
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
                            <a class="btn btn-small btn-success" href="{{ URL::to('employee/' . $emp->id) }}">Show</a>
 
                            <!-- edit this nerd (uses the edit method found at GET /nerds/{id}/edit -->
                            <a class="btn btn-small btn-info" href="{{ URL::to('employee/' . $emp->id . '/edit')}}">Edit</a>
 
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>


@stop

@section('css')
    <link rel="stylesheet" href="{{ asset ('css/app.css')}}">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
@stop

@section('js')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
  $(function () {
    
    var table = $('contratos_list').DataTable({
        processing: true,
        serverSide: true,
        
        columns: [
            {data: 'DT_RowIndex', name: 'DT_RowIndex'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'username', name: 'username'},
            {data: 'phone', name: 'phone'},
            {data: 'dob', name: 'dob'},
            {
                data: 'action', 
                name: 'action', 
                orderable: true, 
                searchable: true
            },
        ]
    });
    
  });
</script>
@stop