@extends('layouts.admin')

@section('title', 'Detail Transaksi')

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
            <h2 class="m-0 font-weight-bold text-primary">@yield('title') {{ $item->user->name }}</h2>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <td>{{ $item->id }}</td>
                </tr>
                <tr>
                    <th>Paket Travel</th>
                    <td>{{ $item->travel_package->title }}</td>
                </tr>
                <tr>
                    <th>Pembeli</th>
                    <td>{{ $item->user->name }}</td>
                </tr>
                <tr>
                    <th>Additional Visa</th>
                    <td>$0{{ $item->additional_visa }}</td>
                </tr>
                <tr>
                    <th>Total Transaksi</th>
                    <td>${{ $item->transaction_total }}</td>
                </tr>
                <tr>
                    <th>Status Transaksi</th>
                    <td>{{ $item->transaction_status }}</td>
                </tr>
                <tr>
                    <th>Pembelian</th>
                    <td>
                        <table class="table table-bordered">
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Nationality</th>
                                <th>Visa</th>
                                <th>DOE Passport</th>
                            </tr>
                            @foreach($item->details as $detail)
                                <tr>
                                    <td>{{ $detail->id }}</td>
                                    <td>{{ $detail->username }}</td>
                                    <td>{{ $detail->nationality }}</td>
                                    <td>{{ $detail->is_visa ? '30 Days' : 'N/A' }}</td>
                                    <td>{{ $detail->doe_passport }}</td>
                                </tr>
                            @endforeach
                        </table>
                    </td>
                </tr>
            </table>
            <a href="{{ route('transaction.index') }}" class="btn btn-secondary">Kembali</a>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
@endsection