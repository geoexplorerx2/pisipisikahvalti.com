<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('style.css') }}" />
    <link rel="stylesheet" href="{{ asset('css/app.css') }}" />
    @vite('resources/css/app.css')
</head>
<body style="background-image:url({{ $__Link.$__Wallpaper[0]->wallpaper }});background-size:cover;" class="Kanit">
    <div class="relative w-full min-h-screen flex justify-center">
        <div class="w-full min-h-screen max-w-[600px] bg-white opacity-[0.9]">
            <div class="w-full">
                <div class="w-full flex">
                    <div class="w-[30%]">
                        <div class="px-2 mt-8 mx-2 rounded-lg bg-gray-700 py-3">
                            <select name="lang" id="languages" class="h-full focus:outline-none text-gray-900 text-sm rounded-lg block w-full  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                                <option value="TR" {{ $lang=="TR"?'selected':null }}>Türkçe</option>
                                <option value="EN" {{ $lang=="EN"?'selected':null }}>English</option>
                                <option value="AR" {{ $lang=="AR"?'selected':null }}>Arabic</option>
                            </select>
                        </div>
                    </div>
                    <div class="w-[60%] p-1 flex justify-center">
                        <img class="w-[60%] mt-4" src="https://api.hitrooms.com/public/images/logo.png" />
                    </div>
                    <div>
                        <div class="flex mt-8 mx-5">
                            <div class="mx-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40px" height="40px" viewBox="0 -0.5 25 25" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.5 11.1455C5.49956 8.21437 7.56975 5.69108 10.4445 5.11883C13.3193 4.54659 16.198 6.08477 17.32 8.79267C18.4421 11.5006 17.495 14.624 15.058 16.2528C12.621 17.8815 9.37287 17.562 7.3 15.4895C6.14763 14.3376 5.50014 12.775 5.5 11.1455Z" stroke="#1C2833" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M15.989 15.4905L19.5 19.0015" stroke="#1C2833" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                            </div>
                            <div class="w-[10%]">
                                <audio src="{{ $__Link.$__Music[0]->music }}"></audio>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w-full mt-5">
                    <ul id="__List__Of__Categories__" class="w-[100%] py-1 flex items-center px-1 overflow-x-scroll">

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ asset('jquery.js') }}"></script>
    <script>
        window.addEventListener("DOMContentLoaded", event => {
            const audio = document.querySelector("audio");
            audio.play();
        });

    </script>
    <script>
        $(document).ready(function() {
            var queryString = window.location.search;

            // Check if there are any query parameters
            if (queryString) {
                // Remove the leading "?" character
                queryString = queryString.substring(1);

                // Split the query string into an array of key-value pairs
                var queryParams = queryString.split('&');

                // Create an object to store the key-value pairs
                var params = {};

                // Iterate through the key-value pairs and populate the params object
                queryParams.forEach(function(param) {
                    var keyValue = param.split('=');
                    var key = decodeURIComponent(keyValue[0]);
                    var value = decodeURIComponent(keyValue[1]);
                    params[key] = value;
                });
            }

            $.ajax({
                url: (params == undefined) ? `/panel/get/categories/` : `/panel/get/category/${params.title}/${params.lang}/${params.id}`
                , type: "GET"
                , success: function(result) {
                    let __Temp__ = '';

                    const __categorization__data__function__ = (data) => {
                        window.location.replace(`/panel?title=${data.title}&lang=${data.lang}&id=${data.id}`)
                        // Add your logic here to handle the click event
                    };

                    result.__categories.map((item) => {
                        __Temp__ += `
                            <li style="width:100%;height:100%;">
                                <button style="width:75px;height:65px;padding:0px 5px;">
                                    <img style="width:100%;height:100%;border:${result.__selected__category__.id == item.id ? '3px solid red;' : '1px solid transparent;'} border-radius:12px;margin-right:16px;" src="{{ $__Link }}${item.image}"
                                </button>
                            </li>
                        `;
                    });

                    $('#__List__Of__Categories__').html(__Temp__);

                    // Add a click event handler for the <li> elements
                    $('#__List__Of__Categories__ li').click(function() {
                        // Call the function with the item data
                        __categorization__data__function__(result.__categories[$(this).index()]);
                    });
                }
            });
        });

    </script>
</body>
</html>
