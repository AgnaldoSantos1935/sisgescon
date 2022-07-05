<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Licitacao extends Model
{
    use HasFactory;
/**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'codlicitacao',
        'anolicitacao',
        'modalidade',
        'dtcertame',
        'objeto',
        'valorglobal',
        'numeroprocesso',
        'demandante',
        'dtinsercao',
    ];
}
