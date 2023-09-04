<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\ListsModel;
use Illuminate\Http\Request;
use App\Models\__Music_Model;
use App\Models\__Wallpaper_Model;
use App\Models\CategoriesModel;
use Illuminate\Support\Facades\Validator;

class __Home_Controller extends Controller
{

    public function __form_page()
    {
        return view('__form_page');
    }

    public function __user_authentication(Request $request)
    {
        if ((User::where('email', $request->email)->where('password', $request->password)->count()) > 0) {
            session()->put('auth', [
                'email' => $request->email,
                'password' => $request->password,
                'HTTP_HOST' => 'http://' . $_SERVER['HTTP_HOST'] . '/panel/'
            ]);
            return redirect()->route('__dashboard');
        }
        return back()->with('msg', 'Username and Passwords do not match');
    }

    public function __logout()
    {
        session()->flush();
        return redirect()->route('__page_form');
    }

    public function __categories_index()
    {
        $__Categories_data = CategoriesModel::all();
        return view('__dashboard', compact('__Categories_data'));
    }

    public function __upload(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'lang' => 'required',
            'title' => 'required',
            'file' => 'required'
        ]);

        if ($validator->fails()) {
            return back()->with([
                'message' => 'some data missed',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
            ]);
        }

        $file = $request->file('file');
        $fileName = time() . '_' . $file->getClientOriginalName();
        if ($file->move(public_path('uploads'), $fileName)) {
            if (CategoriesModel::create([
                'lang' => $request->lang,
                'title' => $request->title,
                'image' => $fileName
            ])) {
                return back()->with([
                    'message' => 'Category added Successfully',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
                ]);
            } else {
                return back()->with([
                    'message' => 'adding Category Failed',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
                ]);
            }
        }
    }

    public function __Category_destroy($id)
    {
        if (CategoriesModel::where('id', $id)->count() > 0) {
            CategoriesModel::find($id)->delete();
            return back()->with([
                'message' => 'Category deleted Successfully',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        return back()->with([
            'message' => 'deleting Category Failed',
            'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
        ]);
    }

    public function __List_show()
    {
        $__Lists = ListsModel::all();
        $__categories = CategoriesModel::all();
        return view('__list_page', compact('__Lists', '__categories'));
    }

    public function __upload_product(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'lang' => 'required',
            'title' => 'required',
            'contentHeader' => 'required',
            'contentBody' => 'required',
            'price' => 'required',
            'file' => 'required',
            'type' => 'required',
            'Category' => 'required'
        ]);

        if ($validator->fails()) {
            return back()->with([
                'message' => 'some data missed',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        $file = $request->file('file');
        $fileName = time() . '_' . $file->getClientOriginalName();
        if ($file->move(public_path('uploads'), $fileName)) {
            if (ListsModel::create([
                'lang' => $request->lang,
                'title' => $request->title,
                'contentHeader' => $request->contentHeader,
                'contentBody' => $request->contentBody,
                'price' => $request->price,
                'image' => $fileName,
                'type' => $request->type,
                'category_id' => $request->Category
            ])) {
                return back()->with([
                    'message' => 'List added Successfully',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
                ]);
            } else {
                return back()->with([
                    'message' => 'adding List Failed',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
                ]);
            }
        }
    }

    public function __List_Edit($id)
    {
        $__Record = ListsModel::find($id);
        return back()->with('__editing__activator__', $__Record);
    }

    public function __update_list(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'lang' => 'required',
            'title' => 'required',
            'contentHeader' => 'required',
            'contentBody' => 'required',
            'price' => 'required',
            'type' => 'required',
            'Category' => 'required'
        ]);

        if ($validator->fails()) {
            return back()->with([
                'message' => 'some data missed',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        if ($request->file('file') != null) {
            $file = $request->file('file');
            $fileName = time() . '_' . $file->getClientOriginalName();
            if ($file->move(public_path('uploads'), $fileName)) {
                $__upload__status = true;
            } else {
                $__upload__status = false;
            }
        } else {
            $__upload__status = true;
        }
        
        if ($__upload__status) {
            $update = ListsModel::find($request->id);
            $update->lang = $request->lang;
            $update->title = $request->title;
            $update->contentHeader = $request->contentHeader;
            $update->contentBody = $request->contentBody;
            $update->price = $request->price;
            if ($request->file('file') != null) {
                $update->image = $fileName;
            }
            $update->type = $request->type;
            $update->category_id = $request->Category;
            if ($update->save()) {
                return back()->with([
                    'message' => 'List Updated Successfully',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
                ]);
            } else {
                return back()->with([
                    'message' => 'updating List Failed',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
                ]);
            }
        }
    }

    public function __List_destroy($id)
    {
        if (ListsModel::where('id', $id)->count() > 0) {
            ListsModel::find($id)->delete();
            return back()->with([
                'message' => 'List deleted Successfully',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        return back()->with([
            'message' => 'deleting list Failed',
            'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
        ]);
    }
    public function __music_index()
    {
        $__Music = __Music_Model::all();
        return view('__music_page', compact('__Music'));
    }
    public function __upload_music(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:mp3',
        ]);

        if ($validator->fails()) {
            return back()->with([
                'message' => 'Upload MP3 file',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
            ]);
        }

        $file = $request->file('file');
        $fileName = time() . '_' . $file->getClientOriginalName();
        if ($file->move(public_path('uploads'), $fileName)) {
            if (__Music_Model::create([
                'music' => $fileName
            ])) {
                return back()->with([
                    'message' => 'Music added Successfully',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
                ]);
            } else {
                return back()->with([
                    'message' => 'adding Music Failed',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
                ]);
            }
        }
    }
    public function __Music_destroy($id)
    {
        if (__Music_Model::where('id', $id)->count() > 0) {
            __Music_Model::find($id)->delete();
            return back()->with([
                'message' => 'Music deleted Successfully',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        return back()->with([
            'message' => 'deleting Music Failed',
            'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
        ]);
    }
    public function __Music_Status($id)
    {
        $__Musics = __Music_Model::all();
        foreach ($__Musics as $__Music) {
            $__row = __Music_Model::find($__Music->id);
            if ($__row->id == $id) {
                $__row->status = 1;
                $__row->save();
            } else {
                $__row->status = 0;
                $__row->save();
            }
        }
        return back();
    }
    public function __Wallpaper_index()
    {
        $__Wallpaper = __Wallpaper_Model::all();
        return view('__wallpaper_page', compact('__Wallpaper'));
    }
    public function __upload_wallpaper(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:jpg,png,jpeg',
        ]);

        if ($validator->fails()) {
            return back()->with([
                'message' => 'Upload Image file',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
            ]);
        }

        $file = $request->file('file');
        $fileName = time() . '_' . $file->getClientOriginalName();
        if ($file->move(public_path('uploads'), $fileName)) {
            if (__Wallpaper_Model::create([
                'wallpaper' => $fileName
            ])) {
                return back()->with([
                    'message' => 'Wallpaper added Successfully',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
                ]);
            } else {
                return back()->with([
                    'message' => 'adding Wallpaper Failed',
                    'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
                ]);
            }
        }
    }
    public function __Wallpaper_destroy($id)
    {
        if (__Wallpaper_Model::where('id', $id)->count() > 0) {
            __Wallpaper_Model::find($id)->delete();
            return back()->with([
                'message' => 'Wallpaper deleted Successfully',
                'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #0E6655;display:flex;justify-content: center;align-items: center;'
            ]);
        }
        return back()->with([
            'message' => 'deleting Wallpaper Failed',
            'style' => 'width:90%;height:80%;font-size:20px;border-radius:10px;color:#fff;background: #C0392B;display:flex;justify-content: center;align-items: center;'
        ]);
    }
    public function __Wallpaper_Status($id)
    {
        $__Musics = __Wallpaper_Model::all();
        foreach ($__Musics as $__Music) {
            $__row = __Wallpaper_Model::find($__Music->id);
            if ($__row->id == $id) {
                $__row->status = 1;
                $__row->save();
            } else {
                $__row->status = 0;
                $__row->save();
            }
        }
        return back();
    }
    public function __menu()
    {
        $__categories = CategoriesModel::all();
        $__lists = ListsModel::all();
        $__Music = __Music_Model::where('status', 1)->get();
        $__Wallpaper = __Wallpaper_Model::where('status', 1)->get();
        return view('__menu_page', compact('__categories', '__lists', '__Music', '__Wallpaper'));
    }
    public function __api__List_Edit($id){
        return response()->json(['id'=>$__Record = ListsModel::find($id)->image]);
    }
}
