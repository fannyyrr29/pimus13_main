@extends('layout.mainweb')

@section('title')
    PIMUS 12 - Sign Up
@endsection

@section('content')
    <section id="login" class="mb-5" style="margin-top: 150px">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-3 col-md-12 col-12"></div>
                <div class="col-lg-6 col-md-12 col-12">
                    <img src="{{ url('/assets/images/logo/logo-pimus-text.png') }}" alt="PIMUS XI" class="mb-4">
                    <div class="flash-message">
                        @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                            @if(Session::has('alert-' . $msg))
                                <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }}</p>
                            @endif
                        @endforeach
                    </div>
                    <form method="POST" action="{{ route('register') }}" class="form-login-register">
                        @csrf
                        <div class="transBox">
                            <table>
                                <tr>
                                    <div class="transBox2">
                                        <td>
                                            <p class="colorText">NAMA LENGKAP: </p>
                                        </td>
                                        <td>
                                            <input type="text" name="nama" placeholder="" class="@error('nama') is-invalid @enderror"
                                        required autofocus autocomplete="name">
                                        </td>
                                    @error('nama')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                    </div>
                                </tr>
                                <tr>
                                    <div class="transBox2">
                                        <td>
                                            <p class="colorText">NRP: </p>
                                        </td>
                                        <td>
                                            <input type="text" id="nrp" name="nrp" placeholder="" class="@error('nrp') is-invalid @enderror" maxlength="9" required>
                                        </td>
                                        @error('nrp')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                        <!-- <input type="email" id="email" name="email" placeholder="Email Gooaya" class="@error('email') is-invalid @enderror"
                                            required readonly>
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror -->
                                    </div>
                                </tr>
                                <tr>
                                    <div class="transBox2">
                                        <td>
                                            <p class="colorText">PASSWORD: </p>
                                        </td>
                                        <td>
                                            <input type="password" name="password" placeholder=""
                                            class="@error('password') is-invalid @enderror" required autocomplete="new-password">
                                        </td>
                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                    </div>
                                </tr>
                                <tr>
                                    <div class="transBox2">
                                        <td>
                                            <p class="colorText">RETYPE PASSWORD: </p>
                                        </td>
                                        <td>
                                            <input type="password" name="password_confirmation" placeholder=""
                                            class="@error('password_confirmation') is-invalid @enderror" autocomplete="new-password">
                                            @error('password_confirmation')
                                                <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                                </span>
                                            @enderror
                                        </td>
                                    
                                    </div>
                                </tr>
                            </table>
                        </div>
                        <button class="btnLogin">Sign Up</button>
                        <p class="register">Already have an account? <a href="{{ url('/login') }}"> Login</a></p>
                    </form>
                </div>
                <div class="col-lg-3 col-md-12 col-12"></div>
            </div>
        </div>
    </section>
@endsection