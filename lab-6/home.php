<?php

session_start();

require_once('./checkCookie.php');

if (!isset($_SESSION['is_auth'])) {
  header("HTTP/1.1 401 Unauthorized");
  exit;
}



require_once('header.php');
require_once('getMonth.php');
require_once('whatlang.php');

//Проверяем есть ли авторизация, логин и валидна ли авторизация
if (isset($_SESSION['is_auth'], $_SESSION['login']) && $_SESSION['is_auth'] === 1 ) {
  $lang = whatLang();
  $login = $_SESSION['login'];
  $day = date('d');
  //Получаем название месяца в зависимости от языка
  $monthName = getMonthName(date('n'), $lang);
  $year = date('Y');

  $date = "$day $monthName $year";

  // В зависимости от параметра выводим текст
  switch ($lang) {
    case 'ru':
      echo "Добро пожаловать, $login! Мы рады видеть вас в этот чудесный день $date.";
      break;
    case 'en':
      echo "Welcome, $login! We are happy to see you in this beautifull day $date.";
      break;
    default:
      echo "Добро пожаловать, $login! Мы рады видеть вас в этот чудесный день $date.";
      break;
  }
}




