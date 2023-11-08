@extends('__master') 
@section('__Content')
<div class="w-full min-h-screen absolute top-0 right-0 z-0 flex justify-center items-center">
	<div class="relative w-[50%] h-[500px] bg-white rounded-md flex">
		<div class="w-[40%] h-full flex justify-center items-center">
			<img class="w-[50%]" src="https://pisipisikahvalti.com/assets/images/logo.png" />
		</div>
		<div class="w-[60%] h-full relative">
			<form action="{{ url('/auth') }}" method="post" enctype="multipart/form-data">
				@csrf
				<div class="w-full h-[50px] flex items-center mt-32 px-7">
					<div class="w-[30%] text-lg font-medium">E-posta</div>
					<div class="w-[70%] h-full px-3">
						<input type="email" name="email" class="w-full h-full border-[1px] border-[#000] rounded-md focus:outline-none px-5" />
					</div>
				</div>
				<div class="w-full h-[50px] flex items-center mt-5 px-7">
					<div class="w-[30%] text-lg font-medium">Şifre</div>
					<div class="w-[70%] h-full px-3">
						<input type="password" name="password" class="w-full h-full border-[1px] border-[#000] rounded-md focus:outline-none px-5" />
					</div>
				</div>
				<div class="w-full h-[50px] flex items-center mt-5 px-7">
					<div class="w-[30%] px-3"></div>
					<div class="w-[70%] h-full px-3">
						<button type="submit" class="w-full h-full bg-[#0f2c3d] text-white text-xl flex justify-center items-center rounded-md">
							giriş
						</button>
					</div>
				</div>
			</form>
		</div>
		@if(session('msg'))
		<div class="absolute w-full h-[50px] bottom-0 bg-[#C0392B] flex justify-center items-center text-white">
			e-posta ve şifre birbiriyle eşleşmiyor
		</div>
		@endif
		<div class="absolute w-full h-[50px] top-0 bg-[#154360] flex justify-center items-center text-white text-lg tracking-wide">
			PisiPisi Menü Portalına Hoş Geldiniz
		</div>
	</div>
</div>
@endsection
