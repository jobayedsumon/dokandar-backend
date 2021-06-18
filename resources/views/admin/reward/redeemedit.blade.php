@extends('admin.layout.app')

@section ('content')
<div class="row">
  
<div class="col-md-3"></div>
		 <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Redeem Points Update</h4>
                  <!-- <p class="card-description">
                    Basic form elements
                  </p> -->
                  <form class="forms-sample" action="{{route('reedemupdate')}}" method="post" enctype="multipart/form-data">
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
                      <label for="exampleInputName1">Reward points</label>
            
                      <input type="text" class="form-control" name="reward_point"  value="{{$reedem ? $reedem->reward_point : ''}}"  id="exampleInputName1" placeholder="Minimum Cart Value">
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputName1">Values</label>
                      <input type="text" class="form-control" name="value"value="{{$reedem ? $reedem->value : ''}}"   id="exampleInputName1" placeholder="Rewards Points">
                    </div>
                  
                  
                    <button type="submit" class="btn btn-success mr-2">Update</button>
                   
                  </form>
                </div>
              </div>
            </div>
  <div class="col-md-3"></div>

</div>
</div>
@endsection