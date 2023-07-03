
<?php
if (isset($_GET['username']) && isset($_GET['login'])) {
  $username = $_GET['username'];
  $login = $_GET['login'];

  echo "Добро пожаловать, $username! Ваша учетная запись “{$login}” была успешно создана.";
}

?>