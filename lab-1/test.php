<pre>
<?php
$content = file_get_contents('./accounting.csv', true);
//$content = file_get_contents('./Book1.csv', true);
//
//$rows = explode(PHP_EOL, $content);

$rows = preg_split("/\r\n|\r|\n/", $content);

foreach ($rows as $key => $row){
    $rows[$key] = explode(';', $row);
}

print_r($rows);