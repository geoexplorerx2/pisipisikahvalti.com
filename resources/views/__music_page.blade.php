@extends('__master')
@section('__Content')
{{-- $__Music_Wallpaper --}}
<div class="absolute top-0 right-0 w-[80%] min-h-screen flex flex-col">
    <div class="hidden category_modal absolute top-0 w-full min-h-screen z-40 bg-black opacity-[.5] justify-center items-center">
    </div>
    <div class="hidden category_modal absolute top-0 w-full min-h-screen z-50 justify-center items-center">
        <form class="w-[30%] px-2 h-[500px] bg-slate-100 rounded-md" method="post" action="{{ route('__upload_music') }}" enctype="multipart/form-data">
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
                . . . gönder . . .
            </button>
        </form>
    </div>
    <div class="__delete__confirmation__ absolute top-0 w-full min-h-screen z-40 hidden justify-center items-center bg-[rgba(0,0,0,0.7)]">

    </div>
    <div class="w-full">
        <div class="w-full h-[50px] bg-[#1A5276] flex justify-between items-center">
            <div class="w-[20%] text-white text-base px-10">Müzik Ekle</div>
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
                        Müzik Ekle
                    </button>
                </div>
                <div class="px-3 py-4 flex justify-center overflow-y-scroll max-h-[71vh]">
                    <table class="w-full text-md bg-white shadow-md rounded mb-4">
                        <tbody>
                            <tr class="border-b">
                                <th class="text-left p-3 px-5">id</th>
                                <th class="text-left p-3 px-5">Name</th>
                                <th></th>
                            </tr>
                            @isset($__Music)
                            @if (count($__Music) == 0)
                            @else
                            @php
                            $counter = 1;
                            @endphp
                            @foreach ($__Music as $item)
                            <tr class="border-b hover:bg-orange-100 bg-gray-100">
                                <td class="p-3 px-5">{{ $counter }}</td>
                                <td class="p-3 px-5">{{ $item->music }}</td>
                                <td class="p-3 px-5">
                                    <a href="{{ session('auth')['HTTP_HOST'] . 'public/uploads/' . $item->music }}">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000" height="25px" width="25px" version="1.1" id="Layer_1" viewBox="0 0 64 64" enable-background="new 0 0 64 64" xml:space="preserve">
                                            <g id="Play">
                                                <path d="M46.0136986,31.1054993L25.1973,20.6973c-0.3096008-0.1532993-0.6777992-0.1387005-0.9727001,0.0438995   C23.9297009,20.9237995,23.75,21.2451,23.75,21.5918007v20.8163986c0,0.3467026,0.1797009,0.6679993,0.4745998,0.8506012   C24.3848,43.3583984,24.5674,43.4081993,24.75,43.4081993c0.1532993,0,0.3057003-0.035099,0.4473-0.1054001l20.8163986-10.4081993   c0.3388023-0.1699982,0.5527-0.5157013,0.5527-0.8945999C46.5663986,31.6210995,46.3525009,31.2754002,46.0136986,31.1054993z    M25.75,40.7901001v-17.580101L43.330101,32L25.75,40.7901001z" />
                                                <path d="M32,0C14.3268995,0,0,14.3268995,0,32s14.3268995,32,32,32s32-14.3269005,32-32S49.6730995,0,32,0z M32,62   C15.4579,62,2,48.542099,2,32C2,15.4580002,15.4579,2,32,2c16.5419998,0,30,13.4580002,30,30C62,48.542099,48.5419998,62,32,62z" />
                                            </g>
                                        </svg>
                                    </a>
                                </td>
                                <td class="">
                                    <a href="{{ route('__Music_Status', ['id' => $item->id]) }}"><button type="button" class="text-sm bg-[#1F618D]  text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">{{ $item->status==true ? 'Seçildi':'Seç' }}</button></a>
                                    <button onClick="__delete__music__function__({{ $item->id }})" type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">Sil</button>
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
