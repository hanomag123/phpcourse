<?php
require_once('./contants.php');

function isParameterValid($parameter) {
  //проверяем валидный ли параметр, сравнивая переданный аргумент с элементами правильных вариантов
  foreach (langArr as $value) {
    if ($parameter === $value) {
      return true;
    } 
  }
}
?>