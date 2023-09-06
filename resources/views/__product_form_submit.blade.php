<div class="category_modal absolute top-0 w-full min-h-screen z-50 hidden justify-center items-center">
    <form class="w-[70%] flex justify-between p-3 bg-slate-100 rounded-md" method="post" action="{{ route('__upload_product') }}" enctype="multipart/form-data">
        @csrf
        <div class="w-full grid gap-6 mb-6 md:grid-cols-2">
            <div></div>
            <div class="w-full flex justify-end">
                <div id="MODAL_CLOSE_BTN" class="w-full flex justify-end my-1 cursor-pointer">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="30px" width="30px" version="1.1" id="Capa_1" viewBox="0 0 26 26" xml:space="preserve">
                        <g>
                            <path style="fill:#A93226;" d="M21.125,0H4.875C2.182,0,0,2.182,0,4.875v16.25C0,23.818,2.182,26,4.875,26h16.25   C23.818,26,26,23.818,26,21.125V4.875C26,2.182,23.818,0,21.125,0z M18.78,17.394l-1.388,1.387c-0.254,0.255-0.67,0.255-0.924,0   L13,15.313L9.533,18.78c-0.255,0.255-0.67,0.255-0.925-0.002L7.22,17.394c-0.253-0.256-0.253-0.669,0-0.926l3.468-3.467   L7.221,9.534c-0.254-0.256-0.254-0.672,0-0.925l1.388-1.388c0.255-0.257,0.671-0.257,0.925,0L13,10.689l3.468-3.468   c0.255-0.257,0.671-0.257,0.924,0l1.388,1.386c0.254,0.255,0.254,0.671,0.001,0.927l-3.468,3.467l3.468,3.467   C19.033,16.725,19.033,17.138,18.78,17.394z" />
                        </g>
                    </svg>
                </div>
            </div>
            <div>
                <label for="language" class="block mb-2 text-sm font-medium text-[#000]">Bir dil seç</label>
                <select name="lang" id="language" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[10px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                    <option selected>Bir dil seç</option>
                    <option value="TR">TR</option>
                    <option value="EN">EN</option>
                    <option value="AR">AR</option>
                </select>
            </div>
            <div>
                <label for="title" class="block mb-2 text-sm font-medium text-[#000]">Başlık</label>
                <input type="text" name="title" id="title" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[11px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div>
                <label for="contentHeader" class="block mb-2 text-sm font-medium text-[#000]">İçerik Başlığı</label>
                <input type="text" name="contentHeader" id="contentHeader" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[11px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div>
                <label for="contentBody" class="block mb-2 text-sm font-medium text-[#000]">İçerik Gövdesi</label>
                <textarea name="contentBody" type="text" id="contentBody" class=" bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[6px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>

                </textarea>
            </div>
            <div>
                <label for="website" class="block mb-2 text-sm font-medium text-[#000]">Fiyat</label>
                <input name="price" type="number" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[11px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div>
                <label class="block mb-2 text-sm font-medium text-[#000]" for="file">Fotoğraf yükleniyor</label>
                <input class="block py-[8px] w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" id="file" name="file" type="file">
            </div>
            <div>
                <label for="text" class="block mb-2 text-sm font-medium text-[#000]">Tip</label>
                <select name="type" id="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[10px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                    
                    <option value="1" selected>Olanak vermek</option>
                    <option value="0">Devre dışı bırakmak</option>
                </select>
            </div>
            <div>
                <label for="Category" class="block mb-2 text-sm font-medium text-[#000]">Bir kategori seçin</label>
                <select name="Category" id="Category" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-[10px] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                    <option selected>Bir kategori seçin</option>
                    @foreach ($__categories as $category)
                    <option value="{{ $category->id }}">{{ $category->title }}</option>
                    @endforeach
                </select>
            </div>
            <div></div>
            <div>
                <button type="submit" class="text-white bg-[#3b5998] hover:bg-[#3b5998]/90 focus:ring-4 focus:outline-none focus:ring-[#3b5998]/50 font-medium rounded-lg text-sm px-5 py-5 text-center flex justify-center items-center dark:focus:ring-[#3b5998]/55 w-full">
                    . . . Gönder . . .
                </button>
            </div>
        </div>
    </form>
</div>
