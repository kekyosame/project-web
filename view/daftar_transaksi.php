<?php
session_start();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die("Error");
}

include '../koneksi.php';


?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dolen Suroboyo</title>

</head>

<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/all.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

<body>

    <!-- Navbar -->

    <div class="container-fluid shadow-sm mb-4 pb-3">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <img class="mw-25 mh-25 mt-3" src="../assets/img/logo.svg" style="height: 50px; width: 50px;" alt="" srcset="">
                <a class="navbar-brand ms-3 fw-bold mt-3" href="../index.php" style="font-family: 'Montserrat', sans-serif;">Dolen Suroboyo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item mt-2">
                            <a class="nav-link text-black mt-3 me-3" href="#">About Us</a>
                        </li>
                        <?php
                        if (!isset($_SESSION['login'])) { ?>
                            <a class="nav-link text-black mt-3 me-3" href="view/login.php">Login</a>
                            </li>
                            <li class="nav-item mt-2">
                                <a class="btn mt-3 text-light" style="background-color: #7F67BE;" href="view/register.php">Sign Up</a>
                            </li>
                        <?php  } else { ?>
							<li class="nav-item mt-2">
								<a class="nav-link text-black mt-3 me-3" href="view/daftar_transaksi.php?id=<?php echo $row['id'] ?>">Daftar transaksi</a>
							</li>
                            <div class="dropdown mt-4">
                                <button class="btn btn-outline text-black dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user-circle me-2"></i>
                                    <?php echo $_SESSION['name'] ?>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="#">Edit Profile</a></li>
                                    <li><a class="dropdown-item" href="#">Saved Location</a></li>
                                    <li><a class="dropdown-item" href="../logout.php">Logout</a></li>
                                </ul>
                            </div>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <!-- End Navbar -->

    <!-- Content -->
<table class="table";>
        <thead class="thead">
            <tr>
                <th>ID transaksi</th>
				<th>nama</th>
                <th>Destinasi</th>
                <th>harga tiket</th>
				<th>jumlah tiket dibeli</th>
                <th>tiket motor (Rp. 3000)</th>
                <th>tiket mobil (Rp. 5000)</th>
                </thead>
	<?php
    include "../koneksi.php";
    $id = $_GET['id'];
    $query = "select * from transaksi where id ='$id'";
    $result = mysqli_query($connect, $query);
    $check = mysqli_num_rows($result);
    if (mysqli_num_rows($result) > 0) { ?>

	
	<?php 
	    //while($res = mysql_fetch_array($result)) { // mysql_fetch_array is deprecated, we need to use mysqli_fetch_array 
	    while($res = mysqli_fetch_array($result)) { 	
        $res['id_transaksi'];
        echo "<tr>";
        echo "<td>".$res['id_transaksi']."</td>";
        echo "<td>".$res['user']."</td>";
		echo "<td>".$res['name_place']."</td>";
        echo "<td>".$res['price']."</td>";
		echo "<td>".$res['j_tiket']."</td>";
        echo "<td>".$res['p_motor']."</td>";
		echo "<td>".$res['p_mobil']."</td>";
        }
	    ?>
		</tr>
           
            <tbody>

            </tbody>
        </table>
	<?php
    }
    ?>
	
<!-- End Content -->

  <!-- Scroll Button -->

  <button onclick="topFunction()" id="myBtn" title="Go to top" class="btn"><i class="fas fa-chevron-up"></i></button>

  <!-- End Scroll Button -->

  <!-- Footer -->

  <div class="container-fluid p-5 " style="background-color: #F4EFF4;">
    <p class="text-center">Made with <i class="far fa-kiss-wink-heart bg-warning text-danger fa-lg" style="border-radius: 50%;"></i> by dulur Suroboyo.</p>
  </div>
  <!-- End Footer -->
</body>

<script src="assets/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>