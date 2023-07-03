<?php
const month = [
  'ru' => ['Янв', 'Февр', 'Март', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сент', 'Окт', 'Нояб', 'Дек'],
  'en' => ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
];

function getMonthName($numberOfMonth, $lang) {
  return month[$lang][$numberOfMonth - 1];
}
?>
