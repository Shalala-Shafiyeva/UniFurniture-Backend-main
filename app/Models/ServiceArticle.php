<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServiceArticle extends Model
{
    public function titles()
    {
        return $this->hasOne(ServiceArticleTitle::class, 'id', 'article_title_id')->where("is_publish", true);
    }
}
