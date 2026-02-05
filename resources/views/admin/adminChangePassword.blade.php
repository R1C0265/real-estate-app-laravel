@extends('admin.adminDashboard')
@section('admin')




<div class="container-fluid px-2 px-md-4">
  <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
    <span class="mask  bg-gradient-dark  opacity-6"></span>
  </div>
  <div class="card card-body mx-2 mx-md-2 mt-n6">
    <div class="row gx-4 mb-2">
      
      <div class="col-auto">
        <div class="avatar avatar-xl position-relative">
          <img src="{{ !empty($profileData->photo) ? url('uploads/admin_images/'.$profileData->photo) : url('uploads/admin_images/no_image.png') }}" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
        </div>
      </div>
      <div class="col-auto my-auto">
        <div class="h-100">
          <h5 class="mb-1">
            {{$profileData->username}}
          </h5>
          <p class="mb-0 font-weight-normal text-sm">
            {{$profileData->role}}

          </p>
        </div>
      </div>

    </div>
    <div class="row">
      <div class="row">
        <div class="col-12 col-xl-4">
          <div class="card card-plain h-100">
            <div class="card-header pb-0 p-3">
              <div class="row">
                <div class="col-md-8 d-flex align-items-center">
                  <h6 class="mb-0">Profile Information</h6>
                </div>
                <div class="col-md-4 text-end">
                  <a href="javascript:;">
                    <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit Profile"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="card-body p-3">
              <ul class="list-group">
                <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Full Name:</strong> {{$profileData->name}} </li>
                <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mobile:</strong> &nbsp; {{$profileData->phone}}</li>
                <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Email:</strong> &nbsp; {{$profileData->email}}</li>
                <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Address:</strong> &nbsp; {{$profileData->address}}</li>

              </ul>
            </div>
          </div>
        </div>
        <div class="col-12 col-xl-8">
          <div class="card card-plain h-100">
            <div class="card-header pb-0 p-3">
              <h6 class="mb-0">Update Password</h6>
            </div>
            <div class="card-body p-3">
              <form method="POST" action="{{ route('admin.password.store') }}" class="forms-sample" enctype="multipart/form-data">
                @csrf

                <!-- Password and Confirm Password Row -->
                <div class="row">
                  <div>
                    <label for="old_password" class="form-label fw-bold">Old Password</label>
                    <input type="password" class="form-control  @error('old_password') is-invalid
                    @enderror border-2 border-dark" id="old_password" name="old_password" 
                    autocomplete="off" placeholder="Enter Current password" 
                    style="background-color: #f8f9fa;">
                    @error('old_password')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>  
                  <div>
                    <label for="new_password" class="form-label fw-bold">New Password</label>
                    <input type="password" class="form-control  @error('new_password') is-invalid
                    @enderror border-2 border-dark" id="new_password" name="new_password" placeholder="Enter new password" style="background-color: #f8f9fa;">
                 
                    @error('new_password')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>  
                    </br> 
                  <div>         
                    <label for="new_password_confirmation" class="form-label fw-bold">Confirm New Password</label>
                    <input type="password" class="form-control  @error('new_password_confirmation') is-invalid
                    @enderror border-2 border-dark" id="new_password_confirmation" name="new_password_confirmation" placeholder="Confirm password" style="background-color: #f8f9fa;">
                    @error('new_password')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                  </div>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary w-100 fw-bold">Update Profile</button>
              </form>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
@endsection