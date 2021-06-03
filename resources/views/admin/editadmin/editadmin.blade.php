@extends('admin.layout.app')

@section ('content')
			<!-- BEGIN container -->
			<div class="container">
				<!-- BEGIN row -->
				<div class="row justify-content-center">
					<!-- BEGIN col-10 -->
					<div class="col-xl-10">
						<!-- BEGIN row -->
						<div class="row">
							<!-- BEGIN col-9 -->
							<div class="col-xl-9">
								<!-- BEGIN #general -->
								<div id="general" class="mb-5">
									<h4><i class="far fa-user fa-fw"></i> Account Settings</h4>
									<p>View and update your Account settings.</p>
									<div class="card">
										<div class="list-group list-group-flush">
											 <form class="forms-sample" action="{{route('update-admin',[$admin->id])}}" method="post" enctype="multipart/form-data">
                                            {{csrf_field()}}
                                             @if (count($errors) > 0)
                                            @if($errors->any())
                                           <div class="alert alert-primary" role="alert">
                                          <strong>SUCCESS : </strong>{{$errors->first()}}
                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                          <span aria-hidden="true">×</span>
                                          </button>
                                          </div>
                                          @endif
                                         @endif
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Admin Name</label>
                                              <input type="text" class="form-control" name="admin_name" value="{{$admin->admin_name}}" id="exampleInputName1" placeholder="Name">
                                            </div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Admin Email</label>
                                              <input type="text" class="form-control" name="admin_email" value="{{$admin->admin_email}}" id="exampleInputName1">
                                            </div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Admin Phone</label>
                                              <input type="text" class="form-control" name="admin_phone" value="{{$admin->admin_phone}}" id="exampleInputName1">
                                            </div>
                                           
                                           <div class="form-group list-group-item d-flex align-items-center">
                                              <label>admin Image</label>
                                              <input type="hidden" name="old_admin_image" value="{{$admin->admin_image}}">
                                              <img src="{{url($admin->admin_image)}}" style="width:50px; height:50px; border-radius:50%"/>&nbsp; &nbsp;
                                              <div class="input-group col-xs-12">
                                              <div class="custom-file">
                                                  <input type="file" name="admin_image" class="custom-file-input" id="customFile" />
                                                  <label class="custom-file-label" for="customFile">Choose file</label>
                                                </div>      
                                              
                                              </div>
                                            </div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Admin password</label>
                                              <input type="password" class="form-control" name="admin_pass" placeholder="enter new password if you want to change" id="exampleInputName1">
                                            </div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">retype password</label>
                                              <input type="password" class="form-control" name="password2"  placeholder="retype password" id="exampleInputName1">
                                            </div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                            <button type="submit" class="btn btn-success width-100">Submit</button>
                                           <!--  <button class="btn btn-light">Cancel</button> -->
                                           </div>
                                          </form>
										</div>
									
									</div>
								</div>
								<!-- END #general -->
							
								
								<!-- BEGIN #privacyAndSecurity -->
								<div id="privacyAndSecurity" class="mb-5">
									<h4><i class="far fa-bell fa-fw"></i>FCM server Key</h4>
									<p>FCM server key for notifications.</p>
									<div class="card">
										<div class="list-group list-group-flush">
										<form action="{{route('update_fcm')}}" method="post">   
                                			{{csrf_field()}}
                                			 <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Usere FCM Server Key<sup>*</sup></label>
                                              <input type="text" class="form-control" id="exampleInputName1" name="user_key"  value="{{$user_api_key}}" required>
                                			</div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Delivery Boy FCM Server Key<sup>*</sup></label>
                                              <input type="text" class="form-control" id="exampleInputName1" name="dboy_key" value="{{$dboy_api_key}}" required>
                                			</div>
                                			<div class="form-group list-group-item d-flex align-items-center">
                                			    <button type="submit" class="btn btn-success mr-2">Set FCM Server Key</button>
                                			</div>
                                			</form>
										</div>
									</div>
								</div>
								
									<div id="countrycode" class="mb-5">
									<h4><i class="far fa-bell fa-fw"></i>Country Code</h4>
									<p>Update Country Code with number limit </p>
									<div class="card">
										<div class="list-group list-group-flush">
										<form action="{{route('update_countrycode')}}" method="post">   
                                			{{csrf_field()}}
                                			 <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Country Code<sup>*</sup></label>
                                              <input type="text" class="form-control" id="exampleInputName1" name="country_code"  value="{{$country_code}}" required>
                                			</div>
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label for="exampleInputName1">Number Limit<sup>*</sup></label>
                                              <input type="text" class="form-control" id="exampleInputName1" name="number_limit" value="{{$number_limit}}" required>
                                			</div>
                                			<div class="form-group list-group-item d-flex align-items-center">
                                			    <button type="submit" class="btn btn-success mr-2">Update Country Code</button>
                                			</div>
                                			</form>
										</div>
									</div>
								</div>
								<!-- END #privacyAndSecurity -->
								
								<!-- BEGIN #payment -->
							
								<!-- END #payment -->
								
								<!-- BEGIN #shipping -->
								<div id="shipping" class="mb-5">
									<h4><i class="far fa-paper-plane fa-fw"></i> SMS Settings</h4>
									<p>Choose your SMS medium</p>
									<div class="card">
										<div class="card-header card-header-primary">
                                          <h4 class="card-title">OTP Setting</h4>
                                          <b>@if($smsby->status == 0 && $smsby->twilio == 0 && $smsby->msg91 == 0) OTP/SMS OFF &nbsp;<span style="height: 12px;width: 12px;background-color: red;border-radius: 50%;display: inline-block;" class="dot"></span> @endif
                                          @if($smsby->status == 1 && $smsby->twilio == 1 && $smsby->msg91 == 0) Twilio is On &nbsp;<span style="height: 12px;width: 12px;background-color: green;border-radius: 50%;display: inline-block;" class="dot"></span> @endif 
                                          @if($smsby->status == 1 && $smsby->twilio == 0 && $smsby->msg91 == 1) Msg91 is On &nbsp;<span style="height: 12px;width: 12px;background-color: green;border-radius: 50%;display: inline-block;" class="dot"></span> @endif</b>
                                          
                                         </div> 
                            <script type="text/javascript">
                                function ShowHideDiv() {
                                    var ddlPassport = document.getElementById("ddlPassport");
                                    var dvPassport = document.getElementById("dvPassport");
                                    dvPassport.style.display = ddlPassport.value == "Msg91" ? "block" : "none";
                                    var dv2Passport = document.getElementById("dv2Passport");
                                    dv2Passport.style.display = ddlPassport.value == "Twilio" ? "block" : "none";
                                    var dv3Passport = document.getElementById("dv3Passport");
                                    dv3Passport.style.display = ddlPassport.value == "off" ? "block" : "none";
                                }
                            </script>
                            <div class="container">
                             <div class="form-group list-group-item d-flex align-items-center">   
                            <span>Select Your Message/OTP Medium</span>
                            <select id="ddlPassport" class="form-control" onchange="ShowHideDiv()">
                                <option disabled selected>Select Your Message/OTP Medium <i class="material_icons">setting</i></option>
                                <option value="Msg91">Msg91 </option>
                                <option value="Twilio">Twilio</option>
                                
                            </select>
                            </div>      
                                   <div id="dvPassport" style="display: none">
                               
                                          <form class="forms-sample" action="{{route('update_sms_api')}}" method="post" enctype="multipart/form-data">
                                              {{csrf_field()}}
                                        <div class="card-body">
                                             @if($msg91)
                                             <div class="row">
                                              <div class="col-md-6">
                                                <div class="form-group  list-group-item d-flex align-items-center">
                                                  <label class="bmd-label-floating">Sender ID</label>
                                                  <input type="text" name="sender_id" value="{{($msg91->sender_id)}}" class="form-control">
                                                </div>
                                              </div>
                                               <div class="col-md-6">
                                                <div class="form-group  list-group-item d-flex align-items-center">
                                                  <label class="bmd-label-floating">Msg91 API Key</label>
                                                  <input type="text" name="api" value="{{($msg91->api_key)}}" class="form-control">
                                                </div>
                                              </div>
                        
                                            </div>
                                            @else
                                             <div class="row">
                                              <div class="col-md-6">
                                                <div class="form-group  list-group-item d-flex align-items-center">
                                                  <label class="bmd-label-floating">Sender ID</label>
                                                  <input type="text" name="sender_id" placeholder="Insert Sender Id Of Six Letters Only" class="form-control" required>
                                                </div>
                                              </div>
                                               <div class="col-md-6">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                  <label class="bmd-label-floating">Msg91 API Key</label>
                                                  <input type="text" name="api" placeholder="Msg91 API Key" class="form-control" required>
                                                </div>
                                              </div>
                        
                                            </div>
                                            @endif
                                            <div class="form-group list-group-item d-flex align-items-center">
                                            <button type="submit" class="btn btn-primary pull-center">ON Msg91</button></div>
                                            <div class="clearfix"></div>
                                          </form>
                                      </div>              
                                    </div>
                                     
                                <div id="dv2Passport" style="display: none">
                                   <form class="forms-sample" action="{{route('updatetwilio')}}" method="post" enctype="multipart/form-data">
                                      {{csrf_field()}}      
                                           @if($twilio)
                                            <div class="row">
                                              <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                   <label for="bmd-label-floating">Twilio SID</label>
                                                <input type="text" id="sid" class="form-control" value="{{$twilio->twilio_sid}}" name="sid">
                                                </div>
                                              </div>
                                               <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                  <label for="bmd-label-floating">Twilio Token</label>
                                                <input type="text" id="token" class="form-control" value="{{$twilio->twilio_token}}" name="token">
                                                </div>
                                              </div>
                                              <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                 <label for="bmd-label-floating">Twilio Phone</label>
                                                <input type="text" id="phone" class="form-control" value="{{$twilio->twilio_phone}}" name="phone">
                                                </div>
                                              </div>
                                            </div>
                                            @else
                                            <div class="row">
                                              <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                 <label for="bmd-label-floating">Twilio SID</label>
                                                <input type="text" id="sid" class="form-control" placeholder="Twilio SID" name="sid" required>
                                                </div>
                                              </div>
                                               <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                  <label for="bmd-label-floating">Twilio Token</label>
                                                <input type="text" id="token" class="form-control" placeholder="Twilio Token" name="token" required>
                                                </div>
                                              </div>
                                              <div class="col-md-4">
                                                <div class="form-group list-group-item d-flex align-items-center">
                                                 <label for="bmd-label-floating">Twilio Phone</label>
                                                <input type="text" id="phone" class="form-control" placeholder="Twilio Phone" name="phone" required>
                                                </div>
                                              </div>
                                            </div>
                                            @endif
                                            <div class="form-group list-group-item d-flex align-items-center">
                                            <button type="submit" class="btn btn-primary pull-center">ON Twilio</button>
                                            </div>
                                            <div class="clearfix"></div>
                                            </form>
                                      </div> 
                                  
                                    <div id="dv3Passport" style="display: none">
                                     <form class="forms-sample" action="{{route('msgoff')}}" method="post" enctype="multipart/form-data">
                                      {{csrf_field()}} 
                                     <div class="form-group list-group-item d-flex align-items-center"> 
                                     <button type="submit" class="btn btn-primary pull-center">Otp/SMS OFF</button>
                                    </div>
                                    <div class="clearfix"></div>
                                    </form>
                                     </div> 
                                      </div>
									</div>
								</div>
								<!-- END #shipping -->
								
								<!-- BEGIN #mediaAndFiles -->
								<div id="mediaAndFiles" class="mb-5">
									<h4><i class="far fa-images fa-fw"></i> Map & Location Settings</h4>
									<p>Allowed files and media format upload setting</p>
									<div class="card">
										<div class="card-header card-header-primary">
                                          <h4 class="card-title">OTP Setting</h4>
                                            <b>@if($mset->mapbox == 1) Mapbox ON &nbsp;<span style="height: 12px;width: 12px;background-color: red;border-radius: 50%;display: inline-block;" class="dot"></span> @endif
                  @if($mset->google_map == 1) Google map On &nbsp;<span style="height: 12px;width: 12px;background-color: green;border-radius: 50%;display: inline-block;" class="dot"></span> @endif </b>
                                          
                                         </div> 
                            <script type="text/javascript">
                                function ShowHideDive() {
                                    var ddl2Passport = document.getElementById("ddl2Passport");
                                    var dv4Passport = document.getElementById("dv4Passport");
                                    dv4Passport.style.display = ddl2Passport.value == "gmap" ? "block" : "none";
                                    var dv5Passport = document.getElementById("dv5Passport");
                                    dv5Passport.style.display = ddl2Passport.value == "mapbox" ? "block" : "none";
                                    
                                }
                            </script>
                            <div class="container">
                             <div class="form-group list-group-item d-flex align-items-center">   
                            <span>Map/Location Settings</span>
                            <select id="ddl2Passport" class="form-control" onchange="ShowHideDive()">
                                <option disabled selected>Select Your Map Location Medium <i class="material_icons">setting</i></option>
                                <option value="gmap">Google Map </option>
                                <option value="mapbox">Mapbox</option>
                            </select>
                            </div>      
                                   <div id="dv4Passport" style="display: none">
                               <form class="forms-sample" action="{{route('updatemap')}}" method="post" enctype="multipart/form-data">
                                  {{csrf_field()}}      
                                       @if($g)
                                        <div class="row">
                                          <div class="col-md-12">
                                            <div class="form-group list-group-item d-flex align-items-center">
                                               <label for="bmd-label-floating">Google map</label>
                                            <input type="text" id="api" class="form-control" value="{{$g->map_api_key}}" name="api">
                                            </div>
                                          </div>
                                        </div>
                                        @else
                                        <div class="row">
                                         <div class="col-md-12">    
                                         <div class="form-group list-group-item d-flex align-items-center">
                                               <label for="bmd-label-floating">Google map</label>
                                            <input type="text" id="api" class="form-control" placeholder="map api key" name="api">
                                            </div>
                                         </div>    
                                        </div>
                                        @endif
                                        <button type="submit" class="btn btn-primary pull-center">ON Google Map</button>
                                        <div class="clearfix"></div>
                                        </form>
                                      </div>              
                                    </div>
                                     
                                <div id="dv5Passport" style="display: none">
                                   <form class="forms-sample" action="{{route('updatemapbox')}}" method="post" enctype="multipart/form-data">
                                          {{csrf_field()}}
                                    <div class="card-body">
                                         @if($m)
                                         <div class="row">
                                          
                                           <div class="col-md-12">
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label class="bmd-label-floating">Mapbox API Key</label>
                                              <input type="text" name="mapbox" value="{{($m->mapbox_api)}}" class="form-control">
                                            </div>
                                          </div>
                    
                                        </div>
                                        @else
                                         <div class="row">
                                            <div class="col-md-12">
                                            <div class="form-group list-group-item d-flex align-items-center">
                                              <label class="bmd-label-floating">Mapbox API Key</label>
                                              <input type="text" name="mapbox" placeholder="mapbox api key" class="form-control">
                                            </div>
                                          </div>
                    
                    
                                        </div>
                                        @endif
                                        <button type="submit" class="btn btn-primary pull-center">ON MapBox</button>
                                        <div class="clearfix"></div>
                                      </form>
                                      </div> 
                                      </div>
									</div>
								</div>
								<!-- END #mediaAndFiles -->
								
								<!-- BEGIN #languages -->
								<div id="languages" class="mb-5">
									<h4><i class="fa fa-language fa-fw"></i> Currency</h4>
									<p>Choose currency sign</p>
									<div class="card">
									 <form class="forms-sample" action="{{route('update-currency',[$currency->currency_id])}}" method="post" enctype="multipart/form-data">
                                        {{csrf_field()}}
                                     
                                        <div class="form-group list-group-item d-flex align-items-center">
                                          <label for="exampleInputName1">Currency Name</label>
                                          <input type="text" class="form-control" name="currency" value="{{$currency->currency}}" id="exampleInputName1" placeholder="Name">
                                        </div>
                                      <div class="form-group list-group-item d-flex align-items-center">
                                          <label for="exampleInputName1">Currency Sign</label>
                                          <input type="text" class="form-control" name="currency_sign" value="{{$currency->currency_sign}}" id="exampleInputName1">
                                        </div>
                                        <div class="form-group list-group-item d-flex align-items-center">
                                        <button type="submit" class="btn btn-success mr-2">Submit</button>
                                        </div>
                                       <!--  <button class="btn btn-light">Cancel</button> -->
                                      </form>
									</div>
								</div>
								<!-- END #languages -->
								
							
							
							</div>
							<!-- END col-9-->
							<!-- BEGIN col-3 -->
							<div class="col-xl-3">
								<!-- BEGIN #sidebar-bootstrap -->
								<nav id="sidebar-bootstrap" class="navbar navbar-sticky d-none d-xl-block">
									<nav class="nav">
										<a class="nav-link" href="#general" data-toggle="scroll-to">Account Settings</a>
										<a class="nav-link" href="#privacyAndSecurity" data-toggle="scroll-to">FCM Server Key</a>
										<a class="nav-link" href="#countrycode" data-toggle="scroll-to">Country Code</a>
										<a class="nav-link" href="#payment" data-toggle="scroll-to">Edit App Logo & Name</a>
										<a class="nav-link" href="#shipping" data-toggle="scroll-to">SMS Settings</a>
										<a class="nav-link" href="#mediaAndFiles" data-toggle="scroll-to">Map Settings</a>
										<a class="nav-link" href="#languages" data-toggle="scroll-to">Currency</a>
									
									</nav>
								</nav>
								<!-- END #sidebar-bootstrap -->
							</div>
							<!-- END col-3 -->
							
							
							
							
							
						</div>
						<!-- END row -->
					</div>
					<!-- END col-10 -->
				</div>
				<!-- END row -->
			</div>
			<!-- END container -->
			
			
			 @foreach($delivery_timing as $delivery_timings)
            <div class="modal fade" id="modalEdit{{$delivery_timings->delivery_timing_id}}">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Edit name</h5>
						<button type="button" class="close" data-dismiss="modal">
							<span>×</span>
						</button>
					</div>
					<div class="modal-body">
					       <form class="forms-sample" action="{{route('update-delivery_timing',[$delivery_timings->delivery_timing_id])}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="form-group">
                      <label for="exampleInputName1">Delivery Timing Text</label>
                      <input type="text" class="form-control" name="delivery_timing_text" value="{{$delivery_timings->delivery_timing_text}}" id="exampleInputName1">
                    </div>
                  <div class="form-group">
                      <label for="exampleInputName1">Delivery Time Slot</label>
                      <input type="text" class="form-control" name="delivery_time_slot" value="{{$delivery_timings->delivery_time_slot}}" id="exampleInputName1">
                    </div>
    
                  
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
					</form>
				</div>
			</div>
		</div>
@endforeach		
		<!-- END #modalEdit -->
@endsection