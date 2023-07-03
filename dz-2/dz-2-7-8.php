<h2>Задача 7 - Сумма элементов со значением > 3</h2>

<p>
Создайте массив, как в Задаче 3. Выведите его значения на экран в строчку через запятую. Выведите сумму элементов, значение которых более 3 (например, 4, 9, 12).
</p>

<?php
  $arr = [];
  for ($i = 0; $i < 20; $i++) {
    $arr[] = rand(0, 20);
  }
  $sum = 0;
  $sumMoreThree = 0;
  foreach($arr as $value) {
    $sum += $value;
    if ($value > 3) {
      $sumMoreThree += $value;
    }
  }
  echo "Элементы массива: " . implode(', ', $arr) . '<br>';
  echo "Сумма элементов массива: " . $sum  . '<br>';
  echo "Сумма элементов массива больше 3: " . $sumMoreThree . '<br>';
?>

<h2>Задача 8 - Поменять max и min значения</h2>

<p>
Создайте массив, как в Задаче 1. Выведите его значения на экран в строчку через запятую. Поменяйте минимальное и максимальное значения местами. <br>И выведите новый массив на экран в строчку через запятую.
</p>

<?php
  $arr = [];
  for ($i = 0; $i < 20; $i++) {
    $arr[] = rand(21, 22);
  }
  $str = implode(', ', $arr);
  echo "Элементы массива: " . $str . '<br>';
  $max = 0;
  $min = count($arr);
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