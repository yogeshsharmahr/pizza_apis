<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductImage;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductsController extends Controller
{
    public function index(){
        $records = Product::orderBy('id','DESC')->get();
        if(count($records)>0){
            return response()->json([
                'status'=>true,
                'message'=>'Records found Successfully!',
                'data'=>$records
            ]);

        }else{
            return response()->json([
                'status'=>false,
                'message'=>'Records Not found!',
                'data'=>null
        ]);
        }
    }
    public function productDetail($id){
        $record = Product::find($id);
        if($record){
            return response()->json([
                'status'=>true,
                'message'=>'Record found Successfully!',
                'data'=>$record
            ]);
        }else{
            return response()->json([
                'status'=>false,
                'message'=>'Record Not found!',
                'data'=>null
            ]);
        }

    }
    public function Cart(Request $request){
         if($request->ids != null){
             $records = Product::whereIn('id',$request->ids)->get();
             if(count($records)>0){
                 return response()->json([
                     'status'=>true,
                     'message'=>'Records found Successfully!',
                     'data'=>$records
                 ]);
             }else{
                 return response()->json([
                     'status'=>false,
                     'message'=>'Records Not found!',
                     'data'=>null
                 ]);
             }
         }else{
             return "";
         }




    }
    public function store(Request $request){
        DB::beginTransaction();
        try{
            $product = new Product();
            $product->user_id =$request->user_id;
            $product->category_id =$request->category_id;
            $product->title =$request->title;
            $product->quantity =$request->quantity;
            $product->price =$request->price;
            $product->description =$request->description;
            $product->save();



            if ($request->hasfile('image')) {
                    $images=$request->file('image');
                    $name = time() . rand(0, 9999) . '.' . $images->extension();
                    $images->move(public_path() . '/products/images', $name);
                    $file = new ProductImage();
                    $file->product_id = $product->id;
                    $file->image = $name;
                    $file->save();
            }
            DB::commit();
            if($product){
                return response()->json([
                    'status'=>true,
                    'message'=>'Record Create Successfully!',
                    'data'=>$product
                ]);
            }else{
                return response()->json([
                    'status'=>true,
                    'message'=>'Record Create Successfully!',
                    'data'=>$product
                ]);
            }

        }catch (Exception $e){
            Log::info("Log Message",['error'=>$e->getMessage()]);
            DB::rollback();
        }
    }
}
