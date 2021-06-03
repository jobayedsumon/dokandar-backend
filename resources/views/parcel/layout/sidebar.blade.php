 		<!-- BEGIN #sidebar -->
		<div id="sidebar" class="app-sidebar">
			<!-- BEGIN scrollbar -->
			<div class="app-sidebar-content" data-scrollbar="true" data-height="100%">
				<!-- BEGIN menu -->
				<div class="menu">
					<div class="menu-header">Navigation</div>
					<div class="menu-item active">
						<a href="{{route('parcel-index')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-laptop"></i></span>
							<span class="menu-text">Dashboard</span>
						</a>
					</div>

				
				
			

				
			
					<div class="menu-divider"></div>
					<div class="menu-header">Charges</div>
					<div class="menu-item">
						<a href="{{url('parcel/charges')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker-alt"></i></span>
							<span class="menu-text">Charges List</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{url('parcel/add-charge')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker-alt"></i></span>
							<span class="menu-text">Add Charges</span>
						</a>
					</div>

					<div class="menu-divider"></div>
					<div class="menu-header">City | Area | Delivery Boy </div>
					<div class="menu-item">
						<a href="{{url('parcel/city')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker-alt"></i></span>
							<span class="menu-text">Cities</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('parcelarea')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker"></i></span>
							<span class="menu-text">Area</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('parceldelivery_boy')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-motorcycle"></i></span>
							<span class="menu-text">Delivery Boy</span>
						</a>
					</div>
							<div class="menu-item">
						<a href="{{route('parceldelivery_boy_comission')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-book"></i></span>
							<span class="menu-text">Delivery Boy Comission</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('parcelcityadmindelivery_boy')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bicycle"></i></span>
							<span class="menu-text">City Admin Delivery Boys</span>
						</a>
					</div>
				    <div class="menu-divider"></div>
					<div class="menu-header">Coupon Management</div>
					
				    <div class="menu-item">
						<a href="{{route('parcelcouponlist')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-gift"></i></span>
							<span class="menu-text">Coupon</span>
						</a>
					</div>
				
					{{--<div class="menu-divider"></div>
					<div class="menu-header">Vendor | Orders | Comission</div>
					<div class="menu-item">
						<a href="{{route('parceltoday_order')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-cart-plus"></i></span>
							<span class="menu-text">Today | Order</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('parceltoday_order')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-thumbs-up"></i></span>
							<span class="menu-text">Completed | Order</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('parcelcomission')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-book"></i></span>
							<span class="menu-text">Admin | Comission</span>
						</a>
					</div>--}}

					<div class="menu-divider"></div>
					<div class="menu-header">Vendor | Orders | Comission</div>
					<div class="menu-item">
						<a href="{{route('today_order_parcel')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-cart-plus"></i></span>
							<span class="menu-text"> Order</span>
						</a>
					</div>
				
					<div class="menu-item">
						<a href="{{route('parcel_complete_order')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-thumbs-up"></i></span>
							<span class="menu-text">Completed | Order</span>
						</a>
					</div>
					
					<div class="menu-divider"></div>
					<div class="menu-header">Vendor | Settings</div>
				        <div class="menu-item">
						<a href="{{route('parceltimeslot')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-clock"></i></span>
							<span class="menu-text">PickUp Time Slot</span>
						</a>
					</div>
					 
					
				</div>
				<!-- END menu -->
			</div>
			<!-- END scrollbar -->
			
			<!-- BEGIN mobile-sidebar-backdrop -->
			<button class="app-sidebar-mobile-backdrop" data-dismiss="sidebar-mobile"></button>
			<!-- END mobile-sidebar-backdrop -->
		</div>
		<!-- END #sidebar -->
		






 
