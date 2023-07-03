<h2>Задача 6 - Combine</h2>

<p>
  Добавить в файл первой строчкой название столбцов через текстовой редактор: date;amount . <br>
  И решить Задачу 4 без использования list, а с использованием функции array_combine , предварительно до начала цикла считав названия столбцов в массив $keys. <br>
  Т.е. доступ к данным должен осуществляться через работу с ассоциативным массивом.
</p>

<pre>
  <?php

  $content = file_get_contents('./accounting.csv', true);

  $rows = preg_split("/\r\n|\r|\n/", $content);
  $keys = [];
  $values = [];
  foreach ($rows as $key => $row) {
    if ($key === 0) { // Первый элемент массива добавляем в массив ключей
      $keys = explode(';', $row);
    } else { // Остальные элементы массива добавляем в массив значений
      $rows[$key] = explode(';', $row);

      for($i = 0; $i < count($rows[$key]); $i++) {
        $values[$i][] = $rows[$key][$i];
      }

    }
  }

  $rows = array_combine($keys, $values); // Комбинируем массив ключей и значений

  print_r($rows);

  $sum = 0;

  foreach($rows['amount'] as $key => $value) { // Получаем сумму второго столбца
    $sum += $value;
  }

  echo "Сумма значений из второго столбца: " . $sum;

  ?>
</pre>