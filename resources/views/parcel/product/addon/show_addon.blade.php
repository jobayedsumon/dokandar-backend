@extends('parcel.layout.app')
 
@section ('content')

 <style>
     input[type="file"] {
    background-color:transparent;
    padding:0px;
}

 </style>


<!-- Begin Page Content -->
<div class="container-fluid">
 

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Addons</h6>
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

       <a class="btn btn-success m-auto" style="float: right;" href="{{route('parcelAddproductaddon', $id)}}">Add Varient</a> 
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="example8" width="100%" cellspacing="0">
          <thead>
            <tr>
            <th>product_id</th>
            <th>Addon Name</th>
            <th>Addon Price</th>
            
            <th>Action</th>
            </tr>
          </thead>
    
          <tbody>
          @if(count($product)>0)
                          @php $i=1; @endphp
                          @foreach($product as $products)
                        <tr>
                            <td>{{$products->product_id}}</td>
                            <td>{{$products->addon_name}}</td>
                            <td>{{$products->addon_price}}</td>
                            
                            
                            
                            <td>
                               <a href="{{route('parcelEditproductaddon',$products->addon_id)}}" style="width: 28px; padding-left: 6px;" class="btn btn-info"  style="width: 10px;padding-left: 9px;" style="color: #fff;"><i class="fa fa-edit" style="width: 10px;"></i></a>
							<button type="button" style="width: 28px; padding-left: 6px;" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal{{$products->addon_id}}"><i class="fa fa-trash"></i></button>
							</td>

                        </tr>
                        @php $i++; @endphp
                        @endforeach
                      @else
                        <tr>
                          <td>No data found</td>
                        </tr>
                      @endif
                       
          </tbody>
        </table>
        
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->
</div>
</div>
@foreach($product as $products)
<!-- Modal -->
<div class="modal fade" id="exampleModal{{$products->addon_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Delete product</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
			</div>
			<div class="modal-body">
				Are you want to delete this varient.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="{{route('deleteproductaddon',$products->addon_id)}}" class="btn btn-primary">Delete</a>
			</div>
		</div>
	</div>
</div>
@endforeach   
@endsection