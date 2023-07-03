<?php function consoleLog($getType = false, ...$elems)
{
  foreach ($elems as $value) {
    if (is_array($value)) {
      echo '<pre>';
      print_r($value);
      echo '</pre>';
    } else {
      echo $value . '  ';
    }
  }
} ?>

<?php
if (($handle = fopen("table.csv", "r")) !== FALSE) {
  $keys = [];
  while (($data = fgetcsv($handle, 10000, ",")) !== FALSE) {
    if (count($keys) === 0) {
      $keys = $data;
    }

    $newarr = array_combine($keys, $data);
    echo" Название: " . $newarr['Название']  . " Средняя цена: " . $newarr['Ср. цена'] . "<br>";
    
  }
}
?>