<h2>Задание 1</h2>

<?php
$fio = 'Sidorov Ivan Petrovich';

$name = strpos(' ', $fio);
?>

<h2>Задание 2</h2>
<style>
  body {
    background-color: black;
    color: white;
  }

  .ball {
    display: inline-block;
    width: 1rem;
    height: 1rem;
    border-radius: 50%;
  }
</style>
<?php
$arr = [];
for ($i = 0; $i < 20; $i++) {
  $arr[] = rand(0, 1) ? 'white' : 'red';
}

for ($i = 0; $i < count($arr); $i++) {
  echo str_pad($i + 1, 2, '0', STR_PAD_LEFT) . "-шарик в коробке: <span class='ball' style='background-color:" . $arr[$i] . ";'></span><br>";
}
?>