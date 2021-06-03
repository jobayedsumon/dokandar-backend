 		<!-- BEGIN #sidebar -->
		<div id="sidebar" class="app-sidebar">
			<!-- BEGIN scrollbar -->
			<div class="app-sidebar-content" data-scrollbar="true" data-height="100%">
				<!-- BEGIN menu -->
				<div class="menu">
					<div class="menu-header">Navigation</div>
					<div class="menu-item active">
						<a href="{{route('cityadmin-index')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-laptop"></i></span>
							<span class="menu-text">Dashboard</span>
						</a>
					</div>
							<div class="menu-divider"></div>
					<div class="menu-header">Notification | User | Vendor</div>
					<div class="menu-item">
						<a href="{{route('cityadminNotification')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bell"></i></span>
							<span class="menu-text">To User</span>
						</a>
					</div>
					
					<div class="menu-item">
						<a href="{{route('CNotification_to_store')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bell"></i></span>
							<span class="menu-text">To Store</span>
						</a>
					</div>
				
				
			  
					<div class="menu-divider"></div>
					<div class="menu-header">| Delivery Boy | Area</div>
				
					<div class="menu-item">
						<a href="{{route('delivery_boy')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-male"></i></span>
							<span class="menu-text">Delivery Boy</span>
						</a>
					</div>
						<div class="menu-item">
						<a href="{{route('cdelivery_boy_comission')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-male"></i></span>
							<span class="menu-text">Delivery Boy Comission</span>
						</a>
					</div>
					
					<div class="menu-item">
						<a href="{{route('area')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker"></i></span>
							<span class="menu-text">Area</span>
						</a>
					</div>
					<div class="menu-divider"></div>
					<div class="menu-header">Vendors | Orders</div>
					<div class="menu-item">
						<a href="{{route('vendor')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-users"></i></span>
							<span class="menu-text">Vendors</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('vendor_list')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bullseye"></i></span>
							<span class="menu-text">Today | Completed</span>
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
 
