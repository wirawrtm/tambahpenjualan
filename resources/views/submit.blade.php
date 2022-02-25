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
    <title>Gentengkali 2</title>
</head>
<body>
    <div class="container pt-5">
        <form action="post" method="{{url('booking')}}">
        <div class="row">
            <table class="table table-hover">
            <tr class="text-center">
                <td>Cabang</td>
                <td>Nama</td>
                <td>Produk</td>
                <td>Limit</td>
            </tr>
            <tr>
                <td class="col">
                    <input type="text" class="form-control" placeholder="Cabang" aria-label="First name">
                </td>
                <td class="col">
                    <input type="text" class="form-control" placeholder="Nama SG" aria-label="Last name">
                </td>
                <td class="col">
                    <select id="inputState" class="form-select">
                        <option selected>Choose...</option>
                        <option>KUM</option>
                        <option>KUR</option>
                        <option>KSM</option>
                    </select>                
                </td>
                <td class="col">
                    <input type="text" class="form-control" placeholder="Limit" aria-label="Last name">
                </td>
            </tr>
            <tr class="text-light">
                <td colspan="4" class="text-center" >
                    <button type="button" class="btn btn-primary w-100">Submit</button> 
                </td>
            </tr>
            </table>
        </div>
        </form>
    </div>
</body>
</html>