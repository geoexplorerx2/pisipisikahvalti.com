<div class="w-[20%] absolute top-0 left-0 min-h-screen z-30 bg-[#1A5276] border-r-[1px] border-[#fff]">
    <div class="w-full flex justify-center">
        <div class="w-[200px] h-[200px] flex justify-center items-center rounded-full bg-white my-5">
            <img class="w-[60%]" src="https://api.hitrooms.com/public/images/logo.png" />
        </div>
    </div>
    <div class="w-full">
        <ul class="w-full">
            <a href="{{ url('/categories/show') }}">
                <li style={{ Route::currentRouteName()=='__dashboard'?'background-color:#1687CF;color:#fff;':'background-color:#fff;color:#000;' }} class="w-full py-3 mt-1 flex px-10 items-center text-lg cursor-pointer hover:bg-[#1687CF] hover:text-white">Kategoriler</li>
            </a>
            <a href="{{ url('/lists/show') }}">
                <li style={{ Route::currentRouteName()=='__List_show'?'background-color:#1687CF;color:#fff;':'background-color:#fff;color:#000;' }} class="w-full py-3 bg-white mt-1 flex px-10 items-center text-lg cursor-pointer hover:bg-[#1687CF] hover:text-white">Ürünler</li>
            </a>
            <a href="{{ url('/music/show') }}">
                <li style={{ Route::currentRouteName()=='__music_index'?'background-color:#1687CF;color:#fff;':'background-color:#fff;color:#000;' }} class="w-full py-3 bg-white mt-1 flex px-10 items-center text-lg cursor-pointer hover:bg-[#1687CF] hover:text-white">Müzik Ekle</li>
            </a>
            <a href="{{ url('/wallpaper/show') }}">
                <li style={{ Route::currentRouteName()=='__Wallpaper_index'?'background-color:#1687CF;color:#fff;':'background-color:#fff;color:#000;' }} class="w-full py-3 bg-white mt-1 flex px-10 items-center text-lg cursor-pointer hover:bg-[#1687CF] hover:text-white">Görüntüler</li>
            </a>
        </ul>
    </div>
    <a href="{{ url('/logout') }}" class="absolute w-full bottom-0 h-[50px] text-xl border-t-[1px] border-white text-white bg-red-700 flex justify-center items-center">
        Çıkış
    </a>
</div>
