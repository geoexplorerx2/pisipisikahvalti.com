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
        })
        const __get__id = (data) => {
            console.log(data)
            $.ajax({
                type:'GET',
                url: "{{ env('HOST_NAME') }}" + "list/ajax/" + data
                , success: function(result) {
                    console.log(result)
                }
            });
        }

    </script>
</body>
</html>
