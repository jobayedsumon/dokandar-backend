<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Carbon\Carbon;
use Hash;
use Session;

class StoreOrderController extends Controller
{
   public function store_today_order(Request $request)
    {
 
    			
    	$currentDate = date('Y-m-d');
        $day = 1;
       $current2 = date('d-m-Y', strtotime($currentDate.' + '.$day.' days'));
    			
    	 $vendor_id = $request->vendor_id;			
    	  $todayorder  =   DB::table('orders')
						   ->join('vendor', 'orders.vendor_id','=', 'vendor.vendor_id')
                           ->join('tbl_user', 'orders.user_id', '=', 'tbl_user.user_id')
    	                    ->join('user_address','orders.address_id', '=', 'user_address.address_id')
    	                    ->join('area', 'user_address.area_id','=', 'area.area_id')
    	                    ->leftJoin('delivery_boy','orders.dboy_id', '=','delivery_boy.delivery_boy_id')
                          ->select('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','delivery_boy.delivery_boy_phone','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
                          ->groupBy('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','delivery_boy.delivery_boy_phone','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
                          
    	                    ->where('orders.vendor_id', $vendor_id)
                            ->where('orders.payment_status','!=', 'NULL')
                           ->where('orders.order_status','!=', 'Cancelled')
                            ->where('orders.ui_type','=', '1')
                            ->where('orders.order_status','!=', 'Completed')
                             ->whereDate('orders.delivery_date', $currentDate)

    	                    ->orderBy('user_id')
                           ->get();
                
                           if(count($todayorder)>0){
                            foreach($todayorder as $ords){
                                   $cart_id = $ords->cart_id;    
                               $details  =   DB::table('order_details')
                                             ->join('product_varient', 'order_details.varient_id', '=', 'product_varient.varient_id')
                                             ->join('product','product_varient.product_id', '=', 'product.product_id')
                                             ->select('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty', DB::raw('SUM(order_details.qty) as total_items'))
                                            ->where('order_details.order_cart_id',$cart_id)
                                            ->groupBy('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty')
                                            ->get(); 

                                            $data[]=array('area_id'=>$ords->area_id,'order_id'=>$ords->order_id, 'user_id'=>$ords->user_id, 'delivery_date'=>$ords->delivery_date,'user_name'=>$ords->user_name, 'dboy_id'=>$ords->dboy_id, 'delivery_charge'=>$ords->delivery_charge, 'total_price'=>$ords->total_price,'total_product_mrp'=>$ords->total_products_mrp,'delivery_boy_name'=>$ords->delivery_boy_name,'order_status'=>$ords->order_status,'cart_id'=>$cart_id,'user_number'=>$ords->user_number,'address'=>$ords->address , 'time_slot'=>$ords->time_slot,'paid_by_wallet'=>$ords->paid_by_wallet,'remaining_price'=>$ords->rem_price,'price_without_delivery'=>$ords->price_without_delivery,'coupon_discount'=>$ords->coupon_discount,'vendor_name'=>$ords->vendor_name,'payment_method'=>$ords->payment_method,'payment_status'=>$ords->payment_status,'delivery_boy_num'=>$ords->delivery_boy_phone,'order_details'=>$details); 
                                          }
                                          }
                                  else{
                                  $data[]=array('order_details'=>'no orders found');
                                          }
                                          return $data;

      }

 

      public function store_next_day_order(Request $request)
      {
   
                  
        $currentDate = date('Y-m-d');
        $day = 1;
        $end = date('Y-m-d', strtotime($currentDate.' + '.$day.' days'));
                  
           $vendor_id = $request->vendor_id;			
           $nextdayorder  =   DB::table('orders')
           ->join('tbl_user', 'orders.user_id', '=', 'tbl_user.user_id')
           ->join('user_address','orders.address_id', '=', 'user_address.address_id')
           ->join('area', 'user_address.area_id','=', 'area.area_id')
           ->join('vendor_area', 'area.area_id','=', 'vendor_area.area_id')
      ->join('vendor', 'vendor_area.vendor_id','=', 'vendor.vendor_id')
           ->leftJoin('delivery_boy','orders.dboy_id', '=','delivery_boy.delivery_boy_id')
           ->select('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','delivery_boy.delivery_boy_phone','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
           ->groupBy('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','delivery_boy.delivery_boy_phone','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
           ->whereDate('orders.delivery_date', $end)
            ->where('orders.payment_status','!=', 'NULL')
           ->where('orders.vendor_id', $vendor_id)
           ->where('orders.order_status','!=', 'Cancelled')
            ->where('orders.ui_type','=', '1')
            ->where('orders.order_status','!=', 'Completed')
           ->orderBy('user_id')
           ->get();  

           if(count($nextdayorder)>0){
            foreach($nextdayorder as $ords){
                   $cart_id = $ords->cart_id;    
               $details  =   DB::table('order_details')
                             ->join('product_varient', 'order_details.varient_id', '=', 'product_varient.varient_id')
                             ->join('product','product_varient.product_id', '=', 'product.product_id')
                             ->select('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty', DB::raw('SUM(order_details.qty) as total_items'))
                            ->where('order_details.order_cart_id',$cart_id)
                            ->groupBy('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty')
                            ->get(); 

       
  
   
                              
                            $data[]=array('area_id'=>$ords->area_id,'order_id'=>$ords->order_id, 'user_id'=>$ords->user_id, 'delivery_date'=>$ords->delivery_date,'user_name'=>$ords->user_name, 'dboy_id'=>$ords->dboy_id, 'delivery_charge'=>$ords->delivery_charge, 'total_price'=>$ords->total_price,'total_product_mrp'=>$ords->total_products_mrp,'delivery_boy_name'=>$ords->delivery_boy_name,'order_status'=>$ords->order_status,'cart_id'=>$cart_id,'user_number'=>$ords->user_number,'address'=>$ords->address , 'time_slot'=>$ords->time_slot,'paid_by_wallet'=>$ords->paid_by_wallet,'remaining_price'=>$ords->rem_price,'price_without_delivery'=>$ords->price_without_delivery,'coupon_discount'=>$ords->coupon_discount,'vendor_name'=>$ords->vendor_name,'payment_method'=>$ords->payment_method,'payment_status'=>$ords->payment_status,'delivery_boy_num'=>$ords->delivery_boy_phone,'order_details'=>$details); 
                          }
                          }
                  else{
                  $data[]=array('order_details'=>'no orders found');
                          }
                          return $data;
        }



          public function store_complete_order(Request $request)
          {
              
            $vendor_id = $request->vendor_id;			
                      
            $completeorder  =   DB::table('orders')
             ->join('tbl_user', 'orders.user_id', '=', 'tbl_user.user_id')
             ->join('user_address','orders.address_id', '=', 'user_address.address_id')
             ->join('area', 'user_address.area_id','=', 'area.area_id')
             ->join('vendor_area', 'area.area_id','=', 'vendor_area.area_id')
              ->join('vendor', 'vendor_area.vendor_id','=', 'vendor.vendor_id')
             ->leftJoin('delivery_boy','orders.dboy_id', '=','delivery_boy.delivery_boy_id')
             ->select('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
             ->groupBy('area.area_id','orders.order_id','orders.user_id','orders.delivery_date','orders.payment_method','orders.payment_status','tbl_user.user_name','orders.dboy_id','orders.delivery_charge', 'orders.total_price','orders.total_products_mrp','orders.delivery_charge','delivery_boy.delivery_boy_name','orders.dboy_id','orders.order_status','orders.cart_id','orders.delivery_date','user_address.user_number','user_address.user_name','user_address.address','orders.time_slot','orders.delivery_charge','orders.paid_by_wallet','orders.rem_price','orders.price_without_delivery','orders.coupon_discount','vendor.vendor_name')
              ->where('orders.order_status',"Completed")
               ->where('orders.ui_type','=', '1')
             ->where('orders.vendor_id', $vendor_id)
             ->orderBy('user_id')
             ->get();
            
            if(count($completeorder)>0){
           foreach($completeorder as $ords){
                  $cart_id = $ords->cart_id;    
              $details  =   DB::table('order_details')
                            ->join('product_varient', 'order_details.varient_id', '=', 'product_varient.varient_id')
                            ->join('product','product_varient.product_id', '=', 'product.product_id')
                            ->select('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty', DB::raw('SUM(order_details.qty) as total_items'))
                           ->where('order_details.order_cart_id',$cart_id)
                           ->groupBy('product.product_name','product_varient.price','product_varient.price','product_varient.unit','product_varient.quantity','product_varient.varient_image','product_varient.description','order_details.varient_id','order_details.store_order_id','order_details.qty')
                           ->get(); 
                       
             
             $data[]=array('area_id'=>$ords->area_id,'order_id'=>$ords->order_id, 'user_id'=>$ords->user_id, 'delivery_date'=>$ords->delivery_date,'user_name'=>$ords->user_name, 'dboy_id'=>$ords->dboy_id, 'delivery_charge'=>$ords->delivery_charge, 'total_price'=>$ords->total_price,'total_product_mrp'=>$ords->total_products_mrp,'delivery_boy_name'=>$ords->delivery_boy_name,'order_status'=>$ords->order_status,'cart_id'=>$cart_id,'user_number'=>$ords->user_number,'address'=>$ords->address , 'time_slot'=>$ords->time_slot,'paid_by_wallet'=>$ords->paid_by_wallet,'remaining_price'=>$ords->rem_price,'price_without_delivery'=>$ords->price_without_delivery,'coupon_discount'=>$ords->coupon_discount,'vendor_name'=>$ords->vendor_name,'payment_method'=>$ords->payment_method,'payment_status'=>$ords->payment_status,'order_details'=>$details); 
             }
             }
             else{
                 $data[]=array('order_details'=>'no orders found');
             }
             return $data;     
         } 



          public function assigned_store_order(Request $request)
         {
         
             $delivery_id = $request->delivery_boy_id;
             $order_id = $request->order_id;
              $update = DB::table('orders')
                       ->where('order_id',$order_id)
                       ->update(['dboy_id'=>$delivery_id,
                       'order_status'=>"Confirmed"
                       ]);
                       
                       $notification_title = "New Order Assign";
                
                       $getDevice = DB::table('delivery_boy')
                         ->where('delivery_boy_id', $delivery_id)
                        ->select('device_id','delivery_boy_name')
                        ->first();
                        $delivery_boy_name = $getDevice->delivery_boy_name;
                          $created_at = Carbon::now();
                          
                          $notification_text = "Hi, .$delivery_boy_name. you received new order please check the details ";
                       
                       if($update)
                       
                       {
                                $getFcm = DB::table('fcm_key')
                                 ->first();
                                        
                            $getFcmKey = $getFcm->dboy_app_key;
                            $fcmUrl = 'https://fcm.googleapis.com/fcm/send';
                            $token = $getDevice->device_id;
                    
        
                    $notification = [
                        'title' => $notification_title,
                        'body' => $notification_text,
                        'sound' => true,
                    ];
                    
                    $extraNotificationData = ["message" => $notification];
        
                    $fcmNotification = [
                        'to'        => $token,
                        'notification' => $notification,
                        'data' => $extraNotificationData,
                    ];
        
                    $headers = [
                        'Authorization: key='.$getFcmKey,
                        'Content-Type: application/json'
                    ];
        
                    $ch = curl_init();
                    curl_setopt($ch, CURLOPT_URL,$fcmUrl);
                    curl_setopt($ch, CURLOPT_POST, true);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fcmNotification));
                    $result = curl_exec($ch);
                    curl_close($ch);
                    
             
                
                    
                $results = json_decode($result);
                
                            
                $mess = array('status'=>'1', 'message'=>'Delivery boy assigned successfully', 'data'=>$update);
                        return $mess;
                } 
                 else{
                        
                        
                        $message = array('status'=>'0', 'message'=>'data not found', 'data'=>[]);
                        return $message;
                    }
          		
      
         }

         public function store_delivery_boy(Request $request)
         {
         
             $vendor_id = $request->vendor_id;
             $vendordelivery_boy =  DB::table('delivery_boy')
             ->select('delivery_boy.delivery_boy_id' , 'delivery_boy.delivery_boy_name' ,'delivery_boy.vendor_id' ,'delivery_boy.delivery_boy_image' ,'delivery_boy.delivery_boy_phone' , 'delivery_boy.delivery_boy_pass', 'delivery_boy.lat' ,'delivery_boy.lng' ,'delivery_boy.device_id','delivery_boy.delivery_boy_status','delivery_boy.is_confirmed','delivery_boy.otp','delivery_boy.phone_verify','delivery_boy.cityadmin_id','delivery_boy.dboy_comission','delivery_boy.created_at','delivery_boy.updated_at')
             ->GroupBy('delivery_boy.delivery_boy_id' , 'delivery_boy.delivery_boy_name' ,'delivery_boy.vendor_id' ,'delivery_boy.delivery_boy_image' ,'delivery_boy.delivery_boy_phone' , 'delivery_boy.delivery_boy_pass', 'delivery_boy.lat' ,'delivery_boy.lng' ,'delivery_boy.device_id','delivery_boy.delivery_boy_status','delivery_boy.is_confirmed','delivery_boy.otp','delivery_boy.phone_verify','delivery_boy.cityadmin_id','delivery_boy.dboy_comission','delivery_boy.created_at','delivery_boy.updated_at' )
             ->where('delivery_boy.delivery_boy_status', 'online')
               ->where('delivery_boy.vendor_id', $vendor_id)
   ->get();
$cityadmindelivery_boy =  DB::table('delivery_boy')
               ->join('delivery_boy_vendor', 'delivery_boy.delivery_boy_id', '=', 'delivery_boy_vendor.delivery_boy_id')	  
               ->select('delivery_boy.delivery_boy_id' , 'delivery_boy.delivery_boy_name' ,'delivery_boy_vendor.vendor_id' ,'delivery_boy.delivery_boy_image' ,'delivery_boy.delivery_boy_phone' , 'delivery_boy.delivery_boy_pass', 'delivery_boy.lat' ,'delivery_boy.lng' ,'delivery_boy.device_id','delivery_boy.delivery_boy_status','delivery_boy.is_confirmed','delivery_boy.otp','delivery_boy.phone_verify','delivery_boy.cityadmin_id','delivery_boy.dboy_comission','delivery_boy.created_at','delivery_boy.updated_at')
               ->GroupBy('delivery_boy.delivery_boy_id' , 'delivery_boy.delivery_boy_name' ,'delivery_boy_vendor.vendor_id' ,'delivery_boy.delivery_boy_image' ,'delivery_boy.delivery_boy_phone' , 'delivery_boy.delivery_boy_pass', 'delivery_boy.lat' ,'delivery_boy.lng' ,'delivery_boy.device_id','delivery_boy.delivery_boy_status','delivery_boy.is_confirmed','delivery_boy.otp','delivery_boy.phone_verify','delivery_boy.cityadmin_id','delivery_boy.dboy_comission','delivery_boy.created_at','delivery_boy.updated_at' )
     ->where('delivery_boy.delivery_boy_status', 'online') 
     ->where('delivery_boy_vendor.vendor_id', $vendor_id)
     ->get();
     $arr1 = json_decode($vendordelivery_boy);
     $arr2 = json_decode($cityadmindelivery_boy);
     $data = array_merge($arr1, $arr2);
                       
                       if($data)	{             
                        $mess = array('status'=>'1', 'message'=>'data found', 'data'=>$data);
                        return $mess;
                     }
                    else
                     {
                        $message = array('status'=>'0', 'message'=>'not available delivery boy', 'data'=>[]);
                        return $message;
                     }     
                       		
      
         }
 

}
