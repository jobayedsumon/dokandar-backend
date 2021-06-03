<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;


class paymentController extends Controller
{
  
     public function payment_mode(Request $request)
    {   
        $payment_mode = DB::table('paymentvia')
        		   ->get();

        if(count($payment_mode)>0){
        	$message = array('status'=>'1', 'message'=>'data found', 'data'=>$payment_mode);
        	return $message;
        }
        else{
        	$message = array('status'=>'0', 'message'=>'data not found', 'data'=>[]);
        	return $message;
        }
    }
}