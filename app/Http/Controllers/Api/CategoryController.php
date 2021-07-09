<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    public function index(){
        $records = Category::all();
        if(count($records)>0){
            return response()->json([
                'status'=>true,
                'message'=>'Records Found Successfully!',
                'data'=>$records
            ]);
        }else{
            return response()->json([
                'status'=>false,
                'message'=>'Records Not Found!',
                'data'=>$records
            ]);
        }

    }
    public function store(Request $request){
        try{

            $category = new Category();
            $category->slug= str::slug($request->name);
            $category->name=$request->name;
            if($category->save()){
                return response()->json([
                    'status'=>true,
                    'message'=>'Record create Successfully!',
                    "data"=>$category
                ]);
            }else{
                return response()->json([
                    'status'=>false,
                    'message'=>'Unable To create Record!',
                    "data"=>null
            ]);
            }

        }catch (Exception $e){
            Log::info("Log Message",['error'=>$e->getMessage()]);

        }

    }
}
