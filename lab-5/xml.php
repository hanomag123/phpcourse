
<?php function console(...$el)
{
  foreach ($el as $key => $value) {
    if ($key === 0 && !is_array($value)) {
      echo '<hr>';
    }
    if (is_array($value)) {
      echo '<hr><pre>';
      print_r($value);
      echo '</pre><hr>';
    } else {
      if (gettype($value) === 'string') {
        echo "<span style='color: green;'>" . $value . '</span> ';
      } else if (gettype($value) === 'boolean') {
        $value = $value ? 'true ' : 'false ';
        echo "<span style='color: blue;'>" . $value . '</span>';
      } else {
        echo $value . ' ';
      }
      if ($key === count($el) - 1) {
        echo '<br>';
      }
    }
  }
} ?>
<?php
ini_set('display_errors', '1');
error_reporting(E_ALL);

$categories = [];
$offers = [];



if (($handle = fopen("table.csv", "r")) !== FALSE) {
  $keys = [];
  while (($data = fgetcsv($handle, 10000, ",")) !== FALSE) {
    if (count($keys) === 0) {
      $keys = $data;
      continue;
    }

    $row = array_combine($keys, $data);
    list(
      'ID товара' => $id,
      'Название' => $name,
      'Ссылка на товар' => $link,
      'Раздел' => $category,
      'Ср. цена' => $price,
    ) = $row;

    $categories[] = $category;
    $categories = (array_unique($categories));
    $categoryId = array_search($category, $categories);
    $cyrrencyId = 'BYN';
    $offer = "<offer id=\"$id\">
      <name>$name</name>
      <url>$link</url>
      <price>$price</price>
      <currencyId>$cyrrencyId</currencyId>
      <categoryId>$categoryId</categoryId>
      </offer>\n";
    $offers[] = $offer;
  }
}


foreach ($categories as $key => $value) {
  $categories[$key] = "<category id='$key'>$value</category>\n"; 
}
$date = date('Y-m-d\TG:i:sP');
$categories = implode('', $categories);
$offers = implode('', $offers);
$output = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<yml_catalog date=\"$date\">  
    <shop>
        <name>Onliner</name>
        <company>Onliner inc.</company>
        <url>http://onliner.by</url>
        <currencies>
            <currency id=\"$cyrrencyId\" rate=\"1\"/>
        </currencies>
        <categories>
            $categories
        </categories>
        <delivery-options>
            <option cost=\"200\" days=\"1\"/>
        </delivery-options>
        <offers>
            $offers
        </offers>
    </shop>
</yml_catalog>";

if (file_exists('feed.xml')) {
  file_put_contents('feed.xml', '');
}

$stream = fopen('feed.xml', 'c');
console($output);
fwrite($stream, $output);
fclose($stream);
?>