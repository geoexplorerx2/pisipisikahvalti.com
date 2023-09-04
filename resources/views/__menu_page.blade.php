<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('style.css') }}" />
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body class="Kanit">
    <div class="relative w-full min-h-screen max-w-[540px]">
        <div class="relative z-0 w-full">
            <div class="w-full px-5 py-3">
                <audio class="w-full" src="{{ asset('public/uploads/'.$__Music[0]->music) }}" controls>
                    <p>If you are reading this, it is because your browser does not support the audio element.</p>
                </audio>
            </div>
        </div>
        <div class="relative z-0 w-full">

        </div>
    </div>
    <script src="{{ asset('jquery.js') }}"></script>
</body>
</html>
