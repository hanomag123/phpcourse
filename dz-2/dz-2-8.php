
<h2>Задача 8 - Поменять max и min значения</h2>

<p>
Создайте массив, как в Задаче 1. Выведите его значения на экран в строчку через запятую. Поменяйте минимальное и максимальное значения местами. <br>И выведите новый массив на экран в строчку через запятую.
</p>

<?php
  $arr = [];
  for ($i = 0; $i < 20; $i++) {
    $arr[] = rand(0, 20);
  }
  $str = implode(', ', $arr);
  echo "Элементы массива: " . $str . '<br>';
  $max = 0;
  $min = $arr[0];
  foreach($arr as $key => $value) {
    if ($value > $max) {
      $max = $value;
      $maxIndex = $key;
    }
    if ($value < $min) {
      $min = $value;
      $minIndex = $key;
    }
  }
  $arr[$maxIndex] = $min;
  $arr[$minIndex] = $max;
  $str = implode(', ', $arr);
  echo "Элементы массива: " . $str . '<br>';
?>