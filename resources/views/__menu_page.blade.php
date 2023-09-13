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
        <div class="relative w-full min-h-screen max-w-[600px] bg-white opacity-[0.9]">
            <div id="__pre__loader__" class="absolute flex top-0 z-50 w-full min-h-screen bg-white justify-center items-center">
                <div role="status">
                    <svg aria-hidden="true" class="w-40 h-40 mr-2 text-gray-200 animate-spin dark:text-gray-600 fill-blue-600" viewBox="0 0 100 101" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z" fill="currentColor" />
                        <path d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z" fill="currentFill" />
                    </svg>
                    <div class="text-2xl mt-10 translate-x-3">Please , Wait . . .</div>
                </div>
            </div>
            <div class="w-full">
                <div class="w-full flex">
                    <div class="w-[35%]">
                        <div class="px-2 mt-8 mx-2 rounded-lg bg-gray-700 py-3">
                            <select name="lang" id="languages" class="h-full focus:outline-none text-gray-900 text-sm rounded-lg block w-full  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                                <option value="TR" {{ $lang=="TR"?'selected':null }}>Türkçe</option>
                                <option value="EN" {{ $lang=="EN"?'selected':null }}>English</option>
                                <option value="AR" {{ $lang=="AR"?'selected':null }}>Arabic</option>
                            </select>
                        </div>
                    </div>
                    <div class="w-[60%] p-1 flex justify-center">
                        <img class="w-[40%] mt-4" src="https://api.hitrooms.com/public/images/logo.png" />
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
                <div class="w-full mt-5 p-2">
                    <div id="__categorization__title__" class="border-t-2 border-b-2 border-[rgba(215,4,120,0.3)] py-3 mb-2 flex items-center">

                    </div>
                    <div id="__List__Of__Products__" class="w-full h-[45vh] overflow-y-scroll"></div>
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
            const __Query__String__ = () => {
                // Define default values for query parameters
                var defaults = {
                    title: false
                    , lang: false
                    , id: false
                    // Add default values for other parameters as needed
                };
                // Get the entire query string
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

                    // Merge the parsed params with default values
                    for (var key in defaults) {
                        if (defaults.hasOwnProperty(key) && !params.hasOwnProperty(key)) {
                            params[key] = defaults[key];
                        }
                    }
                    if (params.id !== false && params.id !== '' && params.title !== false && params.title !== '' && params.lang !== false && params.lang !== '') {
                        return `/panel/get/category/${params.title}/${params.lang}/${params.id}`
                    } else {
                        if (params.lang !== false && params.lang !== '' && params.lang !== 'TR') {
                            return '/panel/get/categories/' + params.lang.toLowerCase();
                        } else {

                            return '/panel/get/categories/';
                        }

                    }
                    // Get the count of query parameters
                    var queryParameterCount = Object.keys(params).length;

                    // return '/panel/get/categories/';
                } else {
                    // Handle the case where no query parameters are present
                    return '/panel/get/categories/';
                }

            };

            $.ajax({
                url: __Query__String__()
                , type: "GET"
                , success: function(result) {
                    let __Temp__ = '';
                    let __Temp__2__ = '';
                    let __Temp__4__ = '';
                    let __Lang__Detector__ = 'TR';
                    let __Price__Translation__ = 'Kişi Başı'
                    let __Language__Secion__ = `
                        <option value="TR" selected>Türkçe</option>
                        <option value="EN" >English</option>
                        <option value="AR" >Arabic</option>
                    `
                    let __url__ = (new URL(location.href)).searchParams;
                    if (__url__.get('lang') !== null && __url__.get('lang') !== '') {
                        __Lang__Detector__ = __url__.get('lang').toLowerCase()
                        __Language__Secion__ = `
                        <option value="TR" ${__url__.get('lang')==='TR'?'selected':null}>Türkçe</option>
                        <option value="EN" ${__url__.get('lang')==='EN'?'selected':null}>English</option>
                        <option value="AR" ${__url__.get('lang')==='AR'?'selected':null}>Arabic</option>
                    `
                    }
                    if (__Lang__Detector__ == 'en') {
                        __Price__Translation__ = 'per person'
                    }
                    if (__Lang__Detector__ == 'ar') {
                        __Price__Translation__ = 'للشخص الواحد'
                    }
                    const __categorization__data__function__ = (data) => {
                        $('#__pre__loader__').css({
                            'display': 'flex'
                        })
                        window.location.replace(`/panel?title=${data.title}&lang=${data.lang}&id=${data.id}`)
                        $('#__pre__loader__').css({
                            'display': 'none'
                        })
                        // Add your logic here to handle the click event
                    };

                    result.__categories.map((item) => {
                        __Temp__ += `
                            <li style="width:100%;height:100%;">
                                <button style="width:80px;height:65px;padding:0px 5px;">
                                    <img class="${result.__selected__category__.id == item.id ? 'box-shodow' : ''}" style="width:100%;height:100%; border-radius:12px;margin-right:16px;" src="{{ $__Link }}${item.image}"
                                </button>
                            </li>
                        `;
                    });
                    result.__selected__list__.map((item) => {
                        __Temp__2__ +=
                            `
                        <div style="direction:${__Lang__Detector__=='ar'?'rtl':'ltr'};width:98%;display:flex;border:1px solid transparent;border-radius:3px;margin:10px 5px;" class="box-shodow">
                            <div style="width:30%;padding:2px">
                                <img style="border-radius:10px;width:100%;height:100px;" src="{{ $__Link }}${item.image}"/>
                            </div>
                            <div style="width:70%;padding:5px 10px;position:relative;">
                                <div title="${item.contentHeader}" style="color:#000;font-size:18px;font-weight:500;">${item.contentHeader.slice(0,30)}</div>
                                <div title="${item.contentBody}" style="color:#000;">${item.contentBody.slice(0,30)}</div>
                                <div style="width:100%;position:absolute;bottom:0;display:flex;padding:5px 0px;">
                                    <div style="font-weight:400;padding:0px 5px;margin-right:20px;">
                                       ${__Price__Translation__} 
                                    </div>
                                    <div style="font-weight:400;padding:0px 5px;">${item.price}₺</div>
                                </div>
                            </div>
                        </div>
                        `
                    })
                    $('#languages').html(__Language__Secion__)
                    $('#__List__Of__Categories__').html(__Temp__);
                    $('#__List__Of__Products__').html(__Temp__2__);
                    $('#__categorization__title__').html(`<div style="direction:${__Lang__Detector__=='ar'?'rtl':'ltr'};color:rgba(215,4,120,0.9);font-size:20px;font-weight:500;letter-spacing: 1px;width:100%;padding:0px 20px;">${result.__selected__list__[0].title}</div>`);
                    // Add a click event handler for the <li> elements __categorization__title__
                    $('#__List__Of__Categories__ li').click(function() {
                        // Call the function with the item data

                        __categorization__data__function__(result.__categories[$(this).index()]);
                    });
                }
            });
            $('#languages').on('change', function() {
                $('#__pre__loader__').css({
                    'display': 'flex'
                })
                let __url__ = (new URL(location.href)).searchParams;
                if (
                    __url__.get('title') !== null &&
                    __url__.get('lang') !== null &&
                    __url__.get('id') !== null &&
                    __url__.get('title') !== '' &&
                    __url__.get('lang') !== '' &&
                    __url__.get('id') !== ''
                ) {
                    window.location.href = '/panel/?lang=' + $('#languages').val()
                } else {
                    if (__url__.get('lang') === null || __url__.get('lang') === '') {
                        window.location.href = '/panel/?lang=' + $('#languages').val()
                    } else {
                        window.location.href = '/panel/?lang=' + $('#languages').val()
                    }
                }
                $('#__pre__loader__').css({
                    'display': 'none'
                })
            })
            setTimeout(() => {
                $('#__pre__loader__').css({
                    'display': 'none'
                })
            }, 2000)
        });

    </script>
</body>
</html>
