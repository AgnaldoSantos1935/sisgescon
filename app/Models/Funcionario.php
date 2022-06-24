<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Funcionario extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'nome',
        'dtnascimento',
        'rg',
        'cpf',
        'matricula',
        'cargo',
        'setor',
        'dtadmissao',
        'dtdemissao',
    ];


}