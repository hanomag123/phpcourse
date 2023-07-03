<h1>Домашняя работа</h1>

<h2>Задача 3 - Формат</h2>

<p>Сделайте функцию, которая выводит элементы переданного массива через пробел в переданном теге (b - жирном, i - курсиве, u - подчеркнутым). <br>
  Если тег не передан - выводить жирным. Продемонстрируйте в программе использование этой функции.</p>


<pre>
  <?php
  $arr = [];
  for ($i = 0; $i < 10; $i++) {
    $arr[$i] = rand(2, 9);
  }

  function getTag($arr, $tag = 'b')
  {
    foreach ($arr as $val) {
      echo "<$tag>$val</$tag> ";
    }
  }

  getTag($arr, 'b');
  getTag($arr, 'i');
  getTag($arr, 'u');
  ?>
</pre>

<h2>Задача 4* - Факториал</h2>

<p>Написать функцию для вычисления факториала</p>


<pre>
  <?php
  function factorial($num)
  {
    if ($num > 1) { 
      return $num * factorial($num - 1);
    }
    return 1;
  }
  $num = 4;
  $fac = factorial($num);

  echo "Факториал $num: $fac";

  ?>
</pre>