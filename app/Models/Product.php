<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $appends= ['image','category'];
    const PRODUCT_IMAGE_PATH= 'products/images';

    public function getImageAttribute(){
        $image = ProductImage::where('product_id',$this->id)->pluck('image')->first();
        if($image){
            if(file_exists(public_path(self::PRODUCT_IMAGE_PATH.'/'. $image))){
                return asset(self::PRODUCT_IMAGE_PATH.'/'. $image);
            }
        }else{
            return "";
        }
    }
    public function getCategoryAttribute(){
        $image = Category::where('id',$this->category_id)->pluck('name')->first();
         if($image){
             return $image;
         }else{
             return "";
         }
    }
}
