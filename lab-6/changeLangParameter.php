<?php
require_once('./contants.php');

// Меняем параметр lang в урле, иначе используем дефолтный
function changeLangParameter ($lang = defaultlang) {
  if (isset($_GET)) {
    $params = $_GET;
    unset( $params['lang'] );
    $params['lang']   = $lang;
    //Создаем парамет для урла по значению переданному аргументом
    $new_query_string = http_build_query( $params );

    //Создаем наш урл по которому мы будем переходить для изменения параметра
    $url = ( empty( $_SERVER['HTTPS'] ) ? 'http://' : 'https://' ) . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'] . '?' . $new_query_string;
    header("LOCATION: $url");
  }
}
?>