<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">  
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <title>Gentengkali 2</title>



<script language="javascript" type="text/javascript">
  function dynamicdropdown(listindex)
  {
      switch (listindex)
      {
        @foreach ($datasga as $sgb)
      case "{{$ada=$sgb->cabang}}" :
      <?php
      $user = DB::table('datasg')->where('cabang',$ada)->get();
      $a=1;
    ?>
    
          @foreach ($user as $sgc)
          document.getElementById("status").options[{{$a++}}]=new Option("{{$sgc->sg}}","{{$sgc->sg}}");
          @endforeach
          break;
          @endforeach
      }
      return true;
  }
  </script>
</head>
<body>
    
    
    <div class="container pt-5">
        <div class="btn btn-outline-success text-succes" data-bs-toggle="modal" data-bs-target="#exampleModal1">Tambah Data
        </div>
        
        <!-- Modal -->
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                                      
                <form action="post" method="post">
                  @csrf
                        <div class="mb-3">
                          <label for="recipient-name" class="col-form-label">Cabang :</label>
                            <select id="source" class="form-select" name="cabang" onchange="javascript: dynamicdropdown(this.options[this.selectedIndex].value);">
                            <option value="">Select source</option>
                            @foreach ($datacab as $sgb)
                            <option value="{{$sgb->cabang}}" name="{{$sgb->cabang}}">{{$sgb->cabang}}</option>
                            @endforeach
                        
                            </select>
                                                
                        </div>
                        <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Nama :</label>
                          <script type="text/javascript" language="JavaScript">
                          document.write('<select class="form-select" name="sg" id="status"><option value="">Select status</option></select>')
                          </script>
                          <noscript>
                          <select id="status" name="status">
                          </select>
                          </noscript>
                  
                        </div>
                          <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Produk :</label>
                            <div class="d-grid gap-2 d-block text-center" role="group" aria-label="Basic radio toggle button group">
                                <input type="radio" class="btn-check" name="produk" id="btnradio1" autocomplete="off" value="KUM">
                                <label class="btn btn-outline-success" for="btnradio1">KUM</label>
                              
                                <input type="radio" class="btn-check" name="produk" id="btnradio2" autocomplete="off" value="KUR">
                                <label class="btn btn-outline-success" for="btnradio2">KUR</label>
                              
                                <input type="radio" class="btn-check" name="produk" id="btnradio3" autocomplete="off" value="KSM">
                                <label class="btn btn-outline-success" for="btnradio3">KSM</label>
                            </div>                          
                          </div>
                            
                          <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Limit :</label>
                            <input type="text" class="form-control" id="recipient-name" name="limit">
                          </div>
  
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success">Save changes</button>
                </div>
              </form>                
            </div>
            </div>
        </div>
        <!-- EndModal -->

        <div class="row">
            <table class="table table-hover">
            <tr class="">
                <td>Cabang</td>
                <td>Nama</td>
                <td class="text-center">Produk</td>
                <td class="text-center">Limit</td>
                <td class="text-center">Keterangan</td>
            </tr>
            @foreach ($booking as $bookings)
            <tr class="align-middle">
                <td class="col">
                    {{$bookings->cabang}}
                </td>
                <td class="col">
                    {{$bookings->sg}}
                </td>
                <td class="col text-center">
                    {{$bookings->produk}}
                </td>
                <td class="col text-center">
                    {{$bookings->limit}}
                </td>
                <td class="col text-center">
                    <div class="btn btn-outline-success text-succes" style="width: 100px" data-bs-toggle="modal" data-bs-target="#exampleModal{{$bookings->id}}">Edit {{$bookings->id}}
                    </div>
        <!-- Modal -->
        <div class="modal fade text-start" id="exampleModal{{$bookings->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Data {{$bookings->id}}</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
              <form action="{{url('edit').'/'.$bookings->id}}" method="post">
                @csrf
                      <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Cabang :</label>
                        <div class="input-group mb-3">
                          <select class="form-select" id="cabang" name="cabang">
                            <option selected value="{{$bookings->cabang}}">{{$bookings->cabang}}</option>
                            <option value="KCM Sidoarjo Kota 1">KCM Sidoarjo Kota 1</option>
                            <option value="KCM Sidoarjo Tulangan 1">KCM Sidoarjo Tulangan 1</option>
                            <option value="KCP MMU Sidoarjo Pasar Porong 1">KCP MMU Sidoarjo Pasar Porong 1</option>
                            <option value="KCP MMU Sidoarjo Sepanjang Kota 1">KCP MMU Sidoarjo Sepanjang Kota 1</option>
                            <option value="KCP MMU Sidoarjo Sukodono 1">KCP MMU Sidoarjo Sukodono 1</option>
                            <option value="Sidoarjo 1">Sidoarjo 1</option>
                            <option value="Sidoarjo Candi 1">Sidoarjo Candi 1</option>
                            <option value="Sidoarjo Gateway 1">Sidoarjo Gateway 1</option>
                            <option value="Sidoarjo Gedangan 1">Sidoarjo Gedangan 1</option>
                            <option value="Sidoarjo Krian 1">Sidoarjo Krian 1</option>
                            <option value="Sidoarjo Pahlawan 1">Sidoarjo Pahlawan 1</option>
                            <option value="Sidoarjo Sedati 1">Sidoarjo Sedati 1</option>
                            <option value="Sidoarjo Sepanjang 1">Sidoarjo Sepanjang 1</option>
                            <option value="Surabaya Bandara Juanda 1">Surabaya Bandara Juanda 1</option>
                          </select>
                        </div>
                      </div>
                      <div class="mb-3">
                      <label for="recipient-name" class="col-form-label">Nama :</label>
                          <select class="form-select" id="sg" name="sg">
                          <option selected value="{{$bookings->cabang}}">{{$bookings->sg}}</option>
                          <option value="Aulia">Aulia</option>
                          <option value="Satria">Satria</option>
                          <option value="Anisa">Anisa</option>
                          <option value="M saiful">M saiful</option>
                      </select>
                      </div>
                      <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Produk :</label>
                        <div class="d-grid gap-2 d-block text-center" role="group" aria-label="Basic radio toggle button group">
                            <input type="radio" class="btn-check" name="produk" id="{{$bookings->id}}btnradio1" autocomplete="off" value="KUM" @if ($bookings->produk==='KUM'){{'checked'}} @endif>
                            <label class="btn btn-outline-success" for="{{$bookings->id}}btnradio1">KUM</label>
                          
                            <input type="radio" class="btn-check" name="produk" id="{{$bookings->id}}btnradio2" autocomplete="off" value="KUR" @if ($bookings->produk==='KUR'){{'checked'}} @endif>
                            <label class="btn btn-outline-success" for="{{$bookings->id}}btnradio2">KUR</label>
                          
                            <input type="radio" class="btn-check" name="produk" id="{{$bookings->id}}btnradio3" autocomplete="off" value="KSM" @if ($bookings->produk==='KSM'){{'checked'}} @endif>
                            <label class="btn btn-outline-success" for="{{$bookings->id}}btnradio3">KSM</label>
                        </div>                          
                      </div>
                        <div class="mb-3">
                          <label for="recipient-name" class="col-form-label">Limit :</label>
                          <input type="text" class="form-control" id="recipient-name" name="limit" value="{{$bookings->limit}}">
                        </div>

              </div>
              <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-success">Save changes</button>
              </div>
            </form>                
          </div>
          </div>
      </div>
      <!-- EndModal -->
                  <a href="{{url('del').'/'.$bookings->id}}"><div class="btn btn-outline-danger text-succes" style="width: 100px">hapus
                    </div>
                    </a>
            </tr>
            @endforeach
            </table>
        </div>
    </div>
</body>
</html>