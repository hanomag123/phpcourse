
<h2>Задача 4: Сегодня-завтра</h2>

<p>
  Инициализировать массив пятью (5) датами со временем (в формате: 2001-03-10 17:16:18). <br>
  Перебрать каждую дату, если дата приходится на сегодня выводить “Сегодня в <время>”, если это вчерашняя дата, то “Вчера в <время>”, иначе в том виде, в котором дата задана в массиве.
</p>

<?php
$arr = [];

for($i = 0; $i < 5; $i++) {
  $rand = rand(-2, 2);
  $date = strtotime("$rand days $rand hours $rand minutes $rand seconds");
  $arr[] = date('Y-m-d G:i:s', $date);
}

foreach($arr as $key => $value) {
  $day = (int)date('d', strtotime($value));
  $currentDay = (int)date('d');

  if ($day === $currentDay) {
    echo "Сегодня в: " . date('G:i:s', strtotime($value)) . "<br>";
  } else if($day === $currentDay - 1){
    echo "Вчера в: " . date('G:i:s', strtotime($value)) . "<br>";
  } else {
    echo $value . "<br>";
  }

}
?>

