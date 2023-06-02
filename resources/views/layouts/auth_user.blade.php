<div class="mt-6 mb-8">
    @php
        $user = Auth::user();
    @endphp     
</div>
<div class="row">
    <div class="col-xs-4 col-sm-4 col-md4">
        <div class="form-group">
            <label for="">SECRETARIO GENERAL O REPRESENTANTE DE C.T.</label><br>
            {{ $user->name}}
        </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md4">
        <div class="form-group">
            <label for="">DELEGACIÓN O C.T.</label><br>
            {{$user->delegaciones->delegacion}} {{$user->delegaciones->sede}}
        </div>
    </div>
    <div class="col-xs-4 col-sm-4 col-md4">
        <div class="form-group">
            <label for="">REGIÓN</label>
            {{$user->delegaciones->regiones->region}} {{$user->delegaciones->regiones->sede}}
        </div>
    </div>
</div>