@extends('admin.layout.app')

@section ('content')
<div class="content-wrapper">
          <div class="row">
		  <div class="col-md-2">
		  </div>
            
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">All User</h4>
                   @if (count($errors) > 0)
                      @if($errors->any())
                        <div class="alert alert-primary" role="alert">
                          {{$errors->first()}}
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                          </button>
                        </div>
                      @endif
                  @endif
                  <form class="forms-sample" action="{{route('AddNewcityadmin')}}" method="post" enctype="multipart/form-data">
                      {{csrf_field()}}
                      <div class="form-group">
                    <label for="exampleFormControlSelect3">City</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="city_name">
                      @foreach($city as $city)
		          	<option value="{{$city->city_id}}">{{$city->city_name}}</option>
		              @endforeach
                      
                      
                    </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Cityadmin Name</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="cityadmin_name" placeholder="Enter Cityadmin Name">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputName1">Address</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="cityadmin_address" placeholder="Enter Address">
                    </div>
                   
                     <div class="form-group">
                      <label>Cityadmin Image</label>  
                      
                      <div class="input-group col-xs-12">
                      <input type="file" name="cityadmin_image"  class="file-upload-default">                        
                        </div>
                      </div>
                      
                      <div class="form-group">
                      <label for="exampleInputName1">Cityadmin Email</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="cityadmin_email" placeholder="Enter Cityadmin Email">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputName1">Cityadmin Phone</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="cityadmin_phone" placeholder="Enter City-Admin Phone">
                    </div>
                     <div class="form-group">
                      <label for="exampleInputName1">Password</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="password1" placeholder="Enter password">
                    </div>
                    
                     <div class="form-group">
                      <label for="exampleInputName1">Confirm Password</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="password2" placeholder="confirm password">
                    </div>
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                    <!--
                    <button class="btn btn-light">Cancel</button>
                    -->
                     <a href="{{route('cityadmin')}}" class="btn btn-light">Cancel</a>
                  </form>
                </div>
              </div>
            </div>
             <div class="col-md-2">
		  </div>
     
          </div>
        </div>
       </div> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
        	$(document).ready(function(){
        	
                $(".des_price").hide();
                
        		$(".img").on('change', function(){
        	        $(".des_price").show();
        			
        	});
        	});
</script>

@endsection