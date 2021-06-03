@extends('admin.layout.app')

@section ('content')
<div class="row">
  
<div class="col-md-3"></div>
		 <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Banner</h4>
                  <!-- <p class="card-description">
                    Basic form elements
                  </p> -->
                  <form class="forms-sample" action="{{route('updatebanner',$city->banner_id)}}" method="post" enctype="multipart/form-data">
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
                     <div class="form-group">
                    <label for="exampleFormControlSelect3">Select Vendor</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="vendor_id">
                       @foreach($vendor as $vendors)
		          	<option value="{{$vendors->vendor_id}}" @if($vendors->vendor_id == $city->vendor_id) selected @endif>{{$vendors->vendor_name}}</option>
		              @endforeach
                    </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Banner Name</label>
                      <input type="text" class="form-control" name="city_pincode" value="{{$city->banner_name}}"  id="exampleInputName1" placeholder="City Pin Code">
                    </div>
                   <div class="form-group">
                      <label>City Image</label>
                      <input type="hidden" name="old_city_image" value="{{$city->city_image}}">
                      <div class="input-group col-xs-12">
                      <input type="file" name="city_image" class="file-upload-default">
                      </div>
                    </div>
                    
                   
                    <button type="submit" class="btn btn-success mr-2">Submit</button>
                   <!--  <button class="btn btn-light">Cancel</button> -->
                  </form>
                </div>
              </div>
            </div>
  <div class="col-md-3"></div>

</div>
</div>
@endsection