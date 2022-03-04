@extends('layouts.admin')

@section('title', 'Edit Transaksi')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">
    
    <!-- DataTales Example -->
    @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    <div class="card shadow mb-4">
        <div class="card-header py-3 text-center">
            <h2 class="m-0 font-weight-bold text-primary">@yield('title') {{ $item->title }}</h2>
        </div>
        <div class="card-body">
            <form action="{{ route('transaction.update', $item->id) }}" method="post">
                @method('PUT')
                @csrf
                <div class="form-group">
                    <label for="transaction_status">Status</label>
                    <select name="transaction_status" required class="form-control">
                        <option value="{{ $item->transaction_status }}">
                            Jangan Ubah ({{ $item->transaction_status }})
                        </option>
                        <option value="IN_CART">In Cart</option>
                        <option value="PENDING">Pending</option>
                        <option value="SUCCESS">Success</option>
                        <option value="CANCEL">Cancel</option>
                        <option value="FAILED">Failed</option>
                    </select>
                </div>
                
                <button type="submit" class="btn btn-primary">Ubah</button>
                <a href="{{ route('transaction.index') }}" class="btn btn-secondary">Kembali</a>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
@endsection