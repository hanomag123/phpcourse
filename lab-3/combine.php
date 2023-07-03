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
  $keys = explode(';', $rows[0]);
  unset($rows[0]);
  $sum = 0;
  foreach ($rows as $key => $row) {
    $rows[$key] = explode(';', $row);
    $combinedArr = array_combine($keys,$rows[$key]);
    $sum += (int)$combinedArr['amount'];
  }

  echo "Сумма всех чисел из второго столбца - $sum<br>"

  ?>
</pre>
