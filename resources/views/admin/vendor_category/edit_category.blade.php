@extends('admin.layout.app')

@section ('content')
<div class="row">
  
<div class="col-md-3"></div>
		 <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Vendor Category</h4>
                  <!-- <p class="card-description">
                    Basic form elements
                  </p> -->
                  <form class="forms-sample" action="{{route('updatevendor',$city->vendor_category_id)}}" method="post" enctype="multipart/form-data">
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
                    <label for="exampleFormControlSelect3">Select UI</label>
                    <select class="form-control form-control-sm" id="exampleFormControlSelect3 " name="ui">
                       @foreach($ui as $uis)
		          	<option value="{{$uis->id}}" @if($uis->id == $city->ui_type) selected @endif>{{$uis->ui_design}}</option>
		              @endforeach
                      
                      
                    </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Category Name</label>
                      <input type="text" class="form-control" name="vendor_category" value= "{{$city->category_name}}"  id="exampleInputName1" placeholder="Category Name">
                    </div>
                 <div class="form-group">
                      <label>Category Image</label>
                      <input type="hidden" name="old_city_image" value="{{$city->category_image}}">
                      <div class="input-group col-xs-12">
                      <input type="file" name="city_image" class="file-upload-default">
                      </div>
                    </div>
                   
                    <button type="submit" class="btn btn-success mr-2">Add</button>
                   <!--  <button class="btn btn-light">Cancel</button> -->
                  </form>
                </div>
              </div>
            </div>
  <div class="col-md-3"></div>

</div>
</div>
@endsection