<h1>Классная работа №2</h1>

<h2>Задача 1 - Сортировка</h2>

<p>
Упорядочить значения массива по возрастанию, используя функцию PHP.
</p>

<pre>
  <?php
    $arr = [];
    for ($i = 0; $i < 20; $i++) {
      $arr[] = rand(0, 20);
    };
    asort($arr);
    print_r($arr);
  ?>
</pre>

<h2>Задача 2 - Чистка от дублей</h2>

<p>
Заполнить массив случайными значениями и удалить повторяющиеся элементы, не используя функцию array_unique
</p>

<pre>
  <?php
    $arr = [];
    for ($i = 0; $i < 20; $i++) {
      $arr[] = rand(0, 20);
    };
    $count = count($arr);
    $arrCopy = $arr;
    for($i = 0; $i < $count; $i++) {
      for($j = $i + 1; $j < $count; $j++ ) {
        if (isset($arr[$j]) && isset($arr[$i])) {
          if ($arr[$i] === $arr[$j]) {
            unset($arr[$i]);
          }
        }
      }
    }
    echo "С дублями:<br>";
    print_r($arrCopy);
    echo "Без дублей:<br>";
    print_r($arr);
  ?>
</pre>

<h2>Задача 3 - Слияние с сортировкой</h2>

<p>
Заполнить два массива случайными значениями, объединить их в один и отсортировать в порядке возрастания
</p>

<pre>
  <?php
    $arr1 = [];
    $arr2 = [];
    for ($i = 0; $i < 20; $i++) {
      $arr1[] = rand(0, 20);
      $arr2[] = rand(0, 20);
    };
    echo 'Массив №1<br>';
    print_r($arr1);
    echo 'Массив №2<br>';
    print_r($arr2);
    $arr1 = array_merge($arr1, $arr2);
    asort($arr1);
    echo 'Массив №3(Объединенный)<br>';
    print_r($arr1)
  ?>
</pre>