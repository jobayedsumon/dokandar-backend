 		<!-- BEGIN #sidebar -->
		<div id="sidebar" class="app-sidebar">
			<!-- BEGIN scrollbar -->
			<div class="app-sidebar-content" data-scrollbar="true" data-height="100%">
				<!-- BEGIN menu -->
				<div class="menu">
					<div class="menu-header">Navigation</div>
					<div class="menu-item active">
						<a href="{{route('admin-index')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-laptop"></i></span>
							<span class="menu-text">Dashboard</span>
						</a>
					</div>
					<div class="menu-divider"></div>
					<div class="menu-header">Notification | User | Vendor</div>
					<div class="menu-item">
						<a href="{{route('adminNotification')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bell"></i></span>
							<span class="menu-text">To User</span>
						</a>
					</div>
					
					<div class="menu-item">
						<a href="{{route('Notification_to_store')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bell"></i></span>
							<span class="menu-text">To Vendors</span>
						</a>
					</div>
				     <div class="menu-divider"></div>
					<div class="menu-header">Cities | City Admin</div>
					<div class="menu-item">
						<a href="{{route('city')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-map-marker-alt"></i></span>
							<span class="menu-text">Cities</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('cityadmin')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-users"></i></span>
							<span class="menu-text">City-Admin</span>
						</a>
					</div>
				
					<div class="menu-divider"></div>
					<div class="menu-header"> Banner | UI</div>
				
					<div class="menu-item">
						<a href="{{route('adminbanner')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-image"></i></span>
							<span class="menu-text">Promotional Banner</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('vendorlist')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-circle"></i></span>
							<span class="menu-text">App UI</span>
						</a>
					</div>
					<div class="menu-divider"></div>
					<div class="menu-header">Users Management</div>
						<div class="menu-item">
						<a href="{{route('alluser')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-user-circle"></i></span>
							<span class="menu-text">App Users</span>
						</a>
					</div>
				
					 <div class="menu-divider"></div>
					<div class="menu-header">Order Complaints | Reason</div>
					<div class="menu-item">
						<a href="{{route('complain')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-bullhorn"></i></span>
							<span class="menu-text"> Order Complaints</span>
						</a>
					</div>
					<div class="menu-item">
						<a href="{{route('cancel_reason')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-ban"></i></span>
							<span class="menu-text">Cancelling Reasons</span>
						</a>
					</div>
					
					<div class="menu-divider"></div>
					<div class="menu-header">Commission</div>
{{--					<div class="menu-item">--}}
{{--						<a href="{{route('RewardList')}}" class="menu-link">--}}
{{--							<span class="menu-icon"><i class="fa fa-trophy"></i></span>--}}
{{--							<span class="menu-text">Rewards</span>--}}
{{--						</a>--}}
{{--					</div>--}}
{{--					--}}
{{--					<div class="menu-item">--}}
{{--						<a href="{{route('reedem')}}" class="menu-link">--}}
{{--							<span class="menu-icon"><i class="fa fa-gift"></i></span>--}}
{{--							<span class="menu-text">Redeem Points</span>--}}
{{--						</a>--}}
{{--					</div>--}}
{{--					--}}
{{--						<div class="menu-item">--}}
{{--						<a href="{{route('reffer')}}" class="menu-link">--}}
{{--							<span class="menu-icon"><i class="fa fa-share-alt"></i></span>--}}
{{--							<span class="menu-text">App Refer</span>--}}
{{--						</a>--}}
{{--					</div>--}}
						<div class="menu-item">
						<a href="{{route('admincomission')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-book"></i></span>
							<span class="menu-text">Comission</span>
						</a>
					</div>
					<div class="menu-divider"></div>
					<div class="menu-header">Privacy | Policy | Feedback</div>
					<div class="menu-item">
						<a href="{{route('termcondition')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-file"></i></span>
							<span class="menu-text">Term & Condition</span>
						</a>
					</div>
					
					<div class="menu-item">
						<a href="{{route('aboutus')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-book"></i></span>
							<span class="menu-text">About Us</span>
						</a>
					</div>
					
					<div class="menu-item">
						<a href="{{route('Feedback')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-comments"></i></span>
							<span class="menu-text">Feedback</span>
						</a>
					</div>
					
					<div class="menu-divider"></div>
					<div class="menu-header">Payment | Settings</div>
						<div class="menu-item">
						<a href="{{route('paymentvia')}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-credit-card"></i></span>
							<span class="menu-text">Payment</span>
						</a>
					</div>
                  
					<div class="menu-item">
						<a href="{{route('edit-admin',[$admin->id])}}" class="menu-link">
							<span class="menu-icon"><i class="fa fa-cog"></i></span>
							<span class="menu-text">Global Settings</span>
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
 
 
 
 
 

