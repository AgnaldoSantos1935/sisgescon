<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Funcionario;

class FuncionarioController extends Controller
{
    public function index()
    {
        $funcionarios = Funcionario::all();
        
        return view('exibefuncionarios', compact('funcionarios')); //Passagem de array de contratos para a visão CONTRATOS
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('novofuncionario'); //chama a visão CONTRATOS        
    }
}
