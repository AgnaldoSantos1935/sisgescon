<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tarefa extends Model
{
    use HasFactory;
    protected $fillable = [
        'nome',
        'dtcriacao',
        'dtinicio',
        'previsaofim',
        'metas',
        'designado',
        'status',
        'ultimainsercao',
        'created_at',
        'update_at',
    ];
}
