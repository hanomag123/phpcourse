<h2>Задача 3: Возраст ребенка</h2>

<p>
  По заданной дате рождения ребенка посчитать, сколько ему на сегодняшний день полных лет.
</p>

<?php
$date = '15-05-2022';
$diff = time() - strtotime($date);
$numberOfYears = intval($diff / (365 * 24 * 60 * 60));
echo "Количество полных лет ребенку $date: $numberOfYears";
?>