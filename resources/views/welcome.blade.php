<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Site sisge</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="{{url(mix('css/app.css'))}}">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body class="antialiased">
    <div class="header">
  <a href="#default" class="logo">Sigesco</a>
  <div class="header-right">
    <a  href="#home">Ouvidoria/Fale conosco</a>
    <a href="#contact">Transparência</a>
    <a href="#about">Contatos</a>
  </div>
</div>
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <!--<a class="navbar-brand" href="#">Sigesco</a> -->
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="#">Home</a></li>
    <li ><a href="#">Organograma</a></li>
      <li ><a href="#">Institucional</a></li>
      <li><a href="#">Secretarias</a></li>
      <li><a href="#">Serviços on line</a></li>
      <li><a href="#">Editais/Licitações</a></li>
      <li><a href="#">Acesso à informação</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    @if (Route::has('login'))
    @auth
      
      <a href="{{ url('/home') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Home</a>
        @else
        
      <li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in"></span>Intranet</a></li>

@if (Route::has('register'))
    
    <!-- <li><a href="{{ route('register') }}"><span class="glyphicon glyphicon-user"></span> Registrar</a></li> -->
@endif
@endauth
</div>
@endif
    </ul>
  </div>
</nav>
            <div class="container-fluid">
                <div class="row">
                <div class="col sm 1">
                </div>
                    <div class="col sm 10">
                   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img class="img_carrosel" src="{{asset('/vendor/adminlte/dist/img/escola1.jpg')}}" alt="Imagem 1" >
      </div>

      <div class="item">
        <img class="img_carrosel" src="{{asset('/vendor/adminlte/dist/img/escola1.jpg')}}" alt="Imagem 2" >
      </div>
    
      <div class="item">
        <img class="img_carrosel" src="{{asset('/vendor/adminlte/dist/img/escola1.jpg')}}" alt="Imagem 3" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
                    </div>
                    <div class="col sm 1">
                    </div>
                </div>
            </div>
           
           
    </body>
</html>
