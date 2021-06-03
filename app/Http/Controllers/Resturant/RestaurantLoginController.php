<?php

namespace App\Http\Controllers\Resturant;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Session;
use Hash;

class RestaurantLoginController extends Controller
{
	public function resturantlogin(Request $request)
    {
        return view('resturant.login');
    }
    public function checkresturantLogin(Request $request)
    {
    	$vendor_email=$request->vendor_email;
    	$vendor_pass=$request->vendor_pass;

    	$this->validate(
         $request,
         [
         		'vendor_email'=>'required',
         		'vendor_pass'=>'required',
         ],
         [

         	'vendor_email.required'=>'Enter E-Mail',
         	'vendor_pass.required'=>'Enter the password',
         ]

);
    	$checkvendorLogin = DB::table('vendor')
    	                   ->where('vendor_email',$vendor_email)
    	                   ->first();
    	                   
           $ui_type = $checkvendorLogin->ui_type;

    	if($checkvendorLogin){
    	    
    	   if($ui_type==2) 

         if(Hash::check($vendor_pass,$checkvendorLogin->vendor_pass)){
           session::put('vendor',$checkvendorLogin->vendor_email);
           return redirect()->route('resturant-index');
         }
         else
         {
         	return redirect()->route('resturantlogin')->withErrors('wrong password');
         }
         else
         {
         	return redirect()->route('resturantlogin')->withErrors('You are Not Registered as Restaurant Vendor');
         }
    	}
    	else
    	{
             return redirect()->route('resturantlogin')->withErrors('invalid email and password');
    	}

    }
    
}
