@extends('__master')
@section('__Content')
<div class="absolute top-0 right-0 w-[80%] min-h-screen flex flex-col">
    {{-- Add  --}}
    <div class="category_modal absolute top-0 w-full min-h-screen z-40 bg-black opacity-[.5] hidden justify-center items-center"></div>
    <div class="category_modal w-full h-full">
        @include('__product_form_submit')
    </div>
    @if(session('__editing__activator__')!=null)
    <div class="Edit__page absolute top-0 w-full min-h-screen z-40 bg-black opacity-[.5] justify-center items-center"></div>
    <div class="Edit__page" style="width: 100%;min-height:100vh;position:absolute;top:0;left:0;display:flex;justify-content:center;align-items: center;">
        @include('__edit__modal')
    </div>
    @endif
    <div class="image__focus hidden absolute top-0 w-full min-h-screen z-50 justify-center items-center bg-[rgba(0,0,0,0.7)]">
        <div class="bg-white rounded-xl p-4">
            <div class="text-white">
                <svg id="__close__btn__food__image__" class="mb-5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000" height="30px" width="30px" version="1.1" id="Layer_1" viewBox="0 0 512 512" xml:space="preserve">
                    <g>
                        <g>
                            <polygon points="512,59.076 452.922,0 256,196.922 59.076,0 0,59.076 196.922,256 0,452.922 59.076,512 256,315.076 452.922,512     512,452.922 315.076,256   " />
                        </g>
                    </g>
                </svg>
                <div id="__image__render__section__" class="rounded-xl bg-white flex justify-center items-center"></div>
            </div>
        </div>
    </div>
    <div class="__delete__confirmation__ absolute top-0 w-full min-h-screen z-40 hidden justify-center items-center bg-[rgba(0,0,0,0.7)]">

    </div>
    {{-- List Of Categories  --}}
    <div class="w-full">
        <div class="w-full h-[50px] bg-[#1A5276] flex justify-between items-center">
            <div class="text-white text-base px-10">ürün ekle</div>
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
                        ürün ekle
                    </button>
                </div>
                <div class="px-3 py-4 flex justify-center overflow-y-scroll max-h-[71vh]">
                    <table class="w-full text-md bg-white shadow-md rounded mb-4">
                        <tbody>
                            <tr class="border-b">
                                <th class="text-left p-3 px-5">id</th>
                                <th class="text-left p-3 px-5">lang</th>
                                <th class="text-left p-3 px-5">title</th>
                                <th class="text-left p-3 px-5">contentHeader</th>
                                <th class="text-left p-3 px-5">contentBody</th>
                                <th class="text-left p-3 px-5">price</th>
                                <th class="text-left p-3 px-5">image</th>
                                <th class="text-left p-3 px-5">type</th>
                                <th class="text-left p-3 px-5">category</th>
                                <th></th>
                            </tr>
                            @isset($__Lists)
                            @if (count($__Lists) == 0)
                            @else
                            @php
                            $counter = 1;
                            @endphp
                            @foreach ($__Lists as $key=>$item)
                            <tr class="border-b hover:bg-orange-100 bg-gray-100">
                                <td class="p-3 px-5">{{ $counter }}</td>
                                <td class="p-3 px-5">{{ $item->lang }}</td>
                                <td class="p-3 px-5">{{ $item->title }}</td>
                                <td class="p-3 px-5" title="{{ $item->contentHeader }}">
                                    {{ substr($item->contentHeader, 0, 18) }}</td>
                                <td class="p-3 px-5" title="{{ $item->contentBody }}">
                                    {{ substr($item->contentBody, 1, 18) }} . . .</td>
                                <td class="p-3 px-5">{{ $item->price }}</td>
                                <td class="p-3 px-5">
                                    <img class="cursor-pointer" onClick="__get__id({{ $item->id }})" style="width: 40px;height:40px;border-radius:40px;" src="{{ session('auth')['HTTP_HOST'].'/uploads/'.$item->image }}" />
                                </td>
                                <td class="p-3 px-5">{{ $item->type }}</td>
                                <td class="p-3 px-5">
                                    @foreach($__categories as $__category)
                                    @if($item->category_id==$__category['id'])
                                    {{ $__category['title'] }}
                                    @endif
                                    @endforeach
                                </td>
                                <td class="w-full flex items-center px-3" style="transform: translateY(17px);">
                                    <a href="{{ route('__List_Edit', ['id' => $item->id]) }}" class="w-[50%] flex justify-center" href="#">
                                        <button type="button" class="mx-4 text-sm bg-[#0080ff] hover:bg-[#0080ff] text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">
                                            Düzenle
                                        </button>
                                    </a>
                                    <a class="w-[50%] flex justify-center"><button onClick="__delete__list__function__({{ $item->id }})" type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline">Sil</button></a>
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
