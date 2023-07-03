<?php
if (!ini_get('display_errors')) {
  ini_set('display_errors', '1');
}
// ini_set('session.save_path', 'sessions');
session_start();

require_once('./contants.php');
require_once('./checkCookie.php');
require_once('whatlang.php');


//если заходим на страницу логина то обнуляем авторизацию
if (isset($_SESSION['is_auth']) && $_SESSION['is_auth'] === 1) {
  unset($_SESSION['is_auth']);
}


if (isset($_POST['result'])) {
  if ($_POST['login'] == '') {
    switch (whatLang()) {
      case 'ru':
        $msglogin = "Поле Логин обязательно для заполнения";
        break;
      case 'en':
        $msglogin = "Login is required";
        break;
    }
  } elseif ($_POST['pass'] == '') {
    switch (whatLang()) {
      case 'ru':
        $msgpass = "Поле Пароль обязательно для заполнения";
        break;
      case 'en':
        $msgpass = "Password is required";
        break;
    }
  } elseif ($_POST['login'] == 'admin' && $_POST['pass'] == 'admin') {
    $_SESSION['is_auth'] = 1;
    $_SESSION['login'] = $_POST['login'];
    header('Location: home.php');
    exit;
  } else {
    switch (whatLang()) {
      case 'ru':
        $msg = "Совпадения по введенным логину/паролю не найдены, попробуйте что-нибудь еще.";
        break;
      case 'en':
        $msg = "No matches were found for the entered login/password, try something else.";
        break;
    }
  }
}

?>

<?php function console(...$el)
{
  foreach ($el as $key => $value) {
    if ($key === 0 && !is_array($value)) {
      echo '<hr>';
    }
    if (is_array($value)) {
      echo '<hr><pre>';
      print_r($value);
      echo '</pre><hr>';
    } else {
      if (gettype($value) === 'string') {
        echo "<span style='color: green;'>" . $value . '</span> ';
      } else if (gettype($value) === 'boolean') {
        $value = $value ? 'true ' : 'false ';
        echo "<span style='color: blue;'>" . $value . '</span>';
      } else {
        echo $value . ' ';
      }
      if ($key === count($el) - 1) {
        echo '<br>';
      }
    }
  }
} ?>

<?php
require_once('header.php');
?>

<div class="row justify-content-md-center">
  <div class="col-md-6 mt-3">
    <form method="POST">
      <?php
      if (isset($msg)) {
      ?>
        <div class="alert alert-danger" role="alert"><?= $msg; ?></div>
      <?php
      }
      ?>
      <div class="mb-3">
        <label for="num1" class="form-label"><?= whatlang() === 'ru' ? 'Логин' : 'Login' ?></label>
        <?php
        if (isset($msglogin)) {
        ?>
          <div class="alert alert-danger" role="alert"><?= $msglogin; ?></div>
        <?php
        }
        ?>
        <input type="text" class="form-control" name="login" id="login" value="<?php if (isset($_POST['login'])) echo $_POST['login']; ?>">
      </div>
      <div class="mb-3">
        <label for="num2" class="form-label"><?= whatlang() === 'ru' ? 'Пароль' : 'Password' ?></label>
        <?php
        if (isset($msgpass)) {
        ?>
          <div class="alert alert-danger" role="alert"><?= $msgpass; ?></div>
        <?php
        }
        ?>
        <input type="password" class="form-control" name="pass" id="pass" value="">
      </div>
      <div class="mb-3">
        <button type="submit" name="result" class="btn btn-primary"><?= whatlang() === 'ru' ? 'Войти' : 'Enter' ?></button>
      </div>
    </form>


  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>