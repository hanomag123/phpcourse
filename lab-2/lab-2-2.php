<pre>
  <?php
    $content = file_get_contents('./accounting.csv', true);

    $rows = preg_split("/\r\n|\r|\n/", $content);

    foreach ($rows as $key => $row){
      $rows[$key] = explode(';', $row);
    }

    print_r($rows);
  ?>
</pre>

<h2>Задача 4 - Рассчитать баланс</h2>

<p>
Вывести на экран сумму всех чисел из 2-го столбца. В цикле использовать конструкцию list($date,$amount) - для работы с данными из колонок.
</p>


<?php
  $sum = 0;
  foreach($rows as $value) {
    list($date, $ammount) = $value;
    $sum += $ammount;
  }
  echo "Сумма чисел: $sum";
?>

<h2>Задача 5 - Вывести дату с max доходом и min расходом</h2>

<p>
Вывести дату с max доходом и min расходом.
</p>

<?php
  $minAmmo = $rows[0][1];
  $maxAmmo = 0;
  $maxDate = '';
  foreach($rows as $value) {
    list($date, $ammount) = $value;
    if ($ammount > $maxAmmo) {
      $maxDate = $date;
      $maxAmmo = $ammount;
    }
    if ($ammount < $minAmmo) {
      $minDate = $date;
      $minAmmo = $ammount;
    }
  }
  echo "Дата с максимальным доходом $maxAmmo<br>";
  echo "Дата с минимальным расходом $minAmmo<br>";
?>

<h2>Задача 6 - Combine</h2>

<p>
Добавить в файл первой строчкой название столбцов через текстовой редактор: date;amount . <br>И решить Задачу 4 без использования list, а с использованием функции array_combine , предварительно до начала цикла считав названия столбцов в массив $keys. brТ.е. доступ к данным должен осуществляться через работу с ассоциативным массивом.
</p>

<pre>
  <?php
  $dateArr = [];
  $ammoArr = [];
  
  foreach($rows as $key => $value) {
    $dateArr[] = $value[0];
    $ammoArr[] = $value[1];
  }
  
  $newArr = array_combine($dateArr, $ammoArr);
  $sum = 0;
  print_r($newArr);
  foreach($newArr as $key => $value) {
    $sum += $value;
  }

  echo "Сумма чисел: $sum";
  ?>
</pre>

<h2>Задача 7* для тех, кто быстро справился</h2>

<p>
Сгенерировать массив длинной 20 из случайных чисел от 5 до 15. <br>
Вывести его на экран. <br>
Отсортировать массив по возрастанию. <br>
Удалить из него элементы, входящие в диапазон от 8 до 12. <br>
Оставшиеся числа вывести на экран, раскрашенными таким образом, что одинаковые числа имеют один и тот же цвет.
</p>

<pre>
  <?php
    $arrColor = ['red', 'green', 'blue', 'orange', 'yellow', 'black', 'aqua', 'pink'];
    $arr1 = [];
    for ($i = 0; $i < 20; $i++) {
      $arr1[] = rand(5 , 15);
    };
    echo "Массив от 5 до 15<br>";
    print_r($arr1);

    asort($arr1);
    echo "Массив отсортированный<br>";
    print_r($arr1);

    foreach($arr1 as $key => $value) {
      if ($value >= 8 && $value <= 12) {
        unset($arr1[$key]);
      }
    }
    echo "Массив без 8 до 12<br>";
    print_r($arr1);
  ?>
</pre>

<p>Одинаковые числа одним цветом</p>

<?php 
foreach($arr1 as $key => $value) {
  $color = $arrColor[$key % count($arrColor)];
  ?>
  <span style="color: <?= $color ?> ;"><?= $value ?></span>
<?php } ?>

<h2>Задача 8* Расчет прибыли за день</h2>

<p>
Открыть исходный файл и во втором столбце оставить доходы (incomes), а в третьем сделать расходы (expenses). Значения придумать произвольные. Расходы записать положительным числом. <br>
Программа должна вывести на экран каждую строчку в следующем формате: <br>
01.10 было получено 100 р, потрачено 50 р, прибыль за день: 50 р. <br>
</p>

<pre>
  <?php
    $content = file_get_contents('./accounting.csv', true);

    $rows = preg_split("/\r\n|\r|\n/", $content);

    foreach ($rows as $key => $row){
      $rows[$key] = explode(';', $row);
      $income = $rows[$key][1] - $rows[$key][2];
      echo $rows[$key][0] . ' было получено ' . $rows[$key][1] . 'р, потрачено ' . $rows[$key][2] . 'р, прибыль за день: ' . $income . 'р.<br>';
    }

    print_r($rows);
  ?>
</pre>