@extends('layout.mainweb')

@section('title')
    PIMUS 13 - Login
@endsection

@section('content')
    <section id="login" class="mb-5" style="margin-top: 150px">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-4 col-md-12 col-12"></div>
                <div class="col-lg-4 col-md-12 col-12">
                    <img src="{{ url('/assets/images/logo/logo-pimus-text.png') }}" alt="PIMUS XI" class="mb-4">
                    <form method="POST" action="{{ route('login') }}" class="form-login-register">
                        @csrf
                        <div class="transBox">
                            <div class="transBox2">
                                <p class="colorText">USERNAME: </p>
                                <input id="email" type="text" class="@error('email') is-invalid @enderror" placeholder=""
                                    name="email" required autocomplete="text" maxlength=10 autofocus>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="transBox2">
                                <p class="colorText">PASSWORD: </p>
                                <input id="password" type="password" class="@error('password') is-invalid @enderror"
                                    placeholder="" name="password" required autocomplete="current-password">
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        @if (Route::has('password.request'))
                            <a class="forget" href="{{ route('password.request') }}">
                                {{ __('Forgot Your Password?') }}
                            </a>
                        @endif
                        <div class="clear"></div>
                        <button class="btnLogin">Login</button>
                        <p class="register">Don't have an account yet? <a href="{{ url('/register') }}"> Sign Up</a>
                        </p>
                    </form>
                </div>
                <div class="col-lg-4 col-md-12 col-12"></div>
            </div>
        </div>
    </section>
@endsection