<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('style.css') }}" />
    @vite('resources/css/app.css')
</head>
<body class="Kanit">
    <div class="relative w-full min-h-screen bg-[#273746]">
        @yield('__Content')
    </div>
    <script src="{{ asset('jquery.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#MODAL_CLOSE_BTN').on('click', function() {
                $('.category_modal').css('display', 'none');
            })
            $('#MODAL_OPEN_BTN').click(function() {
                $('.category_modal').css('display', 'flex');
            })
            $('#aletSection').fadeOut(7000)
            $('#MODAL_CLOSE_BTN_Edit').on('click', function() {
                $('.Edit__page').css({
                    'display': 'none'
                })
            })
            $('#__close__btn__food__image__').on('click', function() {
                $('.image__focus').css({
                    'display': 'none'
                })
            })
            $('#MODAL_CLOSE_Edit__BTN').on('click', function() {
                $('.Edit__Modal__category__').css({
                    'display': 'none'
                })
            })
        })
        const __get__id = (data) => {
            console.log(data)
            $.ajax({
                type: 'GET'
                , url: "{{ env('HOST_NAME') }}" + "list/ajax/" + data
                , success: function(result) {
                    console.log(result.id)
                    $('.image__focus').css({
                        'display': 'flex'
                    })
                    $('#__image__render__section__').html(`<img src="{{ env('HOST_NAME') }}uploads/${result.id}"/>`)
                }
            });
        }
        const __get__id__category__ = (data) => {
            $.ajax({
                type: 'GET'
                , url: "{{ env('HOST_NAME') }}" + "category/ajax/" + data
                , success: function(result) {
                    console.log(result.id)
                    $('.image__focus').css({
                        'display': 'flex'
                    })
                    $('#__image__render__section__').html(`<img src="{{ env('HOST_NAME') }}uploads/${result.id}"/>`)
                }
            });
        }
        const __get__id__wallpaper__ = (data) => {
            $.ajax({
                type: 'GET'
                , url: "{{ env('HOST_NAME') }}" + "wallpaper/ajax/" + data
                , success: function(result) {
                    console.log(result.id)
                    $('.image__focus').css({
                        'display': 'flex'
                    })
                    $('#__image__render__section__').html(`<img style="width:800px;" src="{{ env('HOST_NAME') }}uploads/${result.id}"/>`)
                }
            });
        }
        const __delete__btn__category__ = (data) => {
            $.ajax({
                type: 'GET'
                , url: "{{ env('HOST_NAME') }}" + "wallpaper/ajax/" + data
                , success: function(result) {
                    console.log(result.id)
                    $('.image__focus').css({
                        'display': 'flex'
                    })
                    $('#__image__render__section__').html(`<img style="width:800px;" src="{{ env('HOST_NAME') }}uploads/${result.id}"/>`)
                }
            });
        }
        const __delete__category__function__ = (data) => {
            $('.__delete__confirmation__').html(
                `
                <div class="w-[30%] h-[150px] bg-white rounded-md">
                    <div class="text-xl p-5">Are Your Sure To Remove This Record ?</div>
                    <div class="flex px-5">
                        <a href="${"{{ env('HOST_NAME') }}"}categories/destroy/${data}"><button type="button" class="text-sm mr-5 bg-[#1B4F72] hover:bg-red-700 text-white py-2 px-10 rounded focus:outline-none focus:shadow-outline">OK</button></a>
                        <button id="__close__btn__confirmation__" type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-2 px-10 rounded focus:outline-none focus:shadow-outline">Close</button>
                    </div>
                </div>
                `
            )
            $('#__close__btn__confirmation__').on('click', function() {
                console.log('close')
                $('.__delete__confirmation__').css({
                    'display': 'none'
                })
            })
            $('.__delete__confirmation__').css({
                'display': 'flex'
            })
        }
        const __delete__list__function__ = (data) => {
            $('.__delete__confirmation__').html(
                `
                <div class="w-[30%] h-[150px] bg-white rounded-md">
                    <div class="text-xl p-5">Are Your Sure To Remove This Record ?</div>
                    <div class="flex px-5">
                        <a href="${"{{ env('HOST_NAME') }}"}lists/destroy/${data}"><button type="button" class="text-sm mr-5 bg-[#1B4F72] hover:bg-red-700 text-white py-2 px-10 rounded focus:outline-none focus:shadow-outline">OK</button></a>
                        <button id="__close__btn__confirmation__" type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-2 px-10 rounded focus:outline-none focus:shadow-outline">Close</button>
                    </div>
                </div>
                `
            )
            $('#__close__btn__confirmation__').on('click', function() {
                $('.__delete__confirmation__').css({
                    'display': 'none'
                })
            })
            $('.__delete__confirmation__').css({
                'display': 'flex'
            })
        }
    </script>
</body>
</html>
