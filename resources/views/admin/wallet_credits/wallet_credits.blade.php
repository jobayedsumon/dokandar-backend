@extends('admin.layout.app')

@section ('content')


<!-- Begin Page Content -->
<div class="container-fluid">
 

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Wallet Credits</h6>
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
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
            <th>S.No</th>
            <th>User id</th>
            <th>User Name</th>
            <th>User City</th>
            <th>wallet credits</th>
            <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
           <th>S.No</th>
           <th>User id</th>
            <th>User Name</th>
            <th>User City</th>
            <th>wallet credits</th>
            <th>Action</th>
            </tr>
          </tfoot>
          <tbody>
          @if(count($wallet_credits)>0)
                          @php $i=1; @endphp
                          @foreach($wallet_credits as $wallet_creditss)
                        <tr>
                            <td>{{$i}}</td>
                            <td>{{$wallet_creditss->user_id}}</td>
                            <td>{{$wallet_creditss->user_name}}</td>
                            <td>{{$wallet_creditss->city_name}}</td>
                            <td>{{$wallet_creditss->wallet_credits}}</td>
                            <td>
                                <a href="{{route('edit-wallet_credits',$wallet_creditss->user_id)}}" style="width: 146px; padding-left: 6px;" class="btn btn-info">Add Credits</a>
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
@endsection