{{--  @csrf
<div class="w-full h-[30px] flex justify-end p-5">
    <svg id="MODAL_CLOSE_BTN" class="cursor-pointer" xmlns="http://www.w3.org/2000/svg" width="40px" height="40px" viewBox="0 0 24 24" fill="none">
        <circle cx="12" cy="12" r="10" stroke="#1C274C" stroke-width="1.5" />
        <path d="M14.5 9.50002L9.5 14.5M9.49998 9.5L14.5 14.5" stroke="#1C274C" stroke-width="1.5" stroke-linecap="round" />
    </svg>
</div>
<div class="w-full h-[60px] border-t-[1px] border-[#555] px-5 pt-3 mt-10 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">Lang</div>
    <div class="w-[80%] h-full flex justify-center items-center rounded-md border-[1px] border-[#555] bg-white px-6">
        <select name="lang" class="w-full h-full bg-transparent focus:outline-none">
            <option @if (!(session('data')==null)) {!! json_decode(json_encode(session('data')), true)['lang']=='TR' ? 'selected' : null !!} @endif value="TR">TR
            </option>
            <option @if (!(session('data')==null)) {!! json_decode(json_encode(session('data')), true)['lang']=='EN' ? 'selected' : null !!} @endif value="EN">EN
            </option>
            <option @if (!(session('data')==null)) {!! json_decode(json_encode(session('data')), true)['lang']=='AR' ? 'selected' : null !!} @endif value="AR">AR
            </option>
        </select>
    </div>
</div>
<div class="w-full h-[60px] px-5 pt-3 mt-4 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">Title</div>
    <div class="w-[80%] h-full"><input name="title" type="text" class="w-full h-full border-[1px] rounded-md border-[#555] focus:outline-none px-5" @if (!(session('data')==null)) {{ 'value=' . json_decode(json_encode(session('data')), true)['title'] }} @endif />
    </div>
</div>
<div class="w-full h-[60px] px-5 pt-3 mt-4 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">contentHeader</div>
    <div class="w-[80%] h-full"><input name="contentHeader" type="text" class="w-full h-full border-[1px] rounded-md border-[#555] focus:outline-none px-5" @if (!(session('data')==null)) {{ 'value=' . json_decode(json_encode(session('data')), true)['contentHeader'] }} @endif />
    </div>
</div>
<div class="w-full h-[60px] px-5 pt-3 mt-4 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">contentBody</div>
    <div class="w-[80%] h-full"><input name="contentBody" type="text" class="w-full h-full border-[1px] rounded-md border-[#555] focus:outline-none px-5" @if (!(session('data')==null)) {{ 'value=' . json_decode(json_encode(session('data')), true)['contentBody'] }} @endif />
    </div>
</div>
<div class="w-full h-[60px] px-5 pt-3 mt-4 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">price</div>
    <div class="w-[80%] h-full"><input name="price" type="text" class="w-full h-full border-[1px] rounded-md border-[#555] focus:outline-none px-5" @if (!(session('data')==null)) {{ 'value=' . json_decode(json_encode(session('data')), true)['price'] }} @endif />
    </div>
</div>
<div class="w-full h-[100px] mt-4 flex items-center">
    <label class="w-[76%] bg-[#075A8F] text-white flex justify-center items-center h-full cursor-pointer translate-x-[193px] rounded-md" for="file">
        <svg xmlns="http://www.w3.org/2000/svg" width="120px" height="120px" viewBox="0 0 1024 1024">
            <path fill="#ffffff" d="M544 864V672h128L512 480 352 672h128v192H320v-1.6c-5.376.32-10.496 1.6-16 1.6A240 240 0 0 1 64 624c0-123.136 93.12-223.488 212.608-237.248A239.808 239.808 0 0 1 512 192a239.872 239.872 0 0 1 235.456 194.752c119.488 13.76 212.48 114.112 212.48 237.248a240 240 0 0 1-240 240c-5.376 0-10.56-1.28-16-1.6v1.6H544z" />
        </svg>
    </label>
    <input id="file" name="file" type="file" class="hidden" />
</div>
<div class="w-full h-[60px] px-5 pt-1 mt-2 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">type</div>
    <div class="w-[80%] h-full"><input name="type" type="text" class="w-full h-full border-[1px] rounded-md border-[#555] focus:outline-none px-5" @if (!(session('data')==null)) {{ 'value=' . json_decode(json_encode(session('data')), true)['type'] }} @endif />
    </div>
</div>
<div class="w-full h-[60px] px-5 pt-1 mt-2 flex justify-center items-center">
    <div class="w-[20%] h-full flex items-center justify-center text-lg font-medium">Category</div>
    <div class="w-[80%] h-full border-[1px] border-[#555] rounded-md px-5 bg-white">
        <select name="Category" class="w-full h-full focus:outline-none">
            @foreach ($__categories as $category)
            <option value="{{ $category->id }}">{{ $category->title }}</option>
            @endforeach
        </select>
    </div>
</div>
<button type="submit" class="translate-x-[193px] w-[76%] h-16 mt-2 rounded-md bg-slate-900 flex justify-center items-center text-white">
    @if (!(session('data') == null))
    {{ '. . . Update . . .' }}@else{{ '. . . Submit . . .' }}
    @endif
</button>  --}}
