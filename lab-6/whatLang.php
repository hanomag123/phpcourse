<?php
require_once('./contants.php');

//Если есть параметр то возвращаем его значение, иначе берем значение из куки, иначе дефолтное
function whatLang () {
  if (isset($_GET, $_GET['lang'])) {
    return $_GET['lang'];
  } else if (isset($_COOKIE, $_COOKIE['lang'])) {
    return $_COOKIE['lang'];
  } else {
    return defaultlang;
  }
}

?>