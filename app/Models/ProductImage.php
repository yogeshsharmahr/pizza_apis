<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;
    protected $appends = ['url'];
   const PRODUCT_IMAGE_PATH= 'products/images';
    public function getUrlAttribute(){
        $image = $this->image;
        if($image){
            if(file_exists(public_path(self::PRODUCT_IMAGE_PATH.'/'. $this->image))){
                return asset(self::PRODUCT_IMAGE_PATH.'/'. $this->image);
            }
        }else{
            return "";
        }
    }
}
