<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Session;

class WalletController extends Controller
{
    public function wallet_credits(Request $request)
    {
        $admin_email=Session::get('admin');
        $admin=DB::table('admin')
        ->where('admin_email',$admin_email)
        ->first();
        $wallet_credits= DB::table('tbl_user')
        ->leftJoin('user_address', 'tbl_user.user_id','=','user_address.user_id')
    	 ->leftJoin('city', 'user_address.city_id','=','city.city_id')
        ->get();
        return view('admin.wallet_credits.wallet_credits',compact("admin_email","wallet_credits","admin"));
    }
    
    
    public function Editwallet_credits(Request $request)
    {
    	
         $user_id=$request->id;
    	 $admin_email=Session::get('admin');
         $admin=DB::table('admin')
                ->where('admin_email',$admin_email)
                ->first();       
    	 $wallet_credits= DB::table('tbl_user')
    	 		  ->where('user_id',$user_id)
    	 		  ->first();
    	 return view('admin.wallet_credits.Editwallet_credits',compact("admin_email","admin","user_id","wallet_credits"));


    }
    public function Updatewallet_credits(Request $request)
{
    
        $wallet_credits_id=$request->id;
        $wallet_credits = DB::table('tbl_user')
                    ->where('user_id',$wallet_credits_id)
                    ->first();
        $credits=$request->credits; //$wallet_credits + $add_credits
        $add=$request->add;
        $updated_at = date("d-m-y h:i a");
        

        $update = DB::table('tbl_user')
                 ->where('user_id', $wallet_credits_id)
                 ->update(['wallet_credits'=>$add + $credits, 'updated_at'=>$updated_at]);

        if($update){

             

            return redirect()->back()->withErrors('credits added successfully');
        }
        else{
            return redirect()->back()->withErrors("something wents wrong.");
        }
    }

	
    
}
