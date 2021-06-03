<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Carbon\carbon;

class walletController extends Controller
{
  
     public function showcredit(Request $request)
    { 
        $user_id = $request->user_id;
        $wallet_amt = DB::table('tbl_user')
                    ->select('wallet_credits')
                    ->where('user_id', $user_id)
                    ->get();
                   
                    
                    
       if($wallet_amt){
        	$message = array('status'=>'1', 'message'=>'current Wallet Amount ', 'data'=>$wallet_amt);
        	return $message;
        }
        else{
        	$message = array('status'=>'0', 'message'=>'data not found', 'data'=>[]);
        	return $message;
        }             
        
    }

    
    
      public function credit_history(Request $request)
    { 
        $user_id = $request->user_id;
        $show =  DB::table('wallet_history')
              ->where('user_id',$user_id)
              ->orderBy('created_at', 'DESC' )
              ->limit(7)
              ->get();
        
        if($show){
        	$message = array('status'=>'1', 'message'=>'Wallet History','data'=>$show);
        	return $message;
        }
        else{
        	$message = array('status'=>'0', 'message'=>'something went wrong', 'data'=>[]);
        	return $message;
        }               
    }


    public function reffermessage(Request $request)
    { 
        $earn = DB::table('tbl_scratch_card')
                    ->select('reffer_message','app_link')
                    ->get();
                   
                    
                    
       if($earn){
        	$message = array('status'=>'1', 'data'=>$earn);
        	return $message;
        }
        else{
        	$message = array('status'=>'0', 'message'=>'data not found', 'data'=>[]);
        	return $message;
        }             
        
    }
    
}