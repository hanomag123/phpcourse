<h1>Домашняя работа №2</h1>

<h2>Задача 1 - Инициалы</h2>

<p>
  В переменной содержится полное имя человека: $fio=’Sidorov Ivan Petrovich’.
  Выведите на экран его сокращенный вариант (т.е. должно получиться: Sidorov I. P.)
</p>

<?php
$fio = "Sidorov Ivan Petrovich";
function getFio($str)
{
  $firstSpaceIndex = strpos($str, ' ');
  $lastSpaceIndex = strrpos($str, ' ');
  $surname = substr($str, 0, $firstSpaceIndex);
  $name = substr($str, $firstSpaceIndex + 1, 1);
  $fatherName = substr($str, $lastSpaceIndex + 1, 1);

  return "$surname $name. $fatherName.";
};
echo getFio($fio);
?>

<h2>Задача 2 - Пропорциональные затраты</h2>

<p>
  Пропорционально общей части дохода разделить сумму расхода по товарам. Задать n случайных оплат по товарам.<br>
  Создать переменную для суммы затрат, которые надо пропорционально списать из стоимости оплат товаров.
</p>

<pre>

<?php
$products = [];
$turnover = 0;
for ($i = 0; $i < 10; $i++) {
  $price = rand(10, 30);
  $products[] = $price;
  $turnover += $price;
}
echo '<p>Товары следующих стоимостей:</p>';
print_r($products);
$expence = rand(100, 100);
echo "<p>Общей выручкой $turnover р. Расход для разбиения равен $expence р.</p>";

// todo


for ($i = 0; $i < count($products); $i++) {
  $products[$i] = $products[$i] - (($products[$i] / $turnover) * $expence);
}
echo '<p>Новые стоимости товаров:</p>';
print_r($products);
echo '<p>Cумма новых стоимостей: ' . array_sum($products) . '</p>';

?>

</pre>

<h2>Задача 3 - Элементы < 5</h2>

<p>
  Инициализируйте массив случайными значениями от 0 до 20.
  Размер массива должен вмещать 20 элементов.
  Выведите все элементы, которые меньше 5.
</p>

<pre>

  <?php
  $arr = [];
  $numbers = '';
  for ($i = 0; $i < 20; $i++) {
    $arr[] = rand(0, 20);

    if ($arr[$i] < 5) {
      $numbers .= $arr[$i] . '<br>';
    }
  }
  echo 'Исходный массив:';
  print_r($arr);
  echo 'Числа меньше пяти в массиве:<br>' . $numbers;
  ?>

</pre>

<h2>Задача 4 - Общие элементы</h2>

<p>Инициализируйте два массива как в Задаче 3. Выведите массив, который состоит из элементов, общих для этих двух массивов.</p>

<?php

  $arr1 = [];
  $arr2 = [];
  $arr2Copy = [];
  $arr3 = [];
  for ($i = 0; $i < 20; $i++) {
    $arr1[] = rand(0, 20);
    $arr2[] = rand(0, 20);
  };
  $arr2Copy = $arr2;
  foreach ($arr1 as $key1 => $value1) {
    foreach ($arr2 as $key2 => $value2) {
      if ($value1 === $value2) {
        $arr3[] = $value1;
        unset($arr2[$key2]);
        continue 2;
      }
    };
  };

?>

<div style="display:flex;">

  <pre>
    <p>Массив №1:</p>
    <?php
      sort($arr1);
      print_r($arr1);
    ?>
  </pre>

  <pre>
    <p>Массив №2:</p>
    <?php
      sort($arr2Copy);
      print_r($arr2Copy);
    ?>
  </pre>

  <pre>
    <p>Массив общих чисел:</p>
    <?php
      sort($arr3);
      print_r($arr3);
    ?>
  </pre>

</div>

<h2>Задача 5* - Три ключа с max значениями</h2>

<p>
  Найдите три ключа с самыми высокими значениями в массиве <br>
  $test = [ 'a' => 564, 'b' => 7984, 'c' => 231, 'd' => 345, 'e' => 7865].
</p>

<pre>
  <?php
    $test =  ['a' => 564, 'b' => 7984, 'c' => 231, 'd' => 345, 'e' => 7865];
    $firstKey = '';
    $newArr = [];
    for($i = 0; $i < 3; $i++) {
      $number = 0;
      foreach($test as $key => $value) {
        if ($value > $number) {
          $number = $value;
          $firstKey = $key;
        }
      }
      unset($test[$firstKey]);
      $newArr[$firstKey] = $number;
    }
    echo '<p>Три ключа с max значениями:</p>';
    print_r(array_keys($newArr));
  ?>
</pre>

<h2>Задача 6 - Убрать http://</h2>

<p>
Очистите адрес сайта от протокола http. На входе в переменной хранится строка “http://onliner.by”
</p>

<?php
$url = 'http://onliner.by';
echo "Сайт без протокола: " . substr($url, 7, strlen($url));
?>

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
    $arr[] = rand(0, 20);
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

<h2>Задача 9 - Почистить строку и посчитать число слов </h2>

<p>
Подсчитать количество слов в строке, используя функцию explode. Слова могут быть разделены не только одинарным пробелом, но и двойным, а также запятыми (другие знаки не учитываем).
</p>

<?php
  $str = 'Lorem ipsum,dolor sit amet consectetur adipisicing elit  Aspernatur debitis quam, distinctio consectetur  numquam culpa officia rem, voluptatibus nesciunt laborum';
  $arr = [' ', '  ', ', ', ','];
  echo "<strong>Искомая строка:</strong> " . $str . '<br>';

  $str = str_replace($arr, ' ', $str);
  echo "<strong>Количество слов в строке:</strong> " . count(explode(' ', $str)) . '<br>';
?>

<h2>Задача 10* - Радуга</h2>

<p>
Выведите на экран фразу “Каждый охотник желает знать где сидит фазан”, раскрашенной в соответствующие цвета радуги. 
</p>

<?php
  $str = 'Каждый охотник желает знать где сидит фазан';
  $arr = ['red', 'orange', 'yellow', 'green','Aqua', 'blue', 'violet'];
  $str = explode(' ', $str);
  $newStr = '';
  foreach($str as $key => $value) {
    $color = $arr[$key % count($arr)];
    $newStr .= " <span style='color: $color'>$value</span> ";
  }
  echo $newStr;
?>


