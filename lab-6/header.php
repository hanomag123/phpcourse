<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<?php
require_once('./whatLang.php');
?>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="padding: 1rem 10rem;">

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="?lang=ru"><?= whatLang() === 'ru' ? 'Ру': 'Ru' ?><?= whatLang() === 'ru' ? '(текущий)': '' ?></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="?lang=en"><?= whatLang() === 'en' ? 'En': 'Англ' ?><?= whatLang() === 'en' ? '(current)': '' ?></a>
      </li>
    </ul>

  </div>
  
    <?php
  
    if (isset($_SESSION['is_auth']) && $_SESSION['is_auth'] === 1) {
      $exit = $_GET && $_GET['lang'] === 'ru' ? 'Выйти': 'Exit';
      echo '<a href="login.php" class="btn btn-outline-success my-2 my-sm-0">'.$exit.'</a>';
    }
    ?>
</nav>



