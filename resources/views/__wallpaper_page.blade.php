@extends('__master')
@section('__Content')
{{-- $__Music_Wallpaper --}}
<div class="absolute top-0 right-0 w-[80%] min-h-screen flex flex-col">
    <div class="hidden category_modal absolute top-0 w-full min-h-screen z-40 bg-black opacity-[.5] justify-center items-center">
    </div>
    <div class="hidden category_modal absolute top-0 w-full min-h-screen z-50 justify-center items-center">
        <form class="w-[30%] px-2 h-[500px] bg-slate-100 rounded-md" method="post" action="{{ route('__upload_wallpaper') }}" enctype="multipart/form-data">
            @csrf
            <div class="w-full h-[30px] flex justify-end p-5">
                <svg id="MODAL_CLOSE_BTN" class="cursor-pointer" xmlns="http://www.w3.org/2000/svg" width="40px" height="40px" viewBox="0 0 24 24" fill="none">
                    <circle cx="12" cy="12" r="10" stroke="#1C274C" stroke-width="1.5" />
                    <path d="M14.5 9.50002L9.5 14.5M9.49998 9.5L14.5 14.5" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round" />
                </svg>
            </div>
            <div class="w-full h-[342px] mt-10 flex items-center">
                <label class="w-full bg-[#075A8F] text-white flex justify-center items-center h-full cursor-pointer rounded-md" for="file">
                    <svg xmlns="http://www.w3.org/2000/svg" width="120px" height="120px" viewBox="0 0 1024 1024">
                        <path fill="#ffffff" d="M544 864V672h128L512 480 352 672h128v192H320v-1.6c-5.376.32-10.496 1.6-16 1.6A240 240 0 0 1 64 624c0-123.136 93.12-223.488 212.608-237.248A239.808 239.808 0 0 1 512 192a239.872 239.872 0 0 1 235.456 194.752c119.488 13.76 212.48 114.112 212.48 237.248a240 240 0 0 1-240 240c-5.376 0-10.56-1.28-16-1.6v1.6H544z" />
                    </svg>
                </label>
                <input id="file" name="file" type="file" class="hidden" />
            </div>
            <button type="submit" class="w-full h-16 mt-2 rounded-md bg-slate-900 flex justify-center items-center text-white">
                . . . Submit . . .
            </button>
        </form>
    </div>
    <div class="w-full">
        <div class="w-full h-[50px] bg-[#1A5276] flex justify-between items-center">
            <div class="w-[20%] text-white text-base px-10">Add Wallpaper</div>
            <div class="w-[80%] h-full flex items-center justify-center">
                <div id="aletSection" style="{{ session('style') }}">
                    {{ session('message') }}
                </div>
            </div>
        </div>
    </div>
    <div class="w-full py-5 flex-1 flex flex-col justify-center items-center">
        <div class="w-[97%] bg-white flex-1 flex flex-col rounded-md">
            <!-- component -->
            <div class="text-gray-900 bg-gray-200 flex-1 rounded-md">
                <div class="w-full h-[100px] flex justify-end">
                    <button id="MODAL_OPEN_BTN" class="bg-[#075A8F] text-white h-[50%] px-5 m-5 rounded-md">
                        Add Wallpaper
                    </button>
                </div>
                <div class="px-3 py-4 flex justify-center overflow-y-scroll max-h-[71vh]">
                    <table class="w-full text-md bg-white shadow-md rounded mb-4">
                        <tbody>
                            <tr class="border-b">
                                <th class="text-left p-3 px-5">id</th>
                                <th class="text-left p-3 px-5">Name</th>
                                {{--  <th class="text-left p-3 px-5">Image</th>  --}}
                                <th></th>
                            </tr>
                            @isset($__Wallpaper)
                            @if (count($__Wallpaper) == 0)
                            @else
                            @php
                            $counter = 1;
                            @endphp
                            @foreach ($__Wallpaper as $item)
                            <tr class="border-b hover:bg-orange-100 bg-gray-100">
                                <td class="p-3 px-5">{{ $counter }}</td>
                                <td class="p-3 px-5">{{ $item->wallpaper }}</td>
                                <td class="p-3 px-5"><img style="width: 40px;height:40px;border-radius:40px;" src="{{ session('auth')['HTTP_HOST'].'public/uploads/'.$item->wallpaper }}" />
                                <td class="">
                                    <a href="{{ route('__Wallpaper_Status', ['id' => $item->id]) }}"><button type="button" class="text-sm bg-[#1F618D]  text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">{{ $item->status==true ? 'Selected':'Select' }}</button></a>
                                    <a href="{{ route('__Wallpaper_destroy', ['id' => $item->id]) }}"><button type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">Delete</button></a>
                                </td>
                            </tr>
                            @php
                            $counter += 1;
                            @endphp
                            @endforeach
                            @endif
                            @endisset
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@include('__menu')
@endsection
