<?php
session_start();
include "../koneksi.php"
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dolan Suroboyo</title>
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
                            <div class="dropdown mt-4">
                                <button class="btn btn-outline text-black dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                    <?php echo $_SESSION['name'] ?>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="#">Edit Profile</a></li>
                                    <li><a class="dropdown-item" href="#">Saved Location</a></li>
                                    <li><a class="dropdown-item" href="logout.php">Logout</a></li>
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

    <div class="container mb-5">

        <p class="text-center fs-2 fw-bold mb-5 pt-3">Hasil Pencarian</p>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">

            <?php
            if (isset($_GET['search']) && $_GET['search']) {
                $search = $_GET['search'];
                $sql = mysqli_query($connect, "SELECT * FROM place WHERE name_place LIKE '%$search%' ");
                if (mysqli_num_rows($sql) > 0) {
                    while ($result = mysqli_fetch_array($sql)) {
            ?>

                        <div class="col">
                            <div class="p-2 shadow rounded-slide position-relative" style="height: 30rem;">
                                <img src="<?= $result['place_image'] ?>" class="card-img-top p-2 rounded-slide " alt="..." style="border-top-right-radius:20px; border-top-left-radius:20px">
                                <div class="card-body">
                                    <a href="detail-data.php?id=<?= $result['id_place'] ?>" class="text-decoration-none text-black mb-3 fs-5 card-title text-truncate pb-2"><?= $result['name_place'] ?></a>
                                    <p class="text-secondary text-truncate" style="font-size: 12px;"><?= $result['location_place'] ?></p>
                                    <p class="body-text"><?= $result['desc_place'] ?></p>
                                    <a href="<?= $result['map'] ?>" class="hover-item text-decoration-none text-secondary text-end fa-md bottom-0 position-absolute mb-4"><i class="fas fa-map-marker text-primary me-2"></i>Show Map</a>
                                    <i class="far fa-heart  position-absolute fa-2x mb-4 me-3 text-secondary bottom-0 end-0"></i>
                                </div>
                            </div>
                        </div>
                    <?php }
                } else { ?>
                    <div class="col-lg-12">
                        <div class="text-center d-none d-lg-block">
                            <p>Maaf, data tidak ditemukan!</p>
                            <img src="../assets/img/not_found.jpg" class="img-fluid p-2 rounded-slide " alt="..." style="height: 500px; width: 500px;">
                        </div>

                        <div class="text-center d-lg-none">
                            <p>Maaf, data tidak ditemukan!</p>
                            <img src="../assets/img/not_found.jpg" class="img-fluid p-2 rounded-slide " alt="...">
                        </div>
                    </div>

            <?php
                }
            }
            ?>

        </div>
    </div>

    <!-- End Content -->

    <!-- Scroll Button -->

    <button onclick="topFunction()" id="myBtn" title="Go to top" class="btn"><i class="fas fa-chevron-up"></i></button>

    <!-- End Scroll Button -->

    <!-- Footer -->

    <div class="container-fluid mt-5 p-5" style="background-color: #F4EFF4;">
        <p class="text-center">Made with <i class="far fa-kiss-wink-heart bg-warning text-danger fa-lg" style="border-radius: 50%;"></i> by dulur Suroboyo.</p>
    </div>

    <!-- End Footer -->
</body>

<script src="../assets/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>