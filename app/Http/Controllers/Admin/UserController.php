<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Session;
use Carbon\Carbon;

class UserController extends Controller
{
    public function adminUser(Request $request)
    {
  
        
    	$adminUser = DB::table('tbl_user')
    			         ->paginate(50);

        return view('admin.user.index',compact("adminUser"));
    	
    }

  public function adminAddUser(Request $request)
    {
       
        $user = DB::table('tbl_user')
                ->get();

        return view('admin.user.add_user', compact('user'));
    }
    
    public function adminAddUserNew(Request $request)
    {
       
        $user_name = $request->user_name;
        $user_email = $request->user_email;
        $user_phone = $request->user_phone;
       
        $created_at = Carbon::now();
        $updated_at = Carbon::now();
        $date=date('d-m-Y');
        
        $this->validate(
            $request,
                [
                    'user_name' => 'required',
                    'user_email' => 'required',
                    'user_phone' => 'required',
                    'user_image' => 'required|mimes:jpeg,png,jpg|max:400',
                ],
                [
                    'user_name.required' => 'Enter user name.',
                    'user_email.required' => 'Enter user email.',
                    'user_phone.required' => 'Enter user phone.',
                    'user_image.required' => 'Choose user image.',
                ]
        );

        

        

        if($request->hasFile('user_image')){
            $user_image = $request->user_image;
            $fileName = $user_image->getClientOriginalName();
            $fileName = str_replace(" ", "-", $fileName);
            $user_image->move('images/user/'.$date.'/', $fileName);
            $user_image = 'images/user/'.$date.'/'.$fileName;
        }
        else{
            $user_image = 'N/A';
        }

        $insertUser = DB::table('tbl_user')
                            ->insert([
                                'user_name'=>$user_name,
                                'user_email'=>$user_email,
                                'user_phone'=>$user_phone,
                                'user_image'=>$user_image,
                                'created_at'=>$created_at,
                                'updated_at'=>$updated_at
                            ]);
        
        if($insertUser){
            return redirect()->back()->withErrors('User added successfully');
        }
        else{
            return redirect()->back()->withErrors("Something wents wrong");
        }
    }
    public function EditUser(Request $request)
    {
      
    	$user_id = $request->user_id;

    	$user = DB::table('tbl_user')
        	          ->where('user_id', $user_id)
        			  ->first();

     

        return view('admin.user.edit_user',compact("user"));
    }
    
    public function UpdateEdit(Request $request)
    {
       
       
        $user_id = $request->user_id;
        $user_name = $request->user_name;
        $user_email = $request->user_email;
        $user_phone = $request->user_phone;
       
        $updated_at = Carbon::now();
        $date = date('d-m-Y');
        
        $this->validate(
            $request,
                [
                    'user_name' => 'required',
                    'user_email' => 'required',
                    'user_phone' => 'required',
                    'user_image' => 'mimes:jpeg,png,jpg|max:400',
                    
                ],
                [
                    'user_name.required' => 'Enter user name.',
                    'user_email.required' => 'Enter user email.',
                    'user_phone.required' => 'Enter user phone.',
                    'user_image.required' => 'Choose user image.',
                   
                ]
        );

    	

        $getCategory = DB::table('tbl_user')
                    ->where('user_id',$user_id)
                    ->first();

        $image = $getCategory->user_image;

        if($request->hasFile('user_image')){
            if(file_exists($image)){
                unlink($image);
            }
            $user_image = $request->user_image;
            $fileName =$user_image->getClientOriginalName();
            $fileName = str_replace(" ", "-", $fileName);
            $user_image->move('images/user/'.$date.'/', $fileName);
            $user_image = 'images/user/'.$date.'/'.$fileName;
        }
        else{
            $user_image = $getCategory->user_image;
        }
        
        $updateUser = DB::table('tbl_user')
                            ->where('user_id', $user_id)
                            ->update([
                                'user_name'=>$user_name,
                                'user_email'=>$user_email,
                                'user_phone'=>$user_phone,
                                'user_image'=>$user_image,
                               
                                'updated_at'=>$updated_at
                            ]);
        
        if($updateUser){
            return redirect()->back()->withErrors('User updated successfully');
        }
        else{
            return redirect()->back()->withErrors("Something wents wrong");
        }
    }
    
     public function adminDeleteUser(Request $request)
    {
        
       
    	$user_id = $request->user_id;

    	$deleteUser = DB::table('tbl_user')
    					->where('user_id', $user_id)
    					->delete();

    	if($deleteUser){
            return redirect()->back()->withErrors('user deleted successfully');
        }
        else{
            return redirect()->back()->withErrors("Something wents wrong");
        }			
    }
}
