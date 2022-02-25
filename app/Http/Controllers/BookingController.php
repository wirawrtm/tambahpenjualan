<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\booking;
use App\Models\datasg;



class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $booking = booking::all();
        $datacab = datasg::distinct()->get(['cabang']);
        $datasgg = ['cabang'];
        $datasg = datasg::where('cabang', $datasgg )->get(['sg']);
        $datasga = datasg::all();
        return view ('tampil', compact ('booking','datacab','datasg','datasga'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $req)
    {
        $booking = booking::create([
            'cabang' => 'cabang',
            'sg' => 'sg',
            'produk' => 'produk',
            'limit' => 'limit',
        ]);
        return view ('tampil', compact ('booking'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
            $booking = new booking;
            $booking->cabang = $request->cabang;
            $booking->sg = $request->sg;
            $booking->produk = $request->produk;
            $booking->limit = $request->limit;
            $booking->save();
        return redirect('/');
//return view ('tampil', compact ('booking'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $update=booking::find($id);
        $update->cabang = $request->cabang;
        $update->sg = $request->sg;
        $update->produk = $request->produk;
        $update->limit = $request->limit;
        $update->save();
        return redirect('/');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hapus = booking::find($id);
 
        $hapus->delete();
        return redirect('/');
    
    }
}
