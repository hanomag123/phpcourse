<?php
require_once('./contants.php');

function changeLangCookie($lang = defaultlang)
{
  //проверяем валидный ли куки, сравнивая переданный аргумент с элементами правильных вариантов, иначе используем дэфолтное значение
  foreach (langArr as $value) {
    if ($lang === $value) {
      $lang = $value;
    } else {
      $lang = defaultlang;
    }
  }
  setcookie('lang', $lang, time() + 60 * 60 * 24, '/');
}
