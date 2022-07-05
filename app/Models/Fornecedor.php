<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fornecer extends Model
{
    use HasFactory;
 /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'nomefantasia',
        'razaosocial',
        'cnpj',
        'preposto',
        'socio1',
        'socio2',
        'socio3',
        'cnaes',
        'porte',
    ];

}
