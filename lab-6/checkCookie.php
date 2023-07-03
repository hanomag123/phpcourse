<?php

require_once('./changeLangParameter.php');
require_once('./changeLangCookie.php');
require_once('./contants.php');
require_once('./isParameterValid.php');

//Если параметр не валидный то используем дэфолтное значение
if (isset($_GET, $_GET['lang']) && !isParameterValid($_GET['lang'])) {
  changeLangParameter(); 
  exit;
}

// Если есть куки и есть параметр то добавим куки из параметра
if (isset($_COOKIE, $_COOKIE['lang']) && isset($_GET, $_GET['lang'])) {
  $lang = $_GET['lang'];
  changeLangCookie($lang);
// Если есть куки но нет параметра то добавим параметр из куки
} else if (isset($_COOKIE, $_COOKIE['lang']) && !isset($_GET, $_GET['lang'])) {
  $lang = $_COOKIE['lang'];
  changeLangParameter($lang); 
  // Если нет куки но есть параметр то добавим куки из параметра
} else if (!isset($_COOKIE, $_COOKIE['lang']) && isset($_GET, $_GET['lang'])) {
  $lang = $_GET['lang'];
  changeLangCookie($lang);
  // Если нет куки и нет параметра то добавим куки и параметр по дэфолту
} else if (!isset($_COOKIE, $_COOKIE['lang']) && !isset($_GET, $_GET['lang'])) {
  changeLangCookie();
  changeLangParameter();
}
