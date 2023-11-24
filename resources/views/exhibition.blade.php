@extends('layout.mainweb')

@section('title')
PIMUS 13 - Exhibition
@endsection

@section('content')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<section id="exhibition" style="margin-top: 150px;">
    <div class="container">
        @if ($errors->any())
            <div class="alert alert-danger" role="alert">
                {{ $errors->first('errorMessage') }}
            </div>
        @endif


        <div class="row">
            <div class="col-12 exhibition-title">
                <h1>Exhibition</h1>
            </div>
        </div>

        <div class="row">
            @if ($posters->count() != 0)
                @php
                    // For submission counter
                    $counter = 1;
                @endphp
                @foreach ($posters as $index => $poster)
                    @if ($poster->path != null)
                        @php
                        $matches=array();
                        preg_match('/(?<=file\/d\/)(.*)(?=\/)/', $poster->path, $matches);
                        $img='https://ubayapimus.com/'.$poster->path;
                        @endphp
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="wrapper">
                            <div class="card-exhibition" data-bs-toggle="modal" data-bs-target="#posterCard{{ $poster->posters_id }}">
                                <img src="{{ url($img) }}" alt="">
                                <div class="info">
                                    <h1>{{$poster->judul}}</h1>
                                    <p>
                                        <i>
                                           {{$poster->name}}
                                        </i>
                                    </p>

                                    <p>Votes: {{$likes[$index]}}</p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Modal Body -->
                    <!-- if you want to close by clicking outside the modal, delete the last endpoint:data-bs-backdrop and data-bs-keyboard -->
                    <div class="modal fade" id="posterCard{{$poster->posters_id}}" tabindex="-1" " role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-md" role="document">
                            <div class="modal-content">
                                
                                <div class="modal-body">
                                    <img src="{{ url($img) }}" alt="">
                                </div>
                                
                                <div class="modal-footer">
                                    @if (!Auth::guest())
                                        <p class="text-danger">Vote left: {{ Auth::user()->vote_tickets }}</p>
                                    @endif

                                    @if (time() <= strtotime("2023-12-1 12:00:00") && time() >= strtotime("2023-10-26 23:59:00"))
                                        <button class="btn btn-success w-100" id="button{{$poster->posters_id}}"><i class="bi bi-hand-thumbs-up-fill px-2"></i>Vote</button>
                                    @else
                                        <br>
                                        <h4 style="color: red">*) Masa Vote adalah 27 November - 1 Desember</h4>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- Optional: Place to the bottom of scripts -->
                    <script>
                        const myModal = new bootstrap.Modal(document.getElementById('modalId'), options)
                    
                    </script>
                    {{-- <div class="modal fade" id="exhibitionCard{{ $poster->posters_id }}" tabindex="-1"
                        aria-labelledby="exhibitionCardLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-xl">
                            <div class="modal-content">
                                <div class="modal-header" style="background-color: #ebb010;">
                                    <h5 class="modal-title text-white" id="formExhibition">Exhibition Poster</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid">
                                        <form action="{{ route('exhibition.vote', [
                                            'id' => $poster->posters_id
                                        ]) }}" method="POST">
                                            @csrf
                                            <div class="row justify-content-center mb-3 exhibition-content">
                                                    
                                                <div class="col-lg-4 col-md-12 mt-3">
                                                    <a href="{{ url($img) }}" target="_blank">
                                                        <img class="exhibition-img"
                                                            src="{{ url($img) }}"
                                                            alt="{{ $cabang->name." ".$counter }}">
                                                    </a>
                                                </div>
                                                        
                                                <div class="col-lg-8 col-md-12 mt-3">
                                                    <h1 class="ex-title">
                                                        {{ $cabang->nama." ".$counter }}</h1>
                                                        <h5>Jumlah votes: {{ $submission->like_count }}</h5>
                                                    <p class="ex-by">
                                                        Ketua :
                                                        @if ($submission->teams_id != null)
                                                            {{-- Get group leader name if no name
                                                            @php
                                                                $name = null;
        
                                                                foreach ($leaders as $leader) {
                                                                    if ($leader->teams_id == $submission->teams_id)
                                                                        $name = $leader->name;
                                                                }
                                                            @endphp
                                                            
                                                            @if ($name == null)
                                                                <i>Error No Name</i>
                                                            @else
                                                                {{ $name }}
                                                            @endif
                                                        @else
                                                            {{ $submission->name }}
                                                        @endif
                                                    </p>
                                                    <p class="ex-desc">
                                                        {{ $submission->description }}
                                                    </p>
                                                    <div class="div-vote">
                                                        @if (!Auth::guest())
                                                            <p class="text-danger">vote left: {{ Auth::user()->vote_tickets }}</p>
                                                        @endif

                                                        @if (time() <= strtotime("2023-11-10 00:00:00") && time() >= strtotime("2023-12-1 12:00:00"))
                                                            <button type="submit" class="btnVote">Vote</button>
                                                        @else
                                                            <br>
                                                            <h4 style="color: red">*) Masa Vote adalah 27 November - 1 Desember</h4>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    @endif
                        @php
                            $counter++;
                        @endphp
                    @endforeach
                @else
                    <div class="alert alert-light" role="alert">
                        There's no data
                    </div>
            @endif
        </div>
</section>
<script>
     $('.btn').on('click', function() {
            if (!confirm("Are you sure?")) return
            var idPoster = this.id;
            idPoster = idPoster.slice(6);
            console.log(idPoster);
            $.ajax({
                url: "{{ route('exhibition.vote', ['id' => ':id']) }}".replace(':id', idPoster),
                type: "POST",
                data: { 'idPoster': idPoster, '_token': '{{ csrf_token() }}' }, 
                success: function (data) {
                    console.error(data.message);
                    location.reload();
                },
                error: function (xhr, status, error) {
                    console.error(error);
                }
            });
        });
</script>
@endsection