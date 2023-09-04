<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ListsModel extends Model
{
    use HasFactory;
    protected $table = "lists";
    protected $fillable = ['lang', 'title', 'contentHeader', 'contentBody', 'price', 'image', 'type', 'category_id'];

}
