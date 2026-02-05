<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;



class AdminController extends Controller
{
    public function AdminDashboard()
    {
        return view('admin.index');
    }

    public function AdminLogin()
    {
        return view('admin.adminLogin');
    }
    
    public function AdminChangePassword(Request $request){

        //Accessing User table ID field 
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.adminChangePassword', compact('profileData'));
    }
       


    public function AdminProfile()
    {
        //Accessing User table ID field 
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.admin_profile_view', compact('profileData'));
    }

    //Change password
    public function AdminPasswordStore(Request $request){
        //Validation
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|min:8|confirmed',
        ]);

        $id = Auth::user()->id;
        $user = User::find($id);
        
        //Verify the old password
        if(!Hash::check($request->old_password, $user->password)){
            $notification = array(
                'message' => 'Old Password is Incorrect',
                'alert-type' => 'error'
            );
            return redirect()->back()->with($notification);
        }

        //Update the new password
        $user->password = Hash::make($request->new_password);
        $user->save();
        
        $notification = array(
            'message' => 'Password Updated Successfully',
            'alert-type' => 'success'
        );
        
        return redirect()->back()->with($notification);
    }

    //update profile details
    public function AdminProfileStore(Request $request)
    {
        $id = Auth::user()->id;
        $data = User::find($id);
        $data->username = $request->username;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->address = $request->address;
        if ($request->file('photo')) {
            $file = $request->file('photo');
            @unlink(public_path('uploads/admin_images/' . $data->photo));
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('uploads/admin_images'), $filename);
            $data['photo'] = $filename;
        }

        //$data->password = $request->password;
        $data->save();
        $notification = array(
            'message' => 'Admin Profile Updated Successfully',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    /**
     * Destroy an authenticated session.
     */
    public function AdminLogout(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/admin/login');
    }
}
